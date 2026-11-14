<#
.SYNOPSIS
    Installe les outils essentiels de diagnostic, monitoring et utilitaires pour un PC nouvellement assemblé (PCperso).
#>

Write-Host "=== PCperso : Installation des logiciels essentiels ===" -ForegroundColor Cyan

$packages = @(
    @{ Name = "HWiNFO64 (Monitoring capteurs)"; Id = "REALiX.HWiNFO" },
    @{ Name = "OCCT (Stress-test stabilite)"; Id = "OCBase.OCCT.Personal" },
    @{ Name = "CrystalDiskInfo (Sante SSD/HDD)"; Id = "CrystalDewWorld.CrystalDiskInfo" },
    @{ Name = "FanControl (Courbes ventilateurs)"; Id = "Rem0o.FanControl" },
    @{ Name = "7-Zip (Archives)"; Id = "7zip.7zip" }
)

foreach ($pkg in $packages) {
    Write-Host "`nInstallation de $($pkg.Name)..." -ForegroundColor Yellow
    winget install --id $pkg.Id -e --source winget --accept-package-agreements --accept-source-agreements
}

Write-Host "`n=== Installation terminee ! ===" -ForegroundColor Green
Pause
