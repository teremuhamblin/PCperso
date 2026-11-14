# 🧮 Calculateur de Budget & Puissance d'Alimentation (PSU)

Avant d'acheter tes composants, utilise cette méthode rapide pour t'assurer que ton alimentation est correctement dimensionnée et que ton budget reste maîtrisé.

---

## ⚡ Formule pour choisir la puissance de l'alimentation

Une alimentation travaille de façon optimale (meilleur rendement énergétique, moins de bruit et plus de longévité) lorsqu'elle est utilisée entre **50 % et 75 %** de sa capacité maximale.

1. Additionne la consommation maximale estimée du **CPU** (en charge turbo, souvent indiquée sous le nom `PPT` ou `PL2`) et du **GPU** (`TGP` / `TBP`).
2. Ajoute **100 W** pour le reste du PC (carte mère, RAM, SSD, ventilateurs, RGB, périphériques USB).
3. Multiplie le total par **1,25** (marge de sécurité de 25 % pour absorber les pics de consommation transitoires).

$$\text{Puissance PSU recommandée} = (\text{Conso CPU} + \text{Conso GPU} + 100\text{ W}) \times 1{,}25$$

### Repères rapides par gamme
| Type de PC | Puissance recommandée | Exemple d'usage |
| :--- | :---: | :--- |
| **Bureautique / Sans carte graphique dédiée** | `400 W – 500 W` | Web, bureautique, multimédia |
| **Gaming Entrée / Milieu de gamme** | `550 W – 650 W` | Jeu en 1080p / 1440p équilibré |
| **Gaming Haut de gamme / Création 3D** | `750 W – 850 W` | Jeu 1440p / 4K, montage vidéo |
| **Station de travail extrême** | `1000 W+` | GPU très haut de gamme + gros CPU |

---

## 📊 Utiliser le modèle CSV

Le fichier [`modele-config-budget.csv`](./modele-config-budget.csv) situé dans ce même dossier est pré-formaté pour te permettre de lister tes pièces.

- **Sur GitHub :** Clique simplement dessus pour l'afficher sous forme de tableau propre.
- **Dans Excel / LibreOffice Calc / Google Sheets :** Télécharge le fichier `.csv` et importe-le (séparateur : **virgule `,`**) pour utiliser les formules `=SOMME(...)` sur les colonnes **Prix** et **Puissance**.

> [!TIP]
> Pour un PC orienté **Jeu Vidéo**, une bonne règle de répartition du budget consiste à consacrer environ **35 % à 45 %** du budget total à la carte graphique, et **15 % à 25 %** au processeur.
