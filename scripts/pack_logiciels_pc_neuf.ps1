<#
.SYNOPSIS
    PCperso v2.1 - Installateur securise et modulaire pour PC nouvellement assemble (Standards 2026).

.DESCRIPTION
    Detecte automatiquement le materiel et le constructeur (ASUS, Lenovo, Sony, MSI, Gigabyte, Intel, AMD, NVIDIA),
    cree un point de restauration Windows (si Admin), journalise toutes les operations et installe les logiciels
    via les depots officiels Winget selon 3 profils : Standard, Intermediaire ou Avancee.

.PARAMETER Profil
    Profil logiciel a installer : Standard, Intermediaire ou Avancee.

.PARAMETER Marque
    Constructeur cible pour les utilitaires dedies : Auto, ASUS, Lenovo, Sony, MSI, Gigabyte, Dell, HP, Aucun.

.PARAMETER CreerPointRestauration
    Tente de creer un point de restauration systeme avant l'installation (necessite PowerShell en Administrateur).

.PARAMETER SansRuntimes
    Exclut les runtimes Microsoft (Visual C++, DirectX, .NET) du profil choisi.

.PARAMETER IgnorerConstructeur
    N'installe aucun utilitaire specifique a une marque.

.PARAMETER Silencieux
    Passe --silent a winget pour limiter les fenetres d'installation.

.EXAMPLE
    .\pack-logiciels-pc-neuf.ps1
    Lance le mode interactif avec detection materielle et menus guides.

.EXAMPLE
    .\pack-logiciels-pc-neuf.ps1 -Profil Intermediaire -CreerPointRestauration -WhatIf
    Simule l'installation du profil Intermediaire sans rien modifier sur le PC.
#>

[CmdletBinding(SupportsShouldProcess = $true)]
param(
    [ValidateSet("Standard", "Intermediaire", "Avancee")]
    [string]$Profil,

    [ValidateSet("Auto", "ASUS", "Lenovo", "Sony", "MSI", "Gigabyte", "Dell", "HP", "Aucun")]
    [string]$Marque = "Auto",

    [switch]$CreerPointRestauration,
    [switch]$SansRuntimes,
    [switch]$IgnorerConstructeur,
    [switch]$Silencieux
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

# ==============================================================================
# 1. INITIALISATION & JOURNALISATION
# ==============================================================================
$LogDir = Join-Path $env:LOCALAPPDATA "PCperso\Logs"
if (-not (Test-Path $LogDir)) {
    New-Item -Path $LogDir -ItemType Directory -Force | Out-Null
}
$LogFile = Join-Path $LogDir ("PCperso-Install-{0}.log" -f (Get-Date -Format "yyyyMMdd-HHmmss"))

function Write-Log {
    param(
        [string]$Message,
        [ValidateSet("INFO", "OK", "WARN", "ERR", "SKIP")]
        [string]$Level = "INFO"
    )
    $color = switch ($Level) {
        "OK"   { "Green" }
        "WARN" { "Yellow" }
        "ERR"  { "Red" }
        "SKIP" { "DarkGray" }
        default { "Cyan" }
    }
    $line = "[{0}] [{1}] {2}" -f (Get-Date -Format "HH:mm:ss"), $Level, $Message
    Write-Host $line -ForegroundColor $color
    Add-Content -Path $LogFile -Value $line -Encoding UTF8
}

function Test-IsAdmin {
    $identity = [Security.Principal.WindowsIdentity]::GetCurrent()
    $principal = New-Object Security.Principal.WindowsPrincipal($identity)
    return $principal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)
}

# ==============================================================================
# 2. VERIFICATION DES PREREQUIS SECURITE
# ==============================================================================
Clear-Host
Write-Host "==================================================================" -ForegroundColor Cyan
Write-Host "   PCperso v2.1 - Assistant Post-Montage & Standards 2026" -ForegroundColor White
Write-Host "==================================================================" -ForegroundColor Cyan
Write-Log "Demarrage du script (Log : $LogFile)" "INFO"

