# PCperso — Structure du dépôt

Cette page décrit les principaux dossiers actuellement présents. Les noms et chemins réellement suivis par Git font autorité si ce document diverge de l’arborescence.

```text
PCperso/
├── .github/
│   ├── ISSUE_TEMPLATE/
│   ├── PULL_REQUEST_TEMPLATE/
│   ├── CODE_OF_CONDUCT.md
│   ├── CONTRIBUTING.md
│   ├── FUNDING.yml
│   ├── PULL_REQUEST_TEMPLATE.md
│   └── SUPPORT.md
├── assets/
│   ├── banner.svg
│   ├── logo.svg
│   └── README.md
├── docs/
│   ├── ASSEMBLAGES.md
│   ├── CHANGELOG.md
│   ├── README.md
│   ├── ROADMAP.md
│   ├── STRUCTURE.md
│   └── TASKS.md
├── guide/
│   ├── 01-composants-compatibilite.md
│   ├── 02-preparation-et-connecteurs.md
│   ├── 03-assemblage-et-cablage.md
│   ├── 04-bios-uefi-et-xmp-expo.md
│   ├── 05-windows-pilotes-et-tests.md
│   ├── 06-diagnostic-et-pannes.md
│   ├── 07-glossaire-hardware.md
│   ├── 08-refroidissement-et-entretien.md
│   └── README.md
├── outils/
│   ├── calculateur-budget-puissance.md
│   ├── configs-types.md
│   ├── fiche-memo-cablage-et-debug.md
│   ├── guide-upgrade-pc.md
│   ├── modele-config-budget.csv
│   ├── README.md
│   └── verificateur-compatibilite-2026.md
├── scripts/
│   ├── pack_logiciels_pc_neuf.ps1
│   ├── README.md
│   ├── setup_issue.sh
│   └── setup_pr_templates.sh
├── CHECKLIST.md
├── LICENSE
└── README.md
```

## Repères

| Chemin | Rôle |
|:--|:--|
| `README.md` | Point d’entrée, navigation et liens rapides. |
| `guide/` | Huit chapitres pédagogiques du choix des pièces à l’entretien. |
| `outils/` | Configurations, vérification, budget, fiches et upgrade. |
| `scripts/` | Script Windows et scripts de maintenance du dépôt. |
| `docs/` | Assemblage, suivi, historique, tâches et structure. |
| `.github/` | Modèles de demandes, contribution et support. |
| `assets/` | Logo et bannière SVG. |

> L’arborescence ci-dessus est un index de navigation, pas une garantie que chaque ressource est à jour ou validée techniquement.
