# ⚙️ Scripts d'automatisation (Post-Montage)

Ce dossier contient des scripts destinés à faciliter la configuration logicielle après l'installation propre de Windows (en complément du chapitre [`05-windows-pilotes-et-tests.md`](../guide/05-windows-pilotes-et-tests.md)).

## 📦 `pack-logiciels-pc-neuf.ps1`

Ce script utilise **Winget** (le gestionnaire de paquets officiel de Microsoft intégré à Windows 10/11) pour télécharger et installer automatiquement, depuis les dépôts officiels et sans publicités :

1. **HWiNFO64** (`REALiX.HWiNFO`) — Surveillance complète des températures, tensions et fréquences.
2. **OCCT Personal** (`OCBase.OCCT.Personal`) — Tests de stabilité CPU, RAM, GPU et Alimentation.
3. **CrystalDiskInfo** (`CrystalDewWorld.CrystalDiskInfo`) — Vérification de l'état de santé des SSD/HDD.
4. **FanControl** (`Rem0o.FanControl`) — Gestion fine et silencieuse des courbes de ventilation.
5. **7-Zip** (`7zip.7zip`) — Utilitaire de compression léger et open-source.

### ▶️ Comment l'exécuter en toute sécurité ?

1. Télécharge le fichier `pack-logiciels-pc-neuf.ps1` (tu peux l'ouvrir avec le Bloc-notes avant pour vérifier son contenu).
2. Fais un clic droit sur le menu Démarrer et ouvre **Terminal** (ou **PowerShell**).
3. Place-toi dans le dossier où se trouve le script (ex. : `cd Downloads`), puis lance ces deux commandes :

```powershell
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
.\pack-logiciels-pc-neuf.ps1
```

*(L'autorisation `Bypass` ne s'applique qu'à la fenêtre PowerShell actuelle et est annulée dès sa fermeture.)*