if (-not (Get-Command winget -ErrorAction SilentlyContinue)) {
    Write-Log "Winget est introuvable. Installe 'App Installer' depuis le Microsoft Store puis relance ce script." "ERR"
    if (-not $Silencieux) { Pause }
    exit 1
}

$wingetVer = (& winget --version) 2>$null
Write-Log "Winget detecte : $wingetVer" "OK"

# ==============================================================================
# 3. DETECTION AUTOMATIQUE DU MATERIEL
# ==============================================================================
function Get-HardwareSummary {
    $cs   = Get-CimInstance Win32_ComputerSystem -ErrorAction SilentlyContinue
    $bb   = Get-CimInstance Win32_BaseBoard -ErrorAction SilentlyContinue
    $cpu  = Get-CimInstance Win32_Processor -ErrorAction SilentlyContinue | Select-Object -First 1
    $gpus = Get-CimInstance Win32_VideoController -ErrorAction SilentlyContinue
    $os   = Get-CimInstance Win32_OperatingSystem -ErrorAction SilentlyContinue

    $ramGo = if ($cs.TotalPhysicalMemory) { [math]::Round($cs.TotalPhysicalMemory / 1GB, 0) } else { 0 }
    $gpuNames = ($gpus | ForEach-Object { $_.Name }) -join " | "
    $rawVendor = "$($cs.Manufacturer) $($bb.Manufacturer) $($cs.Model)"

    $detectedBrand = switch -Regex ($rawVendor) {
        "ASUS|ASUSTeK" { "ASUS"; break }
        "LENOVO"       { "Lenovo"; break }
        "SONY|VAIO"    { "Sony"; break }
        "MSI|Micro-Star" { "MSI"; break }
        "GIGABYTE"     { "Gigabyte"; break }
        "DELL|Alienware" { "Dell"; break }
        "HP|Hewlett|OMEN" { "HP"; break }
        default        { "Aucun" }
    }

    return [PSCustomObject]@{
        OS           = "$($os.Caption) ($($os.Version))"
        CPU          = $cpu.Name.Trim()
        IsAMD_CPU    = ($cpu.Name -match "AMD|Ryzen")
        IsIntel_CPU  = ($cpu.Name -match "Intel|Core")
        GPU          = $gpuNames
        HasNVIDIA    = ($gpuNames -match "NVIDIA|GeForce|RTX")
        HasAMD_GPU   = ($gpuNames -match "Radeon|AMD")
        HasIntel_GPU = ($gpuNames -match "Intel.*Arc|UHD|Iris")
        RAM_Go       = $ramGo
        Board        = "$($bb.Manufacturer) $($bb.Product)".Trim()
        Brand        = $detectedBrand
    }
}

$hw = Get-HardwareSummary
Write-Host "`n--- Materiel detecte sur cette machine ---" -ForegroundColor Yellow
Write-Host "  OS           : $($hw.OS)"
Write-Host "  Processeur   : $($hw.CPU)"
Write-Host "  Carte mere   : $($hw.Board)"
Write-Host "  Memoire RAM  : $($hw.RAM_Go) Go"
Write-Host "  Carte(s) GPU : $($hw.GPU)"
Write-Host "  Marque cible : $($hw.Brand)" -ForegroundColor Green
Write-Host "-------------------------------------------`n" -ForegroundColor Yellow

# ==============================================================================
# 4. POINT DE RESTAURATION WINDOWS (SECURITE)
# ==============================================================================
$isAdmin = Test-IsAdmin
if (-not $isAdmin) {
    Write-Log "PowerShell n'est pas lance en Administrateur : la creation d'un point de restauration sera ignoree (certaines installations demanderont une validation UAC)." "WARN"
}

