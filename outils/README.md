# 🛠️ Outils
- Fiches Pratiques
- PCperso (`v2.1 Candidate`)

Ce dossier regroupe les **outils prêts à l'emploi**, **matrices de compatibilité 2026** et **fiches réflexes** pour accompagner les chapitres théoriques du dossier [`guide/`](../guide/). Chaque fichier est conçu pour être utilisé directement avant, pendant ou après l'assemblage — ou lors d'un upgrade.
```text
outils/
├── README.md                          # [Mis à jour] Index v2.1 + parcours guidé
├── calculateur-budget-puissance.md    # [Mis à jour] Calcul PSU ATX 3.1 & TDP 2026
├── modele-config-budget.csv           # [Mis à jour] Tableur CSV complet (TDP, 12V-2x6, BTF, Budget)
├── fiche-memo-cablage-et-debug.md     # [Mis à jour] Mémo 1 page (12V-2x6, Back-Connect, DDR5 Training)
├── configs-types.md                   # [Nouveau / Intégré] Configs types 2026 (1080p / 1440p / 4K / SFF)
├── verificateur-compatibilite-2026.md # [Nouveau] Matrice AM5/LGA1851, BTF/Stealth, DisplayPort 2.1
└── guide-upgrade-pc.md                # [Nouveau] Méthode d'upgrade sans goulot d'étranglement
```

## 📂 Contenu du dossier

| Fichier | Type | À utiliser quand ? | Description |
| :--- | :---: | :--- | :--- |
| [**`configs-types.md`**](./configs-types.md) | 🎯 Référentiel 2026 | **Avant sélection** | Configurations types équilibrées (`1080p`, `1440p`, `4K`, `Compact/BTF`) basées sur les gammes 2026. |
| [**`verificateur-compatibilite-2026.md`**](./verificateur-compatibilite-2026.md) `v2.1` | 🧩 Matrice & Check | **Avant l'achat** | Vérification rapide chipsets (`B850`/`X870`/`B860`/`Z890`), RAM DDR5, boîtiers **Back-Connect** et écrans. |
| [**`calculateur-budget-puissance.md`**](./calculateur-budget-puissance.md) | 🧮 Guide & Formule | **Avant l'achat** | Dimensionnement **ATX 3.1 / `12V-2x6`** (TDP + pics transitoires) et répartition optimale du budget. |
| [**`modele-config-budget.csv`**](./modele-config-budget.csv) | 📊 Tableur CSV | **Avant l'achat** | Tableau pré-rempli avec formules pour suivre tes pièces, normes, watts (`W`) et dépenses réelles. |
| [**`fiche-memo-cablage-et-debug.md`**](./fiche-memo-cablage-et-debug.md) | 🔖 Fiche 1 page | **Montage & 1er boot** | Synthèse des connecteurs (`CPU 4+4`, `PCIe 6+2`, `12V-2x6`, Back-Connect) + arbre *No-POST* / DDR5. |
| [**`guide-upgrade-pc.md`**](./guide-upgrade-pc.md) `v2.1` | 🚀 Évolutivité | **PC déjà monté** | Diagnostic de goulot d'étranglement et plan d'upgrade sans incompatibilité cachée. |

---

## 🧭 Comment bien utiliser ces outils ?

### 1. En phase de préparation (Avant de commander)
* Lis d'abord [`01-composants-compatibilite.md`](../guide/01-composants-compatibilite.md) puis choisis une base dans [`configs-types.md`](./configs-types.md).
* Croise tes choix avec [`verificateur-compatibilite-2026.md`](./verificateur-compatibilite-2026.md) *(notamment si tu vises une carte mère BTF / Project Zero / Stealth ou du PCIe 5.0)*.
* Dimensionne ton alimentation avec [`calculateur-budget-puissance.md`](./calculateur-budget-puissance.md) et suis ton panier dans [`modele-config-budget.csv`](./modele-config-budget.csv) :
  * *Astuce d'import :* le séparateur utilisé est la **virgule (`,`)** pour un affichage natif sur GitHub et un import direct dans **Excel**, **LibreOffice Calc** ou **Google Sheets**.

### 2. Le jour du montage (Sur la table de travail)
* Garde la [`CHECKLIST.md`](../CHECKLIST.md) sous les yeux pour suivre l'ordre exact des étapes.
* Ouvre [`fiche-memo-cablage-et-debug.md`](./fiche-memo-cablage-et-debug.md) pour vérifier en un coup d'œil les connecteurs (`CPU 4+4` vs `PCIe 6+2`, `12V-2x6`, câbles arrière Back-Connect) en complément du chapitre [`03-assemblage-et-cablage.md`](../guide/03-assemblage-et-cablage.md).

### 3. Si le PC ne démarre pas ou pour un futur upgrade
* Vérifie d'abord l'arbre de diagnostic express *(y compris le temps d'apprentissage mémoire DDR5)* dans [`fiche-memo-cablage-et-debug.md`](./fiche-memo-cablage-et-debug.md).
* Si le problème persiste, consulte [`06-diagnostic-et-pannes.md`](../guide/06-diagnostic-et-pannes.md).
* Pour faire évoluer une machine existante, suis la méthode de [`guide-upgrade-pc.md`](./guide-upgrade-pc.md).

> [!TIP]
> **Conseil pratique :** Avant de couper ton ancien PC ou d'ouvrir tes boîtes, garde la **fiche mémo** et la **checklist** ouvertes sur ton téléphone (ou imprimées) pour rester autonome même sans affichage !

---

## 🔗 Aller plus loin
* [⬅️ Retour à l'accueil du projet (`README.md`)](../README.md)
* [⚙️ Scripts d'installation automatique post-montage (`scripts/`)](../scripts/README.md)
