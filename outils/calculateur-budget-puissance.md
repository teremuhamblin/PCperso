# 🧮 Calculateur Budget & Dimensionnement PSU (Standards 2026)

Ce guide te permet de **calculer précisément la puissance de ton alimentation (PSU)** selon les normes récentes (**ATX 3.1 / PCIe 5.1**) et de **répartir ton budget** sans gaspiller sur des composants secondaires.

---

## ⚡ 1. Calculer la puissance d'alimentation idéale (ATX 3.1)

Les cartes graphiques modernes génèrent de très brefs **pics de consommation (pics transitoires)** bien supérieurs à leur TDP moyen. C'est pourquoi une alimentation **ATX 3.1** certifiée (capable d'absorber ces pics) avec marge de sécurité est indispensable.

### Formule recommandée
$$\text{Puissance PSU (W)} = (\text{Conso max CPU} + \text{TDP GPU} + 100\text{ W système}) \times 1{,}30$$

> *Pourquoi `100 W système` ?* Cela couvre la carte mère (VRM + chipset), la RAM DDR5, 1 à 2 SSD NVMe PCIe 4.0/5.0, les ventilateurs / pompe AIO et les périphériques USB alimentés (USB-C / USB4).  
> *Pourquoi `× 1,30` (+30 % de marge) ?* Pour absorber les pics transitoires, rester dans la zone de rendement optimal (50–70 % de charge), réduire le bruit du ventilateur et prévoir un futur upgrade.

---

### Repères de consommation 2026 (valeurs types)

#### Cartes graphiques (GPU)
| Gamme GPU 2026 | TDP indicatif | Connecteur principal | PSU ATX 3.1 recommandée |
| :--- | :---: | :--- | :---: |
| **Entrée / 1080p** *(RTX 5060, RX 9060 XT, RX 7600)* | 145 – 190 W | 1 × PCIe 8-pin | **550 W – 650 W** |
| **Milieu / 1440p** *(RTX 5060 Ti 16G, RTX 5070, RX 9070)* | 180 – 250 W | 1 × 8-pin ou `12V-2x6` | **650 W – 750 W** |
| **Haut de gamme / 1440p Ultra & 4K** *(RTX 5070 Ti, RX 9070 XT, RTX 5080)* | 300 – 360 W | `12V-2x6` ou 2-3 × 8-pin | **850 W** |
| **Enthousiaste / 4K Extrême** *(RTX 5090, RX 9090 XT)* | 450 – 575+ W | `12V-2x6` (600 W natif) | **1000 W – 1200 W** |

#### Processeurs (CPU) — Consommation réelle en charge
| Gamme CPU | Consommation en jeu | Pic maximal (rendu / stress) |
| :--- | :---: | :---: |
| **Ryzen 5 / Ryzen 7 X3D** *(ex. 9600X, 7800X3D, 9800X3D)* | 55 – 95 W | 90 – 145 W |
| **Ryzen 9** *(ex. 9900X, 9950X, 9950X3D)* | 90 – 140 W | 170 – 230 W |
| **Intel Core Ultra 5 / Ultra 7 (LGA 1851)** | 70 – 130 W | 160 – 250 W |
| **Intel Core Ultra 9 (LGA 1851)** | 100 – 160 W | 250+ W |

---

### Check-list qualité avant d'acheter la PSU
- [ ] Norme **ATX 3.1** (ou ATX 3.0 minimum) avec câble **`12V-2x6` natif** si ton GPU l'utilise *(évite les adaptateurs multi-8-pin encombrants)*.
- [ ] Certification **80+ Gold** minimum (ou Cybenetics Gold/Platinum) et **Full Modulaire**.
- [ ] Longueur de la PSU compatible avec la cage HDD/câbles de ton boîtier (surtout en Mini-ITX / mATX compact).

---

## 💰 2. Répartition optimale du budget en 2026

Si ton budget est serré, priorise dans cet ordre : **GPU → CPU → RAM/SSD → Carte mère → PSU/Boîtier/Refroidissement**.

| Poste | Part conseillée | Erreur fréquente en 2026 | Bon réflexe |
| :--- | :---: | :--- | :--- |
| **GPU** | **38 – 42 %** | Prendre un GPU à 8 Go de VRAM pour du 1440p AAA. | Viser **12 à 16 Go de VRAM** dès le milieu de gamme. |
| **CPU** | **18 – 22 %** | Surpayer un CPU 16 cœurs uniquement pour jouer. | Un 6 ou 8 cœurs moderne (ou X3D) suffit largement. |
| **Carte mère + RAM** | **16 – 18 %** | Acheter une X870E/Z890 hors de prix sans besoin d'USB4/multi-Gen5. | Une bonne **B850** ou **B860** offre les mêmes FPS en jeu. |
| **SSD NVMe** | **7 – 9 %** | Payer le surcoût d'un SSD PCIe 5.0 pour du gaming pur. | Un **PCIe 4.0 (2 To)** offre le meilleur rapport taille/prix. |
| **Alimentation (PSU)** | **7 – 9 %** | Prendre une PSU sans marque ou non ATX 3.1. | Modèle reconnu **ATX 3.1 / 80+ Gold**. |
| **Boîtier + Cooling** | **6 – 8 %** | Mettre 250 € dans un AIO avec écran LCD sur un CPU 65 W. | Un bon boîtier **Mesh** + ventirad double tour (~40 €). |

> 💡 Reporte tes choix directement dans [`modele-config-budget.csv`](./modele-config-budget.csv) pour obtenir ton total automatique en watts et en euros.