if ($isAdmin -and ($CreerPointRestauration -or (-not $Profil -and -not $Silencieux))) {
    $wantRestore = $true
    if (-not $CreerPointRestauration) {
        $rep = Read-Host "Creer un Point de Restauration Windows avant d'installer ? [O/n]"
        if ($rep -match "^[nN]") { $wantRestore = $false }
    }
    if ($wantRestore -and $PSCmdlet.ShouldProcess("Systeme Windows", "Creer un point de restauration PCperso-PreInstall")) {
        try {
            Enable-ComputerRestore -Drive "$env:SystemDrive\" -ErrorAction SilentlyContinue
            Checkpoint-Computer -Description "PCperso-PreInstall" -RestorePointType "MODIFY_SETTINGS" -ErrorAction Stop
            Write-Log "Point de restauration 'PCperso-PreInstall' cree avec succes." "OK"
        } catch {
            Write-Log "Impossible de creer le point de restauration (peut-etre deja cree il y a moins de 24h) : $($_.Exception.Message)" "WARN"
        }
    }
}

# ==============================================================================
# 5. DEFINITION DES 3 PROFILS (STANDARDS 2026)
# ==============================================================================
$RuntimesMicrosoft = @(
    @{ Name = "Microsoft Visual C++ 2015-2022 Redistributable (x64)"; Id = "Microsoft.VCRedist.2015+.x64" },
    @{ Name = "Microsoft Visual C++ 2015-2022 Redistributable (x86)"; Id = "Microsoft.VCRedist.2015+.x86" },
    @{ Name = "Microsoft DirectX End-User Runtime";                   Id = "Microsoft.DirectX" },
    @{ Name = "Microsoft .NET 9 Desktop Runtime";                     Id = "Microsoft.DotNet.DesktopRuntime.9" }
)

$TierStandard = @(
    @{ Name = "7-Zip (Compression & Archives)";        Id = "7zip.7zip" },
    @{ Name = "HWiNFO64 (Monitoring capteurs 2026)";   Id = "REALiX.HWiNFO" },
    @{ Name = "CrystalDiskInfo (Sante SSD NVMe)";      Id = "CrystalDewWorld.CrystalDiskInfo" },
    @{ Name = "Microsoft PowerToys (Outils Windows)";  Id = "Microsoft.PowerToys" },
    @{ Name = "VLC Media Player (Multimedia)";         Id = "VideoLAN.VLC" },
    @{ Name = "WizTree (Analyse espace disque)";       Id = "AntibodySoftware.WizTree" }
)

$TierIntermediaire = @(
    @{ Name = "OCCT Personal (Stress-test CPU/GPU/PSU)"; Id = "OCBase.OCCT.Personal" },
    @{ Name = "FanControl (Courbes ventilateurs PWM)";   Id = "Rem0o.FanControl" },
    @{ Name = "CrystalDiskMark (Benchmark NVMe Gen4/5)"; Id = "CrystalDewWorld.CrystalDiskMark" },
    @{ Name = "CPU-Z (Infos CPU, RAM DDR5 & PCIe)";      Id = "CPUID.CPU-Z" },
    @{ Name = "GPU-Z (Infos GPU, VRAM & capteurs)";      Id = "TechPowerUp.GPU-Z" },
    @{ Name = "Steam (Plateforme Gaming)";               Id = "Valve.Steam" },
    @{ Name = "Discord (Communication Gaming)";          Id = "Discord.Discord" }
)

$TierAvancee = @(
    @{ Name = "DDU - Display Driver Uninstaller";        Id = "Wagnardsoft.DisplayDriverUninstaller" },
    @{ Name = "DLSS Swapper (Gestion DLSS / FSR / XeSS)"; Id = "beeradmoore.dlss-swapper" },
    @{ Name = "OpenRGB (Controle RGB leger open-source)"; Id = "OpenRGB.OpenRGB" },
    @{ Name = "OBS Studio (Capture & Stream AV1)";       Id = "OBSProject.OBSStudio" },
    @{ Name = "Playnite (Lanceur unifie multi-stores)";  Id = "Playnite.Playnite" },
    @{ Name = "Windows Terminal (Console moderne)";      Id = "Microsoft.WindowsTerminal" }
)

