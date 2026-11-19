# ⚙️ PCperso
- — *Scripts & Automatisations*

Ce dossier regroupe les scripts d'automatisation du projet **PCperso**, répartis en deux usages distincts :

1. **Pour les utilisateurs (Windows 10/11)** : installation sécurisée et modulaire des logiciels essentiels après le montage d'un PC neuf.

2. **Pour les mainteneurs du dépôt (GitHub)** : initialisation et déploiement automatisé des *Labels*, *Milestones*, *Issues* et *Pull Request Templates*.

---

## 📂 Contenu du dossier `scripts/`

| Fichier | Langage | Public cible | Rôle principal |
| :--- | :---: | :--- | :--- |
| [**`pack_logiciels_pc_neuf.ps1`**](./pack_logiciels_pc_neuf.ps1) | PowerShell | **Utilisateur PC neuf** | Détecte le matériel/constructeur, crée un point de restauration et installe les logiciels via `winget` selon 3 profils (`Standard`, `Intermediaire`, `Avancee`). |
| [**`setup_issue.sh`**](./setup_issue.sh) | Bash | **Mainteneur GitHub** | Crée automatiquement les *Labels*, *Milestones* (`v1.1` à `v2.0`) et toutes les *Issues* de la roadmap via `gh`. |
| [**`setup_pr_templates.sh`**](./setup_pr_templates.sh) | Bash | **Mainteneur GitHub** | Déploie les modèles de Pull Requests (`.github/PULL_REQUEST_TEMPLATE.md` + sous-modèles) et leurs labels directement sur GitHub via `gh api`. |

---

> [!CAUTION]
> **🛡️ Règles de sécurité obligatoires avant toute exécution :**
> 1. **Lis toujours le code source** d'un script avant de l'exécuter, même sur un dépôt de confiance.
> 2. **Ne désactive jamais durablement la sécurité PowerShell** (`Set-ExecutionPolicy Unrestricted` global déconseillé) : utilise uniquement `-Scope Process` le temps de la session.
> 3. **Simule avant d'agir :** utilise `-WhatIf` sur `pack_logiciels_pc_neuf.ps1` pour vérifier la liste exacte des installations prévues.
> 4. **Vérifie la variable `REPO="..."`** en haut des scripts `.sh` avant de les lancer pour éviter d'écrire sur le mauvais dépôt.

---

## 🖥️ 1. Script Windows : `pack_logiciels_pc_neuf.ps1`

Ce script installe uniquement des paquets vérifiés depuis les **dépôts officiels Microsoft (`--source winget`)**, après avoir contrôlé ton matériel et ignoré les logiciels déjà présents.

### Prérequis
* **OS** : Windows 10 (à jour) ou **Windows 11** *(recommandé en 2026 pour Wi-Fi 7, HDR et planification CPU moderne)*.
* **Connexion Internet active**.
* **WinGet (`winget`)** installé *(inclus nativement sur Windows 11 et Windows 10 récent via « Programme d'installation d'application » / App Installer sur le Microsoft Store)*.

Pour vérifier que `winget` fonctionne, ouvre **Windows Terminal** (ou PowerShell) et tape :
```powershell
winget --version
```
*(Si la commande est inconnue, ouvre le **Microsoft Store**, cherche **App Installer** / **Programme d'installation d'application** et clique sur **Mettre à jour** ou **Installer**.)*

---

### Méthodes d'exécution

