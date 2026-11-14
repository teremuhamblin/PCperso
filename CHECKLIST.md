# Checklist complète de montage PC — PCperso

Cette checklist vous accompagne pas à pas, de la vérification de votre panier jusqu'à la validation finale du PC sous Windows. Cochez chaque case au fur et à mesure pour éviter les oublis classiques.

> **En cas de doute sur un terme technique** : consultez le [Glossaire Hardware](guide/07-glossaire-hardware.md).  
> **En cours de montage** : gardez la [Fiche mémo câblage et debug](outils/fiche-memo-cablage-et-debug.md) ouverte à portée de main.

---

## Phase 1 : Choix des composants, budget et compatibilité

> Références : [Composants & compatibilité](guide/01-composants-compatibilite.md) · [Calculateur budget & puissance](outils/calculateur-budget-puissance.md) · [Modèle config CSV](outils/modele-config-budget.csv)

- [ ] **Budget et usage définis** : lister vos composants et suivre les prix dans [`modele-config-budget.csv`](outils/modele-config-budget.csv).
- [ ] **Couple CPU / Carte mère compatible** : même socket et chipset adapté ; vérifier si une mise à jour BIOS est requise pour ce processeur (présence du bouton *BIOS Flashback* si nécessaire).
- [ ] **Mémoire vive (RAM) compatible** : bonne génération (DDR4 ou DDR5 selon la carte mère), idéalement en kit de 2 barrettes (*Dual Channel*).
- [ ] **Dimensions physiques vérifiées** :
  - [ ] Format carte mère accepté par le boîtier (ATX, micro-ATX, Mini-ITX).
  - [ ] Longueur de la carte graphique (GPU) inférieure à l'espace maximal du boîtier.
  - [ ] Hauteur du ventirad (ou taille du radiateur AIO : 240/280/360 mm) compatible avec le boîtier et la hauteur des barrettes RAM.
- [ ] **Stockage vérifié** : format (M.2 NVMe / SATA), norme PCIe et nombre d'emplacements disponibles sur la carte mère.
- [ ] **Alimentation dimensionnée** : puissance calculée via [`calculateur-budget-puissance.md`](outils/calculateur-budget-puissance.md) avec marge de sécurité, et présence des bons câbles (notamment PCIe / 12VHPWR / 12V-2x6 pour le GPU).
- [ ] **Refroidissement et flux d'air** : nombre de ventilateurs inclus dans le boîtier vérifié (ajout de ventilateurs si insuffisant).
- [ ] **Licence / clé USB prête** : prévoir une clé USB (8 Go minimum) et un PC fonctionnel pour créer l'installateur Windows.

---

## Phase 2 : Réception du matériel et préparation du poste

> Référence : [Préparation et connecteurs](guide/02-preparation-et-connecteurs.md)