# ==============================================================================
# 6. CHOIX DU PROFIL (INTERACTIF OU PARAMETRE)
# ==============================================================================
if (-not $Profil) {
    Write-Host "Choisis ta configuration d'installation :" -ForegroundColor Cyan
    Write-Host "  [1] Standard      : Essentiels, sante SSD, monitoring capteurs, PowerToys + Runtimes Microsoft"
    Write-Host "  [2] Intermediaire : Standard + Stress-test OCCT, FanControl, Bench NVMe, CPU-Z/GPU-Z, Steam, Discord"
    Write-Host "  [3] Avancee       : Intermediaire + DDU, DLSS Swapper, OpenRGB, OBS Studio, Playnite + Tuning CPU/GPU"
    do {
        $choixProfil = Read-Host "`nTon choix [1-3] (Defaut = 2)"
        if ([string]::IsNullOrWhiteSpace($choixProfil)) { $choixProfil = "2" }
    } while ($choixProfil -notin @("1", "2", "3"))

    $Profil = switch ($choixProfil) {
        "1" { "Standard" }
        "2" { "Intermediaire" }
        "3" { "Avancee" }
    }
}

$selectedPackages = [System.Collections.Generic.List[hashtable]]::new()
if (-not $SansRuntimes) {
    foreach ($p in $RuntimesMicrosoft) { $selectedPackages.Add($p) }
}
foreach ($p in $TierStandard) { $selectedPackages.Add($p) }
if ($Profil -in @("Intermediaire", "Avancee")) {
    foreach ($p in $TierIntermediaire) { $selectedPackages.Add($p) }
}
if ($Profil -eq "Avancee") {
    foreach ($p in $TierAvancee) { $selectedPackages.Add($p) }
}

# ==============================================================================
# 7. STANDARDS CONSTRUCTEURS (ASUS, LENOVO, SONY, MICROSOFT, INTEL, AMD, NVIDIA)
# ==============================================================================
$targetBrand = if ($Marque -eq "Auto") { $hw.Brand } else { $Marque }

