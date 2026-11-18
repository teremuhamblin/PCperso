# 📋 Changelog — PCperso

Toutes les évolutions notables du guide **PCperso** sont documentées dans ce fichier.  
Le format s'appuie sur [Keep a Changelog](https://keepachangelog.com/fr/1.1.0/) et suit le [Gestionnaire de Versions Sémantique](https://semver.org/lang/fr/).

---

## [1.2.0] - 2026-11-18

### ✨ Ajouts
* **Nouveau Chapitre 08 — Refroidissement, Airflow & Entretien** ([`guide/08-refroidissement-et-entretien.md`](./guide/08-refroidissement-et-entretien.md)) :
  * Comparatif détaillé **Ventirad vs Watercooling AIO** et règles de placement de la pompe/radiateur.
  * Explication complète du flux d'air (*Airflow*), schéma visuel, ventilateurs *Reverse Blade* et gestion de la pression positive contre la poussière.
  * Guide d'application et de renouvellement de la **pâte thermique**.
  * Création de courbes de ventilation silencieuses (**PWM** / **FanControl**) avec réglage de l'hystérésis et tableau des températures normales.
  * Calendrier d'entretien complet (filtres, air sec, règles de sécurité anti-électricité statique).
* **Nouvel outil — Configurations Types par Budget** ([`outils/configs-types.md`](./outils/configs-types.md)) :
  * 4 profils équilibrés (*1080p Essentielle*, *1440p Sweet Spot*, *4K Haut de Gamme* et *Sans Compromis*) basés sur les architectures récentes.
  * Règle de répartition du budget, choix de l'écran adapté et checklist express pré-achat.

### 🔄 Modifications
* **Refonte du `README.md` pour la v1.2** :
  * Ajout d'un encart `[!NOTE]` mettant en avant les nouveautés de la version.
  * Nettoyage de l'en-tête et ajout d'un *Parcours Express* en 3 étapes.
  * Intégration du Chapitre 08 et de l'outil *Configs Types* dans les tableaux principaux.
* **Actualisation des standards matériels** mentionnés dans le guide : intégration des normes **ATX 3.1 / `12V-2x6`**, du **PCIe 5.0** et des cartes mères à connecteurs inversés (**BTF / Project Zero**).

---

## [1.1.0] - 2026-XX-XX

### ✨ Ajouts
* **Nouveau Chapitre 07 — Glossaire Hardware** ([`guide/07-glossaire-hardware.md`](./guide/07-glossaire-hardware.md)) : traduction et explication claire de tous les acronymes techniques (`TDP`, `VRM`, `POST`, `UEFI`, `XMP`, `EXPO`, etc.).

### 🔄 Modifications
* Mise à jour du `README.md` avec intégration du Chapitre 07 et amélioration de la mise en page des badges et liens rapides.

---

## [1.0.0] - 2026-XX-XX

### 🎉 Version initiale
* Publication complète des **Chapitres 01 à 06** *(Composants & Compatibilité, Connecteurs & Préparation, Assemblage & Câblage, BIOS/UEFI, Windows/Pilotes/Tests, Diagnostic & Dépannage)*.
* Ajout de la **Checklist interactive de montage** ([`CHECKLIST.md`](./CHECKLIST.md)).
* Ajout du dossier **`outils/`** : Calculateur Budget & PSU, modèle `.csv` et Fiche Mémo Câblage & Debug 1 page.
* Ajout du script PowerShell **`scripts/pack-logiciels-pc-neuf.ps1`** (`Winget` pour HWiNFO64, OCCT, CrystalDiskInfo, FanControl et 7-Zip).
* Mise en place des modèles d'Issues GitHub, du guide de contribution (`CONTRIBUTING.md`) et de la licence **CC BY-NC-SA 4.0**.
