###### STRUCTURE.md >> markdown

# PCperso
### L'arborescence du dépôt
- 》》 **v1.1**
Sur GitHub.

Les fichiers .md (**Markdown**) s'affichent directement comme des pages web propres et navigables.
- Pas besoin de site web complexe pour commencer.

### Structure

```text
PCperso/
├── README.md                                  # Page d'accueil et sommaire (à mettre à jour pour v1.1)
├── CHECKLIST.md                               # Liste interactive (cases à cocher) pour le jour J
├── CHANGELOG.md                               # [NOUVEAU] Historique des versions (v1.0 -> v1.1)
├── CONTRIBUTING.md                            # [NOUVEAU] Guide de contribution au projet
├── LICENSE                                    # Licence (ex: CC-BY-NC-SA pour protéger ton texte)
├── .github/                                   # Fichiers de gouvernance
│   └── ISSUE_TEMPLATE/
│       └── demande-aide-config.yml            # [NOUVEAU] Formulaire d'entraide config & pannes
├── assets/                                    # Tes schémas, photos de connecteurs et illustrations
├── guide/                                     # Les chapitres du livre
│   ├── 01-composants-compatibilite.md
│   ├── 02-preparation-et-connecteurs.md
│   ├── 03-assemblage-et-cablage.md
│   ├── 04-bios-uefi-et-xmp-expo.md
│   ├── 05-windows-pilotes-et-tests.md
│   ├── 06-diagnostic-et-pannes.md
│   └── 07-glossaire-hardware.md               # [NOUVEAU] Dictionnaire des termes techniques
├── outils/                                    # [NOUVEAU] Fiches pratiques & calculateurs
│   ├── calculateur-budget-puissance.md        # [NOUVEAU] Calcul de l'alimentation (TDP) & budget
│   ├── modele-config-budget.csv               # [NOUVEAU] Tableau compatible GitHub / Excel / Sheets
│   └── fiche-memo-cablage-et-debug.md         # [NOUVEAU] Fiche réflexe 1 page (câbles + Mermaid)
└── scripts/                                   # [NOUVEAU] Automatisation post-montage
    ├── README.md                              # [NOUVEAU] Mode d'emploi sécurisé du script
    └── pack-logiciels-pc-neuf.ps1             # [NOUVEAU] Installation auto des outils via Winget
```