if (-not $IgnorerConstructeur) {
    $brandPackages = [System.Collections.Generic.List[hashtable]]::new()

    # Outils lies au CPU / GPU detectes (profil Intermediaire ou Avancee)
    if ($Profil -in @("Intermediaire", "Avancee")) {
        if ($hw.IsIntel_CPU) {
            $brandPackages.Add(@{ Name = "Intel Driver & Support Assistant (Wi-Fi 7 / Chipset / Arc)"; Id = "Intel.IntelDriverAndSupportAssistant" })
        }
        if ($Profil -eq "Avancee" -and $hw.IsAMD_CPU) {
            $brandPackages.Add(@{ Name = "AMD Ryzen Master (Monitoring & Curve Optimizer)"; Id = "AMD.RyzenMaster" })
        }
        if ($Profil -eq "Avancee" -and $hw.HasNVIDIA) {
            $brandPackages.Add(@{ Name = "NVCleanstall (Installation propre pilotes NVIDIA sans telemetrie)"; Id = "TechPowerUp.NVCleanstall" })
        }
    }

    # Choix specifique marque PC / Carte mere / Ecosysteme
    if (-not $PSBoundParameters.ContainsKey("Profil") -and -not $Silencieux) {
        Write-Host "`n--- Standards Constructeurs & Ecosystemes ---" -ForegroundColor Cyan
        Write-Host "Marque detectee : $targetBrand"
        Write-Host "  [1] Installer les outils recommandes / legers adaptes a mon materiel (recommande, sans bloatware)"
        Write-Host "  [2] ASUS    -> G-Helper (alternatif leger laptops) OU Armoury Crate (officiel)"
        Write-Host "  [3] Lenovo  -> Lenovo Legion Toolkit (leger) OU Lenovo System Update (officiel)"
        Write-Host "  [4] Sony    -> PlayStation Remote Play (officiel) OU Chiaki-ng (open-source leger)"
        Write-Host "  [5] Aucun utilitaire constructeur (Windows pur + pilotes Windows Update/constructeur)"
        $repBrand = Read-Host "Choix constructeurs [1-5] (Defaut = 1)"
        if ([string]::IsNullOrWhiteSpace($repBrand)) { $repBrand = "1" }

        switch ($repBrand) {
            "1" {
                if ($targetBrand -eq "ASUS")   { $brandPackages.Add(@{ Name = "G-Helper (Controle ASUS leger sans bloatware)"; Id = "seerge.g-helper" }) }
                if ($targetBrand -eq "Lenovo") { $brandPackages.Add(@{ Name = "Lenovo System Update (Pilotes & BIOS Lenovo)"; Id = "Lenovo.SystemUpdate" }) }
                if ($targetBrand -eq "Sony")   { $brandPackages.Add(@{ Name = "PlayStation Remote Play (Sony)"; Id = "PlayStation.PSRemotePlay" }) }
            }
            "2" {
                $sub = Read-Host "  ASUS : [1] G-Helper (leger, laptops ROG/TUF) | [2] Armoury Crate (suite officielle)"
                if ($sub -eq "2") { $brandPackages.Add(@{ Name = "ASUS Armoury Crate (Officiel)"; Id = "Asus.ArmouryCrate" }) }
                else              { $brandPackages.Add(@{ Name = "G-Helper (Alternatif ASUS leger)"; Id = "seerge.g-helper" }) }
            }
            "3" {
                $sub = Read-Host "  Lenovo : [1] Lenovo Legion Toolkit (leger) | [2] Lenovo System Update (officiel)"
                if ($sub -eq "2") { $brandPackages.Add(@{ Name = "Lenovo System Update (Officiel)"; Id = "Lenovo.SystemUpdate" }) }
                else              { $brandPackages.Add(@{ Name = "Lenovo Legion Toolkit (Leger)"; Id = "BartoszCichecki.LenovoLegionToolkit" }) }
            }
            "4" {
                $sub = Read-Host "  Sony/PS : [1] PS Remote Play (officiel Sony) | [2] Chiaki-ng (open-source leger)"
                if ($sub -eq "2") { $brandPackages.Add(@{ Name = "Chiaki-ng (PlayStation Remote open-source)"; Id = "StreetPea.chiaki-ng" }) }
                else              { $brandPackages.Add(@{ Name = "PlayStation Remote Play (Officiel Sony)"; Id = "PlayStation.PSRemotePlay" }) }
            }
            "5" { $brandPackages.Clear() }
        }
    } else {
        # Mode automatise (non interactif)
        switch ($targetBrand) {
            "ASUS"   { $brandPackages.Add(@{ Name = "G-Helper (Controle ASUS leger)"; Id = "seerge.g-helper" }) }
            "Lenovo" { $brandPackages.Add(@{ Name = "Lenovo System Update (Officiel)"; Id = "Lenovo.SystemUpdate" }) }
            "Sony"   { $brandPackages.Add(@{ Name = "PlayStation Remote Play (Officiel)"; Id = "PlayStation.PSRemotePlay" }) }
        }
    }

    foreach ($bp in $brandPackages) {
        if (-not ($selectedPackages.Id -contains $bp.Id)) {
            $selectedPackages.Add($bp)
        }
    }
}

# ==============================================================================
# 8. EXECUTION DES INSTALLATIONS VIA WINGET
# ==============================================================================
function Test-WingetInstalled {
    param([string]$PackageId)
    $out = (& winget list --id $PackageId -e --accept-source-agreements 2>$null) -join "`n"
    return ($LASTEXITCODE -eq 0 -and $out -match [regex]::Escape($PackageId))
}

