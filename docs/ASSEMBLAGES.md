# Guides techniques – Assemblage PC Gamer

> **Documentation générale** sur le choix des composants, les règles de compatibilité essentielles et les étapes de montage d'un PC Gamer, de la préparation jusqu'au premier démarrage.

---

## Sommaire

1. [Choix des composants](#1-choix-des-composants)
2. [Vérifier la compatibilité](#2-vérifier-la-compatibilité)
3. [Préparation avant le montage](#3-préparation-avant-le-montage)
4. [Étapes de montage pas à pas](#4-étapes-de-montage-pas-à-pas)
5. [Vérifications et premier démarrage](#5-vérifications-et-premier-démarrage)
6. [Erreurs courantes à éviter](#6-erreurs-courantes-à-éviter)

---

## 1. Choix des composants

Un PC Gamer équilibré repose sur 8 composants principaux. Chaque pièce doit être choisie en cohérence avec votre budget, votre usage et la définition de votre écran (**1080p**, **1440p** ou **4K**).

### Processeur (CPU)
Le « cerveau » du PC. Il gère la logique des jeux, la physique, l'IA et les tâches en arrière-plan.
* **Critères clés** : nombre de cœurs/threads (6 à 8 cœurs minimum recommandés pour le gaming moderne), fréquence, taille du cache (ex. cache 3D pour le jeu) et plateforme (socket).
* **Équilibre** : évitez d'associer un processeur très haut de gamme à une carte graphique d'entrée de gamme (ou inversement) pour limiter les goulots d'étranglement (*bottleneck*).

### Carte graphique (GPU)
Le composant le plus important pour les performances en jeu (FPS et qualité visuelle).
* **Critères clés** : puissance de calcul, quantité de mémoire vidéo (**VRAM** : 8 Go minimum en 1080p, 12 à 16 Go+ recommandés en 1440p/4K), technologies d'upscaling (DLSS, FSR, XeSS).
* **Dimensionnement** : choisissez-la d'abord selon la définition et le taux de rafraîchissement (Hz) de votre écran.

### Carte mère
La colonne vertébrale qui relie tous les composants entre eux.
* **Critères clés** : socket compatible avec le CPU, chipset adapté à vos besoins, étage d'alimentation (VRM) correctement refroidi, nombre d'emplacements M.2, ports USB et présence éventuelle du Wi-Fi/Bluetooth.

### Mémoire vive (RAM)
Stocke temporairement les données utilisées activement par le système et les jeux.
* **Critères clés** : capacité (**16 Go** minimum, **32 Go** recommandés aujourd'hui pour être serein), norme (**DDR4** ou **DDR5**), fréquence (en MT/s) et latence (CL).
* **Règle d'or** : privilégiez toujours **2 barrettes identiques** (ex. 2 × 16 Go) plutôt qu'une seule pour profiter du **Dual Channel**.

### Stockage (SSD NVMe)
Accueille le système d'exploitation, les logiciels et les jeux.
* **Critères clés** : format **M.2 NVMe** (PCIe 4.0 offre le meilleur rapport performance/prix ; PCIe 5.0 pour les besoins extrêmes) et capacité (**1 To** minimum recommandé, **2 To** idéal vu le poids des jeux récents).
* *Note : les disques durs mécaniques (HDD) ne sont plus recommandés pour les jeux modernes, uniquement pour l'archivage de masse.*

### Refroidissement CPU
Maintient le processeur à bonne température sans nuisance sonore excessive.
* **Ventirad (refroidissement à air)** : fiable, durable, excellent rapport qualité/prix. Suffisant pour la grande majorité des processeurs gaming.
* **Watercooling AIO (tout-en-un)** : utile pour les processeurs très énergivores ou pour des raisons esthétiques/d'encombrement, mais plus coûteux et soumis à une usure de la pompe à long terme.

### Alimentation (PSU)
Fournit un courant propre et stable à l'ensemble de la machine. **Ne jamais négliger ce composant.**
* **Critères clés** : puissance adaptée (avec marge de sécurité), certification de rendement (80+ Bronze, Gold ou supérieur), fiabilité reconnue, modularité (semi ou full modulaire pour faciliter le câblage) et norme récente (**ATX 3.0 / 3.1** recommandée pour les GPU modernes).

### Boîtier
Protège les composants et assure leur refroidissement grâce à la circulation d'air.
* **Critères clés** : façade ajourée (*mesh*) pour un bon flux d'air (*airflow*), ventilateurs inclus (idéalement au moins 2 en aspiration à l'avant et 1 en extraction à l'arrière), filtres à poussière et qualité des passe-câbles.

---

## 2. Vérifier la compatibilité

Avant de commander, croisez systématiquement les points suivants :

| Couple de composants | Points de compatibilité à vérifier |
| :--- | :--- |
| **CPU ↔ Carte mère** | Même **socket** (ex. AM5, AM4, LGA 1700, LGA 1851) et BIOS compatible avec la génération du CPU. |
| **RAM ↔ Carte mère / CPU** | Même norme (**DDR4** ou **DDR5**, non interchangeables physiquement) et fréquence supportée. |
| **Carte mère ↔ Boîtier** | Format supporté : **ATX**, **Micro-ATX (mATX)** ou **Mini-ITX**. |
| **GPU ↔ Boîtier** | Longueur maximale acceptée par le boîtier (en mm) ≥ longueur de la carte graphique. |
| **Ventirad / AIO ↔ Boîtier** | Hauteur maximale ventirad (en mm) ou emplacements radiateur AIO (240 / 280 / 360 mm) compatibles. |
| **PSU ↔ Boîtier & GPU** | Format (**ATX** ou **SFX**), longueur max dans le cache alimentation, puissance totale et câbles GPU adaptés (PCIe 8 broches ou 12V-2x6). |

> **Astuce dimensionnement PSU** : additionnez la consommation maximale du CPU et du GPU, ajoutez ~75 à 100 W pour le reste du système, puis gardez **25 à 35 % de marge** pour les pics de charge, le silence et l'évolutivité.

---

## 3. Préparation avant le montage

### Outils nécessaires
* Un tournevis cruciforme aimanté (**PH2** standard) — indispensable.
* Un petit tournevis cruciforme de précision (utile pour certaines vis M.2, même si beaucoup de cartes mères récentes ont un système sans vis).
* Des serre-câbles (*colliers rilsan* ou scratchs) et une pince coupante pour le rangement des câbles.
* Un bol ou une boîte compartimentée pour ne pas perdre les vis.
* Une bonne source de lumière (lampe frontale ou lampe de bureau).

### Règles de sécurité et bonnes pratiques
* Travaillez sur une **table grande, propre, sèche et non conductrice** (évitez la moquette sous les pieds).
* **Déchargez l'électricité statique** avant de manipuler les composants en touchant une pièce métallique reliée à la terre (ex. radiateur ou boîtier métallique).
* Manipulez les composants (carte mère, CPU, GPU, RAM) par les **bords**, sans toucher les broches dorées ni les circuits.
* Conservez la boîte de la carte mère : elle servira de **support isolant** pour le pré-montage hors boîtier.

---

## 4. Étapes de montage pas à pas

### Étape 1 — Préparer la carte mère (hors boîtier)
Posez la carte mère à plat sur sa boîte en carton (jamais directement sur le sachet antistatique, qui peut conduire en surface).

1. **Installer le processeur (CPU)** :
   * Ouvrez le levier de rétention du socket.
   * Repérez le **triangle d'alignement** dans un coin du CPU et alignez-le avec celui du socket.
   * Posez délicatement le CPU à plat sans forcer (il doit tomber tout seul dans son logement).
   * Refermez le système de rétention et verrouillez le levier.
2. **Installer la mémoire vive (RAM)** :
   * Consultez le manuel de la carte mère pour identifier les slots prioritaires (généralement **A2 et B2**, soit les 2e et 4e emplacements en partant du CPU).
   * Ouvrez les loquets, alignez l'encoche de la barrette avec le détrompeur du slot et appuyez fermement aux deux extrémités jusqu'au *clic* de verrouillage.
3. **Installer le(s) SSD M.2 NVMe** :
   * Utilisez en priorité le slot M.2 principal (le plus proche du CPU, souvent câblé directement sur celui-ci).
   * Retirez le dissipateur thermique s'il y en a un (**pensez à enlever le film protecteur du pad thermique**).
   * Insérez le SSD en biais (~30°), abaissez-le et verrouillez-le avec la vis ou le loquet rapide.

---

### Étape 2 — Installer le refroidissement CPU
* *Si vous montez un **ventirad**, il est beaucoup plus simple de l'installer avant de mettre la carte mère dans le boîtier. Si vous montez un **AIO**, installez d'abord le support arrière (backplate) maintenant, puis fixez le radiateur dans le boîtier à l'étape suivante.*
* Appliquez une noisette de pâte thermique au centre du CPU (inutile si elle est déjà pré-appliquée sous le bloc de refroidissement).
* **Point critique : retirez impérativement le film plastique transparent sous la base en cuivre du ventirad/AIO !**
* Vissez en croix progressivement pour répartir la pression uniformément.
* Branchez le câble du ventilateur sur le connecteur **`CPU_FAN`** de la carte mère.

---

### Étape 3 — Préparer le boîtier
* Retirez les deux panneaux latéraux (verre trempé et panneau arrière).
* Vérifiez que les **entretoises** (petits plots en laiton/métal) sont vissées uniquement aux emplacements correspondant au format de votre carte mère (ATX, mATX, etc.). *Une entretoise mal placée sous la carte mère peut causer un court-circuit.*
* Si la carte mère n'a pas de plaque arrière intégrée, clipsez l'**I/O Shield** depuis l'intérieur du boîtier avant de poser la carte mère.

---

### Étape 4 — Installer l'alimentation (PSU)
* Si votre alimentation est modulaire, branchez uniquement les câbles nécessaires avant de l'insérer (24 broches carte mère, 8 broches CPU, câbles PCIe GPU, et éventuellement SATA).
* Positionnez l'alimentation dans son emplacement (en général en bas, **ventilateur orienté vers le bas** s'il y a une grille avec filtre à poussière sous le boîtier).
* Vissez l'alimentation à l'arrière du boîtier et faites passer les câbles vers l'arrière (côté gestion des câbles).

---

### Étape 5 — Fixer la carte mère dans le boîtier
* Inclinez légèrement la carte mère pour aligner les ports arrière avec la plaque I/O.
* Posez-la doucement sur les entretoises sans glisser.
* Vissez toutes les vis correspondantes sans serrer de manière excessive.

---

### Étape 6 — Effectuer les branchements internes
Reliez soigneusement les câbles suivants en consultant le manuel de la carte mère :
1. **Alimentation carte mère** : gros connecteur **24 broches (ATX)** sur le bord droit.
2. **Alimentation processeur** : connecteur **8 broches (ou 4+4 broches `CPU`/`EPS`)** en haut à gauche de la carte mère. *(Ne pas confondre avec les câbles PCIe 6+2 du GPU !)*
3. **Façade du boîtier (*Front Panel*)** :
   * Câbles `USB 3.0` / `USB-C` interne.
   * Câble `HD Audio` (généralement tout en bas à gauche).
   * Petits connecteurs `POWER SW`, `RESET SW`, `POWER LED`, `HDD LED` (ou connecteur unifié `F_PANEL`).
4. **Ventilateurs du boîtier & RGB** : branchez-les sur les prises `SYS_FAN` / `CHA_FAN` (et `ARGB 5V` 3 broches si applicable — ne jamais brancher un câble 5V sur une prise 12V 4 broches).

---

### Étape 7 — Installer la carte graphique (GPU)
* Repérez le port **PCIe x16 principal** (le plus haut, souvent renforcé en métal).
* Retirez les 2 ou 3 caches d'extension à l'arrière du boîtier alignés avec ce port.
* Ouvrez le loquet au bout du slot PCIe.
* Insérez fermement la carte graphique bien droite jusqu'à entendre le *clic* du loquet.
* Vissez l'équerre de la carte graphique au châssis du boîtier (et installez un support anti-affaissement si la carte est très lourde).
* Branchez les câbles d'alimentation PCIe / 12V-2x6. **Vérifiez que le connecteur est enfoncé complètement jusqu'au bout sans aucun jeu.**

---

### Étape 8 — Cable management et vérification finale
Organisez et attachez les câbles à l'arrière du boîtier pour laisser l'avant dégagé (meilleur flux d'air et rendu propre), puis passez cette check-list :

- [ ] Film plastique retiré sous le ventirad / waterblock.
- [ ] Câble `CPU_FAN` branché.
- [ ] RAM bien clipsée dans les bons slots (Dual Channel).
- [ ] Câbles 24 broches (ATX) et 8 broches (CPU) bien enclenchés.
- [ ] Alimentation du GPU branchée à fond.
- [ ] Aucune vis oubliée ou câble touchant les pales d'un ventilateur.

---

## 5. Vérifications et premier démarrage

1. **Branchements externes** :
   * Branchez le câble d'alimentation secteur à l'arrière du PSU et basculez l'interrupteur sur **`I` (ON)**.
   * **Branchez le câble vidéo (DisplayPort ou HDMI) directement sur la carte graphique** (et non sur la carte mère).
   * Connectez clavier et souris.
2. **Premier allumage (POST)** :
   * Appuyez sur le bouton Power du boîtier. Les ventilateurs doivent tourner et l'écran s'allumer après quelques secondes *(sur les plateformes DDR5 récentes, le premier démarrage peut prendre 1 à 2 minutes pour l'apprentissage mémoire — soyez patient)*.
   * En cas d'échec, observez les voyants de diagnostic (**EZ Debug LED** : `CPU`, `DRAM`, `VGA`, `BOOT`) sur la carte mère.
3. **Configuration rapide dans le BIOS/UEFI** *(touche `Suppr` ou `F2` au démarrage)* :
   * Vérifiez que la capacité totale de RAM et le SSD sont bien détectés.
   * Contrôlez les températures au repos (généralement entre 30 °C et 45 °C pour le CPU).
   * Activez le profil **XMP** (Intel) ou **EXPO / DOCP** (AMD) pour que la RAM tourne à sa fréquence nominale.
4. **Installation du système** :
   * Installez votre système d'exploitation via clé USB bootable, puis installez les pilotes officiels (chipset carte mère et pilote graphique GPU).

---

## 6. Erreurs courantes à éviter

* **Oublier l'interrupteur `I/O` de l'alimentation** avant d'appuyer sur le bouton Power du boîtier.
* **Brancher l'écran sur la carte mère** au lieu de la carte graphique (ce qui désactive la carte dédiée ou empêche tout affichage si le CPU n'a pas de puce graphique intégrée).
* **Oublier le film plastique protecteur** sous le ventirad/waterblock, provoquant des surchauffes immédiates.
* **Confondre le câble `CPU` (4+4 broches) et le câble `PCIe` (6+2 broches)**.
* **Mal enfoncer les barrettes de RAM ou les câbles d'alimentation** par peur de forcer (un clic franc ou une insertion complète sans espace est nécessaire).
* **Laisser le BIOS par défaut** sans activer XMP/EXPO (la RAM reste bridée à une fréquence basse).