- [ ] **Contrôle des colis à la livraison** : vérifier l'absence de chocs et contrôler que chaque référence reçue correspond exactement à la commande.
- [ ] **Espace de travail dégagé et sécurisé** : table propre, bien éclairée, surface non conductrice (éviter la moquette/les tapis sous les pieds pour limiter l'électricité statique).
- [ ] **Outils rassemblés** :
  - [ ] Tournevis cruciforme aimanté (PH2) + petit tournevis (PH0/PH1) pour les vis M.2.
  - [ ] Coupelles ou boîtes compartimentées pour trier la visserie.
  - [ ] Colliers de serrage (*zip-ties*) ou attaches velcro pour le rangement des câbles.
  - [ ] Pâte thermique (si non pré-appliquée sur le ventirad/AIO).
- [ ] **Précautions antistatiques (ESD)** : toucher une partie métallique reliée à la terre (ou porter un bracelet antistatique) avant de manipuler les composants.
- [ ] **Repérage des câbles et connecteurs** : identifier les câbles de l'alimentation (24 broches, CPU EPS, PCIe, SATA) et les en-têtes de la carte mère grâce au manuel et à [`02-preparation-et-connecteurs.md`](guide/02-preparation-et-connecteurs.md).
- [ ] **Clé USB Windows créée** (et éventuel fichier de mise à jour BIOS téléchargé si besoin avant montage).

---

## Phase 3 : Montage hors boîtier (préparation de la carte mère)

> Référence : [Assemblage et câblage](guide/03-assemblage-et-cablage.md)

- [ ] **Carte mère posée sur sa boîte en carton** *(ne jamais poser la carte mère directement sur l'extérieur de son sachet antistatique)*.
- [ ] **Installation du processeur (CPU)** :
  - [ ] Triangle de repère aligné avec celui du socket.
  - [ ] Processeur posé délicatement **sans aucune pression**, puis levier verrouillé.
- [ ] **Installation du SSD M.2 NVMe** :
  - [ ] Film protecteur retiré sous le dissipateur thermique de la carte mère (si présent).
  - [ ] SSD inséré à ~30° dans le port M.2 principal (le plus proche du CPU), puis fixé sans forcer.
- [ ] **Installation de la RAM** :
  - [ ] Barrettes insérées dans les emplacements recommandés par le manuel (généralement A2 et B2 pour 2 barrettes).
  - [ ] Loquets enclenchés avec un clic franc des deux côtés.
- [ ] **Préparation / pose du refroidissement CPU** :
  - [ ] Plaque arrière (*backplate*) et fixations montées selon le socket (Intel/AMD).
  - [ ] **Film plastique protecteur retiré sous la base du ventirad / de la pompe AIO** *(vérification critique !)*.
  - [ ] Pâte thermique appliquée (si non pré-appliquée).
  - [ ] Ventirad fixé (ou support préparé pour AIO) en serrant les vis en croix progressivement.
  - [ ] Câble du ventilateur branché sur **`CPU_FAN`** (ou pompe sur `AIO_PUMP`).

---

## Phase 4 : Installation dans le boîtier et câblage

> Références : [Assemblage et câblage](guide/03-assemblage-et-cablage.md) · [Fiche mémo câblage et debug](outils/fiche-memo-cablage-et-debug.md)

### Boîtier, alimentation et carte mère
- [ ] **Préparation du boîtier** : panneaux latéraux retirés, caches PCIe arrière correspondant au GPU retirés.
- [ ] **Entretoises vérifiées** : uniquement les entretoises correspondant aux trous de votre carte mère sont installées *(aucune entretoise en trop qui toucherait l'arrière du PCB)*.
- [ ] **Plaque arrière (I/O Shield)** clipsée dans le boîtier (si non intégrée à la carte mère).
- [ ] **Installation de l'alimentation (PSU)** :
  - [ ] Ventilateur orienté vers le bas (si grille filtrée en dessous) ou vers l'intérieur si boîtier fermé en bas.
  - [ ] Câbles nécessaires pré-branchés côté alimentation (si modulaire).
- [ ] **Fixation de la carte mère** : posée doucement sur les entretoises, alignée avec les ports arrière, toutes les vis serrées sans excès.

### Branchements internes
- [ ] **Alimentation carte mère** : câble ATX 24 broches enclenché à fond (loquet clipsé).
- [ ] **Alimentation CPU** : câble EPS 8 broches (ou 4+4) branché en haut de la carte mère *(ne pas confondre avec un câble PCIe)*.
- [ ] **Panneau avant (*Front Panel*)** : `POWER SW`, `RESET SW`, LED branchés selon le schéma de la carte mère.
- [ ] **Connectique façade** : câbles USB 3.0, USB-C interne et `HD AUDIO` branchés sans plier les broches.
- [ ] **Ventilation et RGB** : ventilateurs boîtier branchés sur `SYS_FAN` / `CHA_FAN` (ou hub) et câbles ARGB (5V 3 broches) / RGB (12V 4 broches) vérifiés avant branchement.
- [ ] **Stockage SATA** (si applicable) : câbles data SATA + alimentation SATA branchés.

### Carte graphique (GPU) et finition
- [ ] **Installation du GPU** : inséré dans le port PCIe x16 principal (le plus haut) jusqu'au clic du loquet, puis vissé à l'équerre du boîtier (support anti-affaissement posé si fourni).
- [ ] **Alimentation du GPU** :
  - [ ] Câbles PCIe distincts utilisés autant que possible (éviter le dédoublement en Y sur les GPU puissants).
  - [ ] Si connecteur 12VHPWR / 12V-2x6 : fiche **enfoncée à fond sans aucun espace** et sans pliure brutale à moins de 3-4 cm du connecteur.
- [ ] **Gestion des câbles (*Cable management*)** : câbles attachés à l'arrière, aucun fil ne gêne les pales des ventilateurs ou le flux d'air.

---

## Phase 5 : Premier démarrage (POST) et réglage BIOS / UEFI

> Références : [BIOS, UEFI et XMP/EXPO](guide/04-bios-uefi-et-xmp-expo.md) · [Diagnostic et pannes](guide/06-diagnostic-et-pannes.md)

- [ ] **Dernier contrôle visuel** : aucun câble flottant, aucun outil oublié dans le boîtier.
- [ ] **Branchements externes** :
  - [ ] Câble d'écran branché **directement sur la carte graphique** *(et non sur la carte mère)*.
  - [ ] Clavier, souris et câble secteur branchés ; interrupteur de l'alimentation passé sur **`I` (ON)**.
- [ ] **Premier démarrage (POST)** : appui sur le bouton Power du boîtier, accès au BIOS (`Suppr` ou `F2` selon le fabricant).
  - *(Si le PC ne démarre pas ou n'affiche rien : suivre [`06-diagnostic-et-pannes.md`](guide/06-diagnostic-et-pannes.md)).*
- [ ] **Vérifications dans le BIOS** :
  - [ ] Processeur, capacité totale de RAM et SSD bien reconnus.
  - [ ] Température CPU au repos cohérente (généralement entre 30 °C et 50 °C selon le refroidissement).
  - [ ] Version du BIOS vérifiée (mise à jour effectuée si nécessaire).
- [ ] **Réglages essentiels activés** :
  - [ ] Profil mémoire **XMP** (Intel) ou **EXPO / DOCP** (AMD) activé pour profiter de la fréquence réelle de la RAM.
  - [ ] **Resizable BAR** (ou *Smart Access Memory*) et *Above 4G Decoding* activés.
  - [ ] **TPM 2.0** (fTPM / PTT) et **Secure Boot** activés (requis pour Windows 11 et certains jeux).
  - [ ] Mode **UEFI** actif (CSM désactivé).
  - [ ] Courbes de ventilation ajustées si trop bruyantes.
- [ ] **Sauvegarde et redémarrage** (`Save & Exit`).

---

## Phase 6 : Installation de Windows, pilotes et logiciels

> Références : [Windows, pilotes et tests](guide/05-windows-pilotes-et-tests.md) · [Documentation scripts](scripts/README.md) · [Script pack logiciels](scripts/pack-logiciels-pc-neuf.ps1)

- [ ] **Installation propre de Windows** :
  - [ ] Démarrage sur la clé USB bootable.
  - [ ] *(Conseil)* Disques secondaires débranchés temporairement pour garantir que les partitions système s'installent sur le SSD principal.
  - [ ] Windows installé sur le SSD NVMe principal.
- [ ] **Mises à jour et pilotes officiels** :
  - [ ] Connexion réseau établie (Ethernet ou pilote Wi-Fi installé).
  - [ ] **Windows Update** exécuté jusqu'à ce qu'il n'y ait plus de mises à jour critiques/facultatives nécessaires.
  - [ ] Pilote **Chipset** de la carte mère installé (depuis le site AMD/Intel ou du fabricant de la carte mère).
  - [ ] Pilote **Carte graphique** installé (NVIDIA App / AMD Adrenalin / Intel Arc).
  - [ ] Pilotes Audio et Réseau mis à jour si besoin.
- [ ] **Installation des logiciels essentiels** :
  - [ ] Consulter [`scripts/README.md`](scripts/README.md) (prérequis et politique d'exécution PowerShell).
  - [ ] Vérifier / adapter puis exécuter [`scripts/pack-logiciels-pc-neuf.ps1`](scripts/pack-logiciels-pc-neuf.ps1).

---

## Phase 7 : Tests de stabilité et validation finale

> Référence : [Windows, pilotes et tests](guide/05-windows-pilotes-et-tests.md)

- [ ] **Vérification système** :
  - [ ] Gestionnaire de périphériques propre (aucun triangle jaune d'erreur).
  - [ ] Fréquence de la RAM (XMP/EXPO) confirmée dans le Gestionnaire des tâches (onglet *Performance > Mémoire*).
  - [ ] **Taux de rafraîchissement de l'écran (Hz)** réglé au maximum dans *Paramètres Windows > Système > Écran > Paramètres avancés*.
- [ ] **Tests de charge et températures** :
  - [ ] Outil de monitoring lancé (ex. HWiNFO64).
  - [ ] Stress test CPU effectué (températures stables, pas de coupure ni *thermal throttling* excessif).
  - [ ] Stress test GPU / benchmark effectué (scores cohérents, pas d'artefacts visuels, ventilateurs réactifs).
  - [ ] Test de stabilité mémoire (RAM) validé sans erreur.
- [ ] **Finition matérielle** :
  - [ ] Panneaux du boîtier refermés et filtres à poussière bien en place.
  - [ ] Nouveau contrôle rapide des températures en charge **boîtier fermé**.
- [ ] **Archivage** : conserver factures, boîtes (au moins durant la période de garantie/rétractation) et visserie restante dans un sachet identifié.

---

## En cas de blocage ou de panne

1. Consultez d'abord le guide dédié : [`guide/06-diagnostic-et-pannes.md`](guide/06-diagnostic-et-pannes.md) et la [`outils/fiche-memo-cablage-et-debug.md`](outils/fiche-memo-cablage-et-debug.md).
2. Si le problème persiste, ouvrez une demande d'aide structurée sur le dépôt en utilisant le modèle [Demande d'aide configuration](.github/ISSUE_TEMPLATE/demande-aide-config.yml).
