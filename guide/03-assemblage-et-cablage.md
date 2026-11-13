# 3. Assemblage et câblage

Monte un maximum de composants **hors du boîtier**, en posant la carte mère sur sa boîte en carton (jamais sur le sachet antistatique).

## 📦 Étape 1 : Sur la carte mère (hors boîtier)

1. **Processeur (CPU)** : Ouvre le levier du socket, aligne le triangle doré du CPU avec celui du socket, pose-le sans appuyer, puis referme le levier.
2. **SSD M.2** : Retire le dissipateur thermique (et son film plastique !), insère le SSD à 30°, appuie doucement et fixe-le.
3. **RAM** : Ouvre les loquets des slots recommandés par le manuel (souvent **A2 et B2**, soit le 2ᵉ et 4ᵉ slot en partant du CPU). Enfonce fermement jusqu'au *clic*.
4. **Support du refroidissement** : Installe la plaque arrière (backplate) et les fixations du ventirad/AIO si nécessaire.

---

## 🏗️ Étape 2 : Dans le boîtier

1. **Préparation** : Retire les panneaux du boîtier. Vérifie que les **entretoises** (petits plots en laiton) correspondent au format de ta carte mère. Installe la plaque I/O arrière si elle n'est pas intégrée à la carte mère.
2. **Alimentation (PSU)** : Installe-la (ventilateur vers le bas s'il y a un filtre à poussière) et branche les câbles nécessaires avant de la visser si elle est modulaire.
3. **Carte mère** : Pose-la délicatement sur les entretoises en l'alignant avec les ports arrière, puis visse sans serrer comme une brute.
4. **Refroidissement (Ventirad / AIO)** :
   - ⚠️ **RETIRER LE FILM PLASTIQUE** sous la base en cuivre !
   - Applique un petit pois de pâte thermique au centre du CPU (sauf si déjà pré-appliquée).
   - Visse en croix progressivement et branche le câble sur `CPU_FAN`.

---

## 🔌 Étape 3 : Câblage et carte graphique

1. **Câbles carte mère & boîtier** :
   - Branche l'**ATX 24 broches** et le **CPU 8 broches** (en haut à gauche).
   - Branche le **F_PANEL**, l'**USB**, l'**Audio** et les **ventilateurs du boîtier** (aide-toi du manuel de la carte mère).
2. **Carte graphique (GPU)** :
   - Retire les caches métalliques à l'arrière du boîtier face au 1ᵉʳ port PCIe x16.
   - Insère le GPU bien droit jusqu'au *clic* du loquet.
   - Visse l'équerre au boîtier.
   - Branche les câbles d'alimentation PCIe / 12V-2x6 **à fond** (aucun espace ne doit être visible).
3. **Gestion des câbles** : Fais passer les câbles par l'arrière du boîtier et attache-les proprement pour ne pas bloquer le flux d'air.

---
⬅️ [Chapitre 2 : Préparation](02-preparation-et-connecteurs.md) | ➡️ [Chapitre 4 : BIOS/UEFI et XMP/EXPO](04-bios-uefi-et-xmp-expo.md)
