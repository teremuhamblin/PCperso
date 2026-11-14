# 🛠️ Outils & Fiches Pratiques — PCperso

Ce dossier regroupe les **outils prêts à l'emploi** et **fiches réflexes** pour accompagner les chapitres théoriques du dossier [`guide/`](../guide/). Chaque fichier est conçu pour être utilisé directement avant, pendant ou juste après l'assemblage de ton PC.

---

## 📂 Contenu du dossier

| Fichier | Type | À utiliser quand ? | Description |
| :--- | :---: | :--- | :--- |
| [**`calculateur-budget-puissance.md`**](./calculateur-budget-puissance.md) | 🧮 Guide & Formule | **Avant l'achat** | Méthode simple pour calculer la puissance idéale de ton alimentation (TDP + marge de sécurité) et répartir ton budget. |
| [**`modele-config-budget.csv`**](./modele-config-budget.csv) | 📊 Tableur | **Avant l'achat** | Tableau pré-rempli avec formules pour suivre tes composants, leurs consommations (W) et tes dépenses réelles. |
| [**`fiche-memo-cablage-et-debug.md`**](./fiche-memo-cablage-et-debug.md) | 🔖 Fiche 1 page | **Pendant le montage & 1er boot** | Synthèse visuelle des câbles d'alimentation à ne pas confondre + arbre de diagnostic rapide (EZ Debug LEDs). |

---

## 🧭 Comment bien utiliser ces outils ?

### 1. En phase de préparation (Avant de commander)
* Lis d'abord [`01-composants-compatibilite.md`](../guide/01-composants-compatibilite.md).
* Ouvre [`calculateur-budget-puissance.md`](./calculateur-budget-puissance.md) pour dimensionner ton alimentation sans te tromper.
* Télécharge [`modele-config-budget.csv`](./modele-config-budget.csv) et ouvre-le dans **Excel**, **LibreOffice Calc** ou **Google Sheets** :
  * *Astuce d'import :* le séparateur utilisé est la **virgule (`,`)** afin que le tableau s'affiche aussi proprement directement sur GitHub.

### 2. Le jour du montage (Sur la table de travail)
* Garde la [`CHECKLIST.md`](../CHECKLIST.md) sous les yeux pour suivre l'ordre exact des étapes.
* Ouvre [`fiche-memo-cablage-et-debug.md`](./fiche-memo-cablage-et-debug.md) pour vérifier en un coup d'œil les connecteurs (`CPU 4+4` vs `PCIe 6+2`, `12V-2x6`, etc.) en complément du chapitre [`03-assemblage-et-cablage.md`](../guide/03-assemblage-et-cablage.md).

### 3. Si le PC ne démarre pas du premier coup
* Consulte l'arbre de diagnostic express dans [`fiche-memo-cablage-et-debug.md`](./fiche-memo-cablage-et-debug.md).
* Si le problème persiste, passe au guide complet [`06-diagnostic-et-pannes.md`](../guide/06-diagnostic-et-pannes.md).

> [!TIP]
> **Conseil pratique :** Avant de démonter ton ancien ordinateur ou de commencer l'assemblage, pense à **imprimer** la fiche mémo (ou à l'ouvrir sur ton téléphone) afin d'y avoir accès même si ton nouveau PC n'affiche pas encore d'image !

---

## 🔗 Aller plus loin
* [⬅️ Retour à l'accueil du projet (`README.md`)](../README.md)
* [⚙️ Découvrir les scripts d'installation automatique post-montage (`scripts/`)](../scripts/README.md)
