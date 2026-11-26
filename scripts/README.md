# PCperso — Index des scripts

Le dossier contient un script PowerShell d’installation de logiciels Windows ainsi que des scripts Bash de maintenance GitHub. Consulte les sources et paramètres avant utilisation.

| Fichier | Usage décrit | Contrôles avant exécution |
|:--|:--|:--|
| [`pack_logiciels_pc_neuf.ps1`](./pack_logiciels_pc_neuf.ps1) | Automatisation d’installation via WinGet. | Lire le script, vérifier les identifiants de paquets et privilèges, utiliser le mode simulation s’il est disponible et vérifier les changements proposés. |
| [`setup_issue.sh`](./setup_issue.sh) | Automatisation de ressources GitHub selon son code. | Vérifier le dépôt cible, les ressources existantes, les permissions du compte et les effets des appels `gh`. |
| [`setup_pr_templates.sh`](./setup_pr_templates.sh) | Automatisation de modèles de Pull Request selon son code. | Vérifier les chemins de destination, le dépôt cible et les changements distants/localement écrits. |

## Principes de sécurité

- Lis le script complet avant exécution ; ne te fie pas uniquement à cette description.
- Vérifie toute source de téléchargement et chaque identifiant de paquet.
- N’accorde que les privilèges nécessaires et évite les contournements globaux de sécurité.
- Les scripts `gh` peuvent écrire dans un dépôt distant : confirme leur cible et inspecte l’état actuel avant de les lancer.
- N’exécute jamais directement depuis le réseau un script que tu n’as pas téléchargé et examiné.

Les paramètres et les fonctions réellement disponibles sont ceux du code source du script, pas ceux d’un exemple de documentation.

**Navigation :** [README principal](../README.md) · [Outils](../outils/README.md) · [Checklist](../CHECKLIST.md)