#### Méthode A — Interactive & Sécurisée *(Recommandée pour la majorité des utilisateurs)*
1. Fais un clic droit sur le menu Démarrer → **Terminal (Administrateur)** *(ou **Windows PowerShell (Admin)**)*. *(Les droits Admin permettent au script de créer un Point de restauration Windows avant d'installer.)*
2. Place-toi dans le dossier `scripts` :
   ```powershell
   cd "C:\chemin\vers\PCperso\scripts"
   ```
3. Si le fichier provient d'un téléchargement `.zip` GitHub, débloque-le proprement (protection Windows *Mark of the Web*) :
   ```powershell
   Unblock-File -Path .\pack_logiciels_pc_neuf.ps1
   ```
4. Autorise l'exécution **uniquement pour la fenêtre PowerShell en cours**, puis lance le script :
   ```powershell
   Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
   .\pack_logiciels_pc_neuf.ps1
   ```

#### Méthode B — Simulation à blanc (`-WhatIf`) *(Zéro modification sur le PC)*
Permet de vérifier le matériel détecté et la liste exacte des paquets qui seraient installés selon le profil choisi :
```powershell
.\pack_logiciels_pc_neuf.ps1 -Profil Avancee -WhatIf
```

#### Méthode C — Lancement automatisé en une ligne *(Avancé / Silencieux)*
Tu peux passer directement les paramètres sans passer par les menus interactifs :

```powershell
# Profil Standard avec point de restauration
.\pack_logiciels_pc_neuf.ps1 -Profil Standard -CreerPointRestauration

# Profil Intermédiaire (Gamer) pour un PC ASUS (avec G-Helper) en mode silencieux
.\pack_logiciels_pc_neuf.ps1 -Profil Intermediaire -Marque ASUS -CreerPointRestauration -Silencieux

# Profil Avancé sans utilitaires constructeurs ni runtimes supplémentaires
.\pack_logiciels_pc_neuf.ps1 -Profil Avancee -IgnorerConstructeur -SansRuntimes
```

#### Paramètres disponibles
| Paramètre | Valeurs acceptées | Description |
| :--- | :--- | :--- |
| `-Profil` | `Standard`, `Intermediaire`, `Avancee` | Définit le niveau d'équipement installé. |
| `-Marque` | `Auto`, `ASUS`, `Lenovo`, `Sony`, `MSI`, `Gigabyte`, `Dell`, `HP`, `Aucun` | Force ou détecte automatiquement la marque (`Auto` par défaut). |
| `-CreerPointRestauration` | *(switch)* | Crée un point de restauration `PCperso-PreInstall` (requiert Admin). |
| `-SansRuntimes` | *(switch)* | N'installe pas Visual C++ 2015–2022, DirectX et .NET 9. |
| `-IgnorerConstructeur` | *(switch)* | Ignore les outils liés aux marques (ASUS, Lenovo, Sony, Intel, AMD, NVIDIA). |
| `-Silencieux` | *(switch)* | Active `--silent` sur `winget` et supprime les pauses interactives. |
| `-WhatIf` | *(switch)* | Simule l'exécution sans rien installer. |

---

### Contenu des 3 profils & Standards Constructeurs

| Profil | Logiciels & Runtimes inclus |
| :--- | :--- |
| **1. Standard** | Runtimes Microsoft (`VC++ 2015–2022 x64/x86`, `DirectX`, `.NET 9`) + `7-Zip`, `HWiNFO64`, `CrystalDiskInfo`, `PowerToys`, `VLC`, `WizTree`. |
| **2. Intermédiaire** | *Tout le profil Standard* + `OCCT Personal`, `FanControl`, `CrystalDiskMark`, `CPU-Z`, `GPU-Z`, `Steam`, `Discord` (+ `Intel DSA` si CPU Intel). |
| **3. Avancée** | *Tout le profil Intermédiaire* + `DDU`, `DLSS Swapper`, `OpenRGB`, `OBS Studio`, `Playnite`, `Windows Terminal` (+ `AMD Ryzen Master` si CPU AMD, `NVCleanstall` si GPU NVIDIA). |

* **Constructeurs gérés** :
  * **ASUS** : choix entre *G-Helper* (léger, recommandé sur laptops ROG/TUF) ou *Armoury Crate* (officiel).
  * **Lenovo** : choix entre *Lenovo Legion Toolkit* (léger) ou *Lenovo System Update* (officiel).
  * **Sony / PlayStation** : *PlayStation Remote Play* (officiel) ou *Chiaki-ng* (open-source). *(Pour les manettes DualSense sur PC, utilise l'outil officiel Sony « PlayStation Accessories ».)*
  * **MSI / Gigabyte** : privilégie les pilotes officiels (Chipset/BIOS) du site constructeur + `OpenRGB` / `FanControl` pour éviter les logiciels lourds.

### Journaux & Maintenance après installation
* **Logs complets** enregistrés automatiquement dans : `%LOCALAPPDATA%\PCperso\Logs\PCperso-Install-YYYYMMDD-HHmmss.log`
* **Mettre à jour tous tes logiciels plus tard en 1 commande** :
  ```powershell
  winget upgrade --all
  ```

---

## 🐙 2. Scripts Mainteneur GitHub : `setup_issue.sh` & `setup_pr_templates.sh`

Ces deux scripts utilisent **GitHub CLI (`gh`)** pour configurer automatiquement la gestion du dépôt GitHub sans tout créer à la main.

### Prérequis (Environnement & GitHub CLI)

#### 1. Disposer d'un terminal Bash
* **Linux / macOS** : terminal natif prêt à l'emploi.
* **Windows** : utilise **Git Bash** (installé automatiquement avec [Git for Windows](https://gitforwindows.org/)) ou **WSL (Ubuntu)**.

#### 2. Installer GitHub CLI (`gh`)
* **Windows (PowerShell / WinGet)** :
  ```powershell
  winget install --id GitHub.cli --source winget
  ```
  *(Important : ferme et ouvre une **nouvelle fenêtre** de terminal après l'installation pour que `gh` soit reconnu dans le `PATH`.)*
* **macOS (Homebrew)** :
  ```bash
  brew install gh
  ```
* **Linux (Debian / Ubuntu)** :
  ```bash
  sudo apt update && sudo apt install gh
  ```
* **Linux (Fedora / RHEL)** :
  ```bash
  sudo dnf install gh
  ```

#### 3. S'authentifier sur GitHub
```bash
gh auth login
gh auth status
```
*(Choisis `GitHub.com` → `HTTPS` → `Login with a web browser`.)*

---

### Préparation & Exécution étape par étape

1. **Vérifie la configuration en haut des deux scripts** :
   Ouvre `setup_issue.sh` et `setup_pr_templates.sh` et assure-toi que le nom du dépôt correspond exactement au tien :
   ```bash
   REPO="teremuhamblin/PCperso"   # ou PCPperso selon le nom exact de ton dépôt
   ```
2. **Assure-toi que les fins de ligne sont au format Unix (`LF`)** *(important sous Windows)* :
   ```bash
   sed -i 's/\r$//' setup_issue.sh setup_pr_templates.sh
   ```
3. **Rends les scripts exécutables** :
   ```bash
   chmod +x setup_issue.sh setup_pr_templates.sh
   ```
4. **Exécute les scripts depuis le dossier `scripts/`** :
   ```bash
   # Crée les Labels, Milestones (v1.1 à v2.0) et toutes les Issues de la Roadmap
   ./setup_issue.sh

   # Déploie .github/PULL_REQUEST_TEMPLATE.md et les sous-modèles dans .github/PULL_REQUEST_TEMPLATE/
   ./setup_pr_templates.sh
   ```
5. **Synchronise ton dépôt local après `setup_pr_templates.sh`** :
   Comme `setup_pr_templates.sh` écrit directement sur GitHub via l'API (`gh api`), pense à récupérer les nouveaux fichiers en local avant ton prochain `commit` :
   ```bash
   git pull origin main
   ```

---

## 🩺 Dépannage rapide (FAQ)

| Erreur rencontrée | Cause probable | Solution immédiate |
| :--- | :--- | :--- |
| `...cannot be loaded because running scripts is disabled on this system` | Politique d'exécution PowerShell par défaut (`Restricted`). | Lance `Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass` dans ta session. |
| `Avertissement de sécurité : n'exécutez que les scripts fiables` | Fichier téléchargé depuis Internet (*Mark of the Web*). | Exécute `Unblock-File -Path .\pack_logiciels_pc_neuf.ps1` après avoir lu le script. |
| `winget : Le terme 'winget' n'est pas reconnu` | *App Installer* absent ou obsolète sur Windows. | Mets à jour **App Installer** via le Microsoft Store. |
| `bash: ./setup_issue.sh: /usr/bin/env: 'bash\r': No such file or directory` | Fins de ligne Windows (`CRLF`) dans un script `.sh`. | Nettoie avec `sed -i 's/\r$//' setup_issue.sh setup_pr_templates.sh`. |
| `gh: HTTP 404 Not Found` ou `HTTP 403` | Nom de dépôt incorrect dans `REPO=` ou droits manquants sur le token `gh`. | Vérifie `REPO="teremuhamblin/..."` et relance `gh auth login`. |

---

## 🔗 Aller plus loin
* [⬅️ Retour à l'accueil du projet (`README.md`)](../README.md)
* [🪟 Chapitre 05 : Windows, Pilotes & Tests de stabilité](../guide/05-windows-pilotes-et-tests.md)
* [🧰 Boîte à outils & Configs 2026 (`outils/`)](../outils/README.md)
* [✅ Checklist interactive du Jour J (`CHECKLIST.md`)](../CHECKLIST.md)