Write-Log "Profil selectionne : $Profil ($($selectedPackages.Count) paquets cibles)" "INFO"
if (-not $WhatIfPreference) {
    Write-Log "Mise a jour de la source winget..." "INFO"
    & winget source update --name winget | Out-Null
}

$stats = @{ Installed = 0; Skipped = 0; Failed = 0 }
$failedList = [System.Collections.Generic.List[string]]::new()

foreach ($pkg in $selectedPackages) {
    $name = $pkg.Name
    $id   = $pkg.Id

    if ($WhatIfPreference) {
        Write-Log "[SIMULATION -WhatIf] Installation prevue : $name ($id)" "INFO"
        continue
    }

    if (Test-WingetInstalled -PackageId $id) {
        Write-Log "Deja installe (ignore) : $name [$id]" "SKIP"
        $stats.Skipped++
        continue
    }

    Write-Log "Installation : $name [$id]..." "INFO"
    $wgArgs = @(
        "install", "--id", $id, "-e",
        "--source", "winget",
        "--accept-package-agreements",
        "--accept-source-agreements"
    )
    if ($Silencieux) { $wgArgs += "--silent" }

    try {
        & winget @wgArgs
        $code = $LASTEXITCODE
        # 0 = OK ; -1978335189 (0x8A15002B) = No applicable update / already present
        if ($code -eq 0) {
            Write-Log "Installe avec succes : $name" "OK"
            $stats.Installed++
        } elseif ($code -eq -1978335189) {
            Write-Log "Deja a jour : $name" "SKIP"
            $stats.Skipped++
        } else {
            Write-Log "Echec installation ($name) - Code retour Winget : $code" "ERR"
            $stats.Failed++
            $failedList.Add("$name ($id)")
        }
    } catch {
        Write-Log "Erreur critique sur $name : $($_.Exception.Message)" "ERR"
        $stats.Failed++
        $failedList.Add("$name ($id)")
    }
}

# ==============================================================================
# 9. RAPPORT FINAL & RAPPELS POST-INSTALLATION
# ==============================================================================
Write-Host "`n==================================================================" -ForegroundColor Cyan
Write-Host "   RAPPORT FINAL PCperso ($Profil)" -ForegroundColor White
Write-Host "==================================================================" -ForegroundColor Cyan
if (-not $WhatIfPreference) {
    Write-Host ("  Installes     : {0}" -f $stats.Installed) -ForegroundColor Green
    Write-Host ("  Deja presents : {0}" -f $stats.Skipped)   -ForegroundColor DarkGray
    Write-Host ("  Echecs        : {0}" -f $stats.Failed)    -ForegroundColor $(if ($stats.Failed -gt 0) { "Red" } else { "Green" })
    if ($failedList.Count -gt 0) {
        Write-Host "`n  Paquets en echec :" -ForegroundColor Red
        $failedList | ForEach-Object { Write-Host "   - $_" -ForegroundColor Red }
    }
}
Write-Host "`n  Journal complet : $LogFile" -ForegroundColor Yellow

Write-Host "`n  Rappels post-montage 2026 :" -ForegroundColor Cyan
Write-Host "   - Verifie la frequence de ton ecran (144/240/360 Hz) dans Parametres Windows > Affichage."
Write-Host "   - Pour une manette Sony DualSense, utilise l'outil officiel 'PlayStation Accessories'."
Write-Host "   - Pour MSI / Gigabyte, recupere le pilote Chipset/BIOS sur le site officiel de la carte mere."
Write-Host "   - Mets tout a jour plus tard en une commande : winget upgrade --all"
Write-Host "==================================================================`n" -ForegroundColor Cyan

if (-not $Silencieux) { Pause }
