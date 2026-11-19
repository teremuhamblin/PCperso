# 🧩 Vérificateur de Compatibilité Rapide — Standards 2026

Passe cette matrice en revue **juste avant de valider ton panier** pour éviter 100 % des retours SAV liés à une incompatibilité.

---

## 1. Plateformes CPU, Chipsets & Mémoire (2026)

### AMD Socket **AM5** *(Ryzen 7000, 8000, 9000 & X3D)*
| Chipset | GPU PCIe 5.0 | SSD M.2 PCIe 5.0 | USB4 (40 Gbps) | Pour qui ? |
| :--- | :---: | :---: | :---: | :--- |
| **B650** | Optionnel | Optionnel | Non (rare) | Petit budget AM5 *(vérifier BIOS prêt pour Ryzen 9000)* |
| **B850** | Optionnel (selon modèle) | **Obligatoire (×1)** | Optionnel | **90 % des gamers** : meilleur rapport prix/équipement |
| **X870** | **Obligatoire** | **Obligatoire** | **Obligatoire** | Besoin d'USB4, PCIe 5.0 garanti et connectique riche |
| **X870E** | **Obligatoire** | **Obligatoire (multi)** | **Obligatoire** | Créateurs / Enthusiastes *(nombreux SSD + cartes PCIe)* |

### Intel Socket **LGA 1851** *(Core Ultra Series 2 / 200S)*
| Chipset | Overclocking CPU | Mémoire DDR5 / CUDIMM | Pour qui ? |
| :--- | :---: | :---: | :--- |
| **B860** | Non (RAM uniquement) | DDR5 *(jusqu'à ~8000+ MT/s selon carte)* | Gamers & usages polyvalents |
| **Z890** | **Oui** | DDR5 & **CUDIMM** haute fréquence | Overclocking, USB4/Thunderbolt 4 et multi-M.2 |

> ⚠️ **Règle DDR5 vs CUDIMM :**  
> Utilise toujours **2 barrettes** (`A2 + B2`) plutôt que 4 barrettes en DDR5 (4 barrettes forcent souvent à baisser drastiquement la fréquence). Les barrettes **CUDIMM** (avec puce d'horloge CKD) sont surtout utiles sur Intel LGA 1851 à très haute fréquence (> 7200 MT/s) ; sur **AMD AM5**, reste sur de la **DDR5-6000 CL30** classique avec profil **EXPO**.

---

## 2. Compatibilité Boîtier **Back-Connect** (BTF / Project Zero / Stealth)

Les cartes mères à connecteurs arrière n'ont pas toutes les découpes exactement au même millimètre :

- [ ] Si j'achète une **ASUS BTF**, mon boîtier mentionne explicitement **`ASUS BTF`**.
- [ ] Si j'achète une **MSI Project Zero**, mon boîtier mentionne explicitement **`MSI Project Zero`** *(et correspond au bon format ATX ou mATX)*.
- [ ] Si j'achète une **GIGABYTE Project Stealth**, mon boîtier mentionne explicitement **`GIGABYTE Stealth`**.
- [ ] *Note :* Les boîtiers récents multi-standards listent souvent les 3 noms sur leur fiche produit. Sans cette mention, **n'achète pas de carte mère Back-Connect**.

---

## 3. Contraintes Physiques & Thermiques (en mm)

| Contrôle à faire | Valeur de ta pièce | Valeur max du boîtier | Marge conseillée |
| :--- | :---: | :---: | :--- |
| **Longueur GPU** | `___ mm` | `___ mm` | Garder **≥ 15–20 mm** (surtout si radiateur AIO en façade). |
| **Largeur GPU + câble `12V-2x6`** | Hauteur GPU + **35 mm** | Hauteur max ventirad boîtier | Le câble `12V-2x6` ne doit **jamais être écrasé** contre la vitre latérale ! |
| **Hauteur Ventirad** | `___ mm` | `___ mm` | Garder **≥ 5 mm** de marge sous le verre trempé. |
| **Radiateur AIO** | `240` / `280` / `360 mm` | Emplacement Haut / Façade | Vérifier l'épaisseur totale (radiateur + ventilateurs ~55 mm) face aux dissipateurs RAM/VRM. |
| **SSD NVMe PCIe 5.0** | M.2 2280 Gen 5 | Dissipateur carte mère | **Dissipateur thermique obligatoire** (sinon bridage thermique rapide). |

---

## 4. Écran, Câble Vidéo & Réseau (2026)

* **Écran 1440p / 4K à 240–360 Hz (OLED / IPS) :** vérifie que ton câble **DisplayPort 1.4 (avec DSC)** ou **DisplayPort 2.1 (UHBR)** / **HDMI 2.1** est bien certifié et fourni avec l'écran.
* **Wi-Fi 7 :** disponible en natif sur de nombreuses cartes **B850 / X870 / B860 / Z890** — nécessite **Windows 11 (24H2 ou supérieur)** pour exploiter pleinement la bande 6 GHz / MLO.
