###### STRUCTURE.md >> markdown 
```text
Fichier `structure.md`, détaillant l'architecture du dépôt **`PCperso/`** et le rôle de chaque fichier.
```

# PCperso
- 》》 *v1.1*
### Structure du projet

Ce document présente l'organisation complète des dossiers et fichiers du dépôt **PCperso**, conçu pour accompagner l'utilisateur du choix des composants jusqu'à la mise en service logicielle d'un PC monté soi-même.

## Arborescence générale

```text
PCperso/
├── README.md
├── CHECKLIST.md
├── LICENSE
├── .github/
│   ├── 01-comp
│   └── ISSUE_TEMPLATE/
│       └── demande-aide-config.yml
├── assets/
├── guide/
│   ├── 01-composants-compatibilite.md
│   ├── 02-preparation-et-connecteurs.md
│   ├── 03-assemblage-et-cablage.md
│   ├── 04-bios-uefi-et-xmp-expo.md
│   ├── 05-windows-pilotes-et-tests.md
│   ├── 06-diagnostic-et-pannes.md
│   └── 07-glossaire-hardware.md
├── outils/
│   ├── calculateur-budget-puissance.md
│   ├── modele-config-budget.csv
│   └── fiche-memo-cablage-et-debug.md
└── scripts/
    ├── README.md
    └── pack-logiciels-pc-neuf.ps1
```

---

## Détail des fichiers et dossiers
### Racine du dépôt (`PCperso/`)

- **`README.md`**  
  Point d'entrée principal du dépôt. Présente l'objectif du projet, le public visé, le sommaire complet du guide, l'ordre recommandé de lecture ainsi que les liens rapides vers les outils et scripts.

- **`CHECKLIST.md`**  
  Liste de contrôle pratique (cases à cocher) couvrant toutes les phases critiques : vérification de compatibilité avant achat, contrôle du matériel à la réception, étapes clés du montage, réglages post-assemblage et validation finale.

- **`LICENSE`**  
  Fichier définissant la licence juridique du dépôt (droits d'utilisation, de copie, de modification et de partage des guides et scripts).

---

### Configuration GitHub (`.github/`)

- **`01-comp`**  
  Fichier présent dans `.github/` *(rôle à préciser ou fichier en attente de déplacement/nettoyage)*.

- **`ISSUE_TEMPLATE/demande-aide-config.yml`**  
  Modèle de ticket structuré (formulaire YAML GitHub) destiné aux utilisateurs souhaitant demander un avis sur une configuration ou de l'aide au dépannage. Il impose de renseigner les informations indispensables (budget, usage prévu, liste des composants, symptômes éventuels).

---

### Ressources médias (`assets/`)

- **`assets/`**  
  Dossier centralisant l'ensemble des fichiers visuels appelés par les guides Markdown : schémas de connectique (carte mère, alimentation, boîtier), illustrations de montage, photos de repérage et captures d'écran du BIOS/UEFI ou de logiciels de diagnostic.

---

### Guide pas à pas (`guide/`)

- **`01-composants-compatibilite.md`**   Présentation des différents composants d'un PC (CPU, carte mère, RAM, GPU, stockage SSD/NVMe, alimentation, refroidissement, boîtier) et règles de compatibilité matérielle : sockets, chipsets, normes mémoire (DDR4/DDR5), formats (ATX, micro-ATX, Mini-ITX), dégagements physiques (hauteur ventirad, longueur GPU) et normes PCIe.

- **`02-preparation-et-connecteurs.md`**
  Préparation avant montage : outillage nécessaire, bonnes pratiques antistatiques (ESD), organisation de l'espace de travail et identification détaillée de tous les câbles et ports (ATX 24 broches, EPS 4+4/8 broches CPU, PCIe / 12VHPWR-12V-2x6, SATA, connecteurs *Front Panel*, USB internes, PWM et RGB/ARGB).

- **`03-assemblage-et-cablage.md`**  
  Tutoriel chronologique du montage physique : préparation de la carte mère hors boîtier (installation CPU, RAM, SSD M.2 et système de refroidissement), pose des entretoises, fixation de la carte mère et de l'alimentation, branchement des câbles, gestion du flux d'air (*airflow*) et *cable management*, puis installation de la carte graphique.

- **`04-bios-uefi-et-xmp-expo.md`**  
   Première mise sous tension et configuration essentielle du micrologiciel : vérification de la détection du matériel, mise à jour du BIOS/UEFI (si nécessaire), activation des profils mémoire (XMP pour Intel / EXPO-DOCP pour AMD), réglage de Resizable BAR / SAM, TPM 2.0, Secure Boot, ordre de démarrage et profils de ventilation.

- **`05-windows-pilotes-et-tests.md`**  
   Installation propre du système d'exploitation (création de clé USB bootable, partitionnement), installation des pilotes officiels (chipset, carte graphique, réseau, audio), mises à jour système, puis protocole de validation (surveillance des températures, stress tests CPU/GPU/RAM et vérification des performances).

- **`06-diagnostic-et-pannes.md`**  
   Guide de résolution des incidents courants : PC qui ne s'allume pas, ventilateurs qui tournent sans affichage, lecture des LED de diagnostic (*EZ Debug*) et codes bip/POST, instabilités mémoire, écrans bleus (BSOD) et surchauffe.

- **`07-glossaire-hardware.md`**  
   Dictionnaire de référence expliquant de manière claire et accessible les acronymes et notions techniques rencontrés dans les guides (VRM, TDP, NVMe, PCIe, Dual Channel, UEFI, PWM, Bottleneck, etc.).

---

### Outils et fiches pratiques (`outils/`)

- **`calculateur-budget-puissance.md`**  
  Méthodologie et grille d'estimation permettant d'évaluer la consommation électrique réelle de la configuration pour dimensionner l'alimentation (avec marge de sécurité et rendement), ainsi que des repères de répartition budgétaire selon l'usage.

- **`modele-config-budget.csv`**  
  Feuille de calcul réutilisable au format CSV servant à lister chaque composant envisagé, renseigner les références, suivre les prix unitaires, comparer les marchands et calculer le total par rapport au budget fixé.

- **`fiche-memo-cablage-et-debug.md`** 
  Fiche synthétique (pensée pour une consultation rapide pendant le montage) regroupant le schéma des broches du panneau avant (*Power SW*, *Reset SW*, LED), les branchements vitaux à vérifier et la liste des réflexes de premier secours si le PC ne démarre pas.

---

### Scripts d'automatisation (`scripts/`)

- **`README.md`**  
  Documentation dédiée aux scripts : description de leur fonctionnement, prérequis système, gestion des droits d'exécution PowerShell (`ExecutionPolicy`) et avertissements de sécurité avant exécution.

- **`pack-logiciels-pc-neuf.ps1`**  
  Script PowerShell automatisant le déploiement d'une sélection de logiciels essentiels sur un PC fraîchement installé (utilitaires système, outils de surveillance matérielle, navigateur, codecs, outils courants) afin d'éviter l'installation manuelle un par un.

---

### Remarques sur l'arborescence fournie
En relisant votre arbre, deux petits détails méritent peut-être vérification dans votre dossier local :

1. **Ligne vide sous `CHECKLIST.md`** (`├── `) : un nom de fichier semble avoir été effacé lors du copier-coller (peut-être `structure.md` lui-même ou `CONTRIBUTING.md`).

2. **`.github/01-comp`** : ce fichier ressemble à un doublon ou un nom tronqué de `guide/01-composants-compatibilite.md` qui se serait glissé dans `.github/`. S'il s'agit d'une erreur, pensez à le supprimer avant de finaliser votre `structure.md`.
