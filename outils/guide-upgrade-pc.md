# 🚀 Guide d'Upgrade Intelligent — Faire évoluer un PC déjà monté

Avant de tout changer, cette méthode permet d'identifier **le seul composant qui te bride vraiment** et d'éviter qu'un upgrade n'en bloque un autre.

---

## 🔎 Étape 1 : Identifier le vrai goulot d'étranglement (*Bottleneck*)

Lance ton jeu le plus exigeant avec **HWiNFO64** ou la superposition de ton pilote GPU (`Alt + R` / `Alt + Z`) :

| Symptôme observé en jeu | Coupable probable | Upgrade prioritaire |
| :--- | :--- | :--- |
| **GPU à 95–100 %**, CPU sous 60 %, FPS insuffisants | Carte graphique saturée | Changer de **GPU** (ou activer DLSS / FSR). |
| **GPU sous 75 %** alors que les FPS plafonnent + micro-saccades | Processeur ou RAM limitants | Passer à un **CPU X3D / plus récent** ou vérifier Dual Channel RAM. |
| **VRAM pleine** (textures floues, grosses chutes de FPS en Ultra) | Mémoire vidéo insuffisante (ex. 8 Go en 1440p) | Passer sur un GPU **12–16 Go de VRAM** (ou baisser les textures). |
| **RAM utilisée > 90 %** + accès disque constants | Capacité RAM saturée (16 Go limites sur gros jeux/modding) | Passer à **32 Go** (ou 64 Go si création/VM). |
| **Chargements longs / textures qui poppent** | Jeu installé sur HDD mécanique | Migrer sur **SSD NVMe**. |

---

## 🛡️ Étape 2 : Les 5 vérifications OBLIGATOIRES avant d'acheter la pièce

1. **Mise à jour du BIOS AVANT démontage (Upgrade CPU) :**
   * Si tu gardes ta carte mère (ex. passage d'un Ryzen 5000 vers un **5700X3D**, ou d'un Ryzen 7000 vers un **9800X3D**), **mets à jour le BIOS tant que l'ancien processeur est encore installé** !
2. **Alimentation & Câbles GPU :**
   * Un nouveau GPU consomme souvent plus : recalcule ta marge dans [`calculateur-budget-puissance.md`](./calculateur-budget-puissance.md).
   * Si ton alimentation n'est pas ATX 3.1 et manque de câbles PCIe 8-pin séparés, change aussi la PSU plutôt que d'utiliser des adaptateurs douteux.
3. **Espace libre dans ton boîtier actuel :**
   * Mesure à la règle la place réelle entre l'équerre arrière et les ventilateurs avant avant d'acheter un GPU 3 ventilateurs.
4. **Nettoyage des anciens pilotes GPU (`DDU`) :**
   * Surtout si tu passes de **NVIDIA → AMD** ou **AMD → NVIDIA** : télécharge **Display Driver Uninstaller (DDU)**, démarre en mode sans échec et supprime l'ancien pilote avant d'installer la nouvelle carte.
5. **Seuil de rentabilité « Changer de plateforme vs Upgrader » :**
   * *Tu es encore en **DDR4 / AM4 / LGA 1200–1700** ?* Un upgrade CPU seul (ex. Ryzen 7 5700X3D) + GPU reste rentable. Au-delà (changement carte mère + CPU + RAM), bascule directement sur une plateforme **AM5 (DDR5)** ou **LGA 1851**.
