[⬅️ Retour au Sommaire](../README.md) • [🧰 Dossier Outils](./README.md) • [🧮 Calculateur PSU & Budget](./calculateur-budget-puissance.md)

# 🎯 Configurations Types par Budget

Tu ne sais pas par où commencer devant la jungle des références processeurs et cartes graphiques ?  
Cette page te propose **4 bases de configurations équilibrées** selon ton budget et la définition de ton écran.

> [!NOTE]
> **Avant de commander :**
> * Les prix du matériel informatique évoluent chaque semaine : les fourchettes ci-dessous sont des **ordres de grandeur** *(tour seule, hors écran et périphériques)*.
> * Utilise ces exemples comme point de départ, puis reporte tes choix précis dans le tableau [`modele-config-budget.csv`](./modele-config-budget.csv) et vérifie la puissance de ton alimentation avec le [Calculateur Budget & PSU](./calculateur-budget-puissance.md).

---

## 💡 La règle de répartition du budget

Pour éviter le fameux *bottleneck* (déséquilibre où un composant bride l'autre), garde en tête cette répartition approximative pour un PC Gaming :

* 🎮 **Carte graphique (GPU) :** `40 % à 50 %` du budget *(c'est elle qui détermine tes FPS et ta qualité graphique)*.
* 🧠 **Processeur (CPU) + Carte mère :** `20 % à 25 %` du budget.
* ⚡ **RAM + SSD + Boîtier + Alim + Refroidissement :** `25 % à 35 %` du budget.

> [!IMPORTANT]
> **Ne rogne JAMAIS sur l'alimentation !** Une bonne alimentation certifiée **80+ Gold (norme ATX 3.1)** protège tes composants pendant 7 à 10 ans et évite les plantages en pleine partie.

---

## 🟢 Config 1 — L'Essentielle (1080p Fluide & E-sport)
**Budget indicatif : ~800 € – 1 000 €**

Idéale pour jouer confortablement en **Full HD (1080p)** à haut rafraîchissement sur les jeux compétitifs (*Valorant, CS2, Fortnite*) et en qualité Élevée/Ultra sur les jeux solo récents.

| Composant | Recommandation type | Alternative / Précision |
| :--- | :--- | :--- |
| **Processeur (CPU)** | **AMD Ryzen 5 7500F** ou **7600** | Plateforme AM5 évolutive. *(Sur budget très serré < 800 €, un Ryzen 5 5600 sur AM4 ou Intel Core i5-14400F reste pertinent).* |
| **Carte mère** | **Chipset B650** (format micro-ATX ou ATX) | Vérifie si tu as besoin du **Wi-Fi / Bluetooth intégré**. |
| **Carte graphique (GPU)** | **AMD Radeon RX 9060 XT** *(16 Go idéal)* ou **NVIDIA RTX 5060** *(8 Go)* | La **RX 9060 XT 16 Go** offre une meilleure longévité sur les textures ; la **RTX 5060** brille grâce au DLSS 4. *(Alternative petit prix : Intel Arc B580 12 Go).* |
| **Mémoire (RAM)** | **16 Go ou 32 Go DDR5** (2×8 Go ou 2×16 Go) | Vise **6000 MT/s CL30** *(ou 5600 MT/s CL36 si budget serré)* en Dual Channel. |
| **Stockage (SSD)** | **1 To NVMe M.2 PCIe 4.0** | Évite les SSD 500 Go, trop vite remplis par les jeux modernes. |
| **Refroidissement** | **Ventirad simple tour** (120 mm, ~25–35 €) | Plus silencieux et efficace que les ventirads fournis d'origine. |
| **Alimentation (PSU)** | **650 W — 80+ Bronze ou Gold** | Suffisante et avec une belle marge de sécurité. |
| **Boîtier** | **Boîtier Mesh** avec 2 à 3 ventilateurs inclus | Privilégie une façade perforée *(mesh)* pour un bon flux d'air. |

---

## 🔵 Config 2 — Le « Sweet Spot » (1440p Sans Compromis)
**Budget indicatif : ~1 300 € – 1 600 €**

Le **meilleur rapport performances / prix** pour la majorité des joueurs : fluide en **QHD (1440p)** en qualité Ultra, prête pour le Ray Tracing et durable plusieurs années grâce à une carte graphique généreuse en mémoire vidéo (VRAM).

| Composant | Recommandation type | Alternative / Précision |
| :--- | :--- | :--- |
| **Processeur (CPU)** | **AMD Ryzen 5 9600X** ou **Ryzen 7 7800X3D** | Côté Intel : **Core Ultra 5 250K Plus** *(excellent en polyvalence gaming + applicatif)*. |
| **Carte mère** | **Chipset B850** (ou B650 bien équipé) | Format ATX, PCIe 5.0 selon modèle, Wi-Fi 6E/7 et dissipateurs M.2 intégrés. |
| **Carte graphique (GPU)** | **AMD Radeon RX 9070 / 9070 XT (16 Go)** ou **NVIDIA RTX 5070 (12 Go) / RTX 5060 Ti (16 Go)** | En 1440p, privilégie **12 Go à 16 Go de VRAM minimum** pour encaisser les jeux AAA récents sans saccades. |
| **Mémoire (RAM)** | **32 Go (2×16 Go) DDR5-6000 CL30** | Compatible profil **AMD EXPO** ou **Intel XMP 3.0**. |
| **Stockage (SSD)** | **2 To NVMe M.2 PCIe 4.0** | Confortable pour installer Windows, logiciels et une dizaine de gros jeux. |
| **Refroidissement** | **Ventirad double tour** *(ou Watercooling AIO 240 mm)* | Voir le [Chapitre 08](./../guide/08-refroidissement-et-entretien.md) pour bien choisir et placer l'AIO. |
| **Alimentation (PSU)** | **750 W ou 850 W — 80+ Gold (ATX 3.1)** | Modulaire, avec câble natif `12V-2x6` pour simplifier le câblage GPU. |
| **Boîtier** | **Boîtier Moyen Tour Airflow** | Vérifie la **longueur max du GPU** (souvent 320–350 mm) avant achat. |

---

## 🟣 Config 3 — Haut de Gamme (4K, Compétitif & Création)
**Budget indicatif : ~2 200 € – 2 800 €**

Taillée pour la **4K (UHD)**, le **1440p très haute fréquence (240 Hz+)**, le Ray Tracing poussé, le streaming ou le montage vidéo lourd.

| Composant | Recommandation type | Alternative / Précision |
| :--- | :--- | :--- |
| **Processeur (CPU)** | **AMD Ryzen 7 9800X3D** ou **9850X3D** | Les rois du gaming grâce au **3D V-Cache**. *(Si priorité montage 3D/applicatif lourd : **Intel Core Ultra 7 270K Plus** ou **Ryzen 9 9950X3D**).* |
| **Carte mère** | **Chipset B850 ou X870** *(Intel : **Z890**)* | Étages d'alimentation (VRM) robustes, USB4/Thunderbolt et plusieurs ports M.2. |
| **Carte graphique (GPU)** | **NVIDIA RTX 5070 Ti (16 Go)** ou **RTX 5080 (16 Go)** | Alternative AMD : **Radeon RX 9070 XT** pour un excellent ratio FPS/euro en 4K hors Ray Tracing lourd. |
| **Mémoire (RAM)** | **32 Go à 64 Go DDR5-6000 CL30** | 32 Go suffisent pour jouer ; passe à **64 Go** si tu fais du montage 4K, de la 3D ou de l'IA locale. |
| **Stockage (SSD)** | **2 To NVMe PCIe 4.0/5.0** *(haut débit avec cache DRAM)* | Possibilité d'ajouter un second SSD dédié aux projets vidéo / jeux. |
| **Refroidissement** | **AIO 280/360 mm** ou **Ventirad double tour premium** | Pense à la pression positive du boîtier pour garder les températures basses en silence. |
| **Alimentation (PSU)** | **850 W à 1000 W — 80+ Gold / Platinum (ATX 3.1)** | Indispensable pour absorber sereinement les pics de charge (*transients*) des gros GPU. |
| **Boîtier** | **Moyen / Grand Tour spacieux** *(ou compatible BTF/connecteurs inversés)* | Privilégie un boîtier large pour que le câble `12V-2x6` ne soit jamais plié contre la vitre. |

---

## 🏆 Config 4 — Sans Compromis (4K Ultra & Workstation)
**Budget indicatif : ~3 500 € et +**

Pour ceux qui veulent le maximum absolu du marché sans regarder la facture (4K 240 Hz, VR exigeante, rendu 3D, IA locale).

* **CPU :** AMD Ryzen 7 9850X3D *(gaming pur)* ou Ryzen 9 9950X3D *(gaming + workstation)*
* **GPU :** NVIDIA GeForce **RTX 5090 (32 Go GDDR7)**
* **RAM :** 64 Go (2×32 Go) DDR5-6000 CL30
* **Stockage :** 2 To + 2 To (ou 4 To) NVMe PCIe 4.0/5.0
* **Alimentation :** **1000 W à 1200 W — 80+ Platinum (ATX 3.1)** obligatoire
* **Refroidissement :** Watercooling AIO 360 mm + boîtier grand format très ventilé

---

## 🖥️ Quel écran associer à ta configuration ?

Ne gâche pas un PC à 1 600 € sur un vieil écran 1080p 60 Hz !

| Config visée | Définition idéale | Fréquence recommandée | Taille confortable |
| :--- | :--- | :--- | :--- |
| **Config 1 (Essentielle)** | **1080p (Full HD)** | `144 Hz` à `180 Hz` | 24 pouces |
| **Config 2 (Sweet Spot)** | **1440p (QHD)** | `144 Hz` à `240 Hz` | 27 pouces *(ou 34" Ultrawide)* |
| **Config 3 & 4 (Haut de gamme)** | **1440p 240Hz+** ou **4K (UHD)** | `144 Hz` à `240 Hz` *(OLED ou IPS rapide)* | 27 à 32 pouces |

---

## ✅ Dernières vérifications avant de passer commande

1. **Socket & RAM :** Carte mère **AM5** = **DDR5** uniquement *(jamais de DDR4)*. Voir le [Chapitre 01](../guide/01-composants-compatibilite.md).
2. **Dimensions physiques :** Vérifie 3 chiffres sur la fiche technique de ton boîtier :
   * Longueur max du GPU *(ex : 340 mm)* ;
   * Hauteur max du ventirad *(ex : 165 mm)* ou taille max de radiateur AIO *(240 / 360 mm)* ;
   * Longueur max de l'alimentation.
3. **Doute sur un panier ?** Ouvre une Issue avec notre modèle [`demande-aide-config.yml`](../.github/ISSUE_TEMPLATE/demande-aide-config.yml) pour obtenir un avis avant d'acheter !

---

<div align="center">

[⬅️ Retour au Sommaire](../README.md) • [🧮 Calculateur Budget & PSU](./calculateur-budget-puissance.md) • [✅ Ouvrir la Checklist](../CHECKLIST.md)

</div>
