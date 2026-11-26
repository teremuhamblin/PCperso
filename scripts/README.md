# ⚙️ PCperso — Index des scripts

Ce dossier contient des scripts d’aide à l’installation de logiciels sur Windows et des scripts de maintenance GitHub. **Lis chaque fichier et vérifie les commandes, les sources et le dépôt cible avant exécution.**

## Fichiers présents

| Script | Usage déclaré | Précaution |
|:--|:--|:--|
| [`pack_logiciels_pc_neuf.ps1`](./pack_logiciels_pc_neuf.ps1) | Automatisation d’installation de logiciels sur Windows via WinGet. | Examine le code, la liste des paquets, les options et privilèges avant de lancer. Utilise le mode simulation lorsqu’il est disponible et vérifie son comportement dans le script. |
| [`setup_issue.sh`](./setup_issue.sh) | Automatisation de configuration GitHub (issues, labels ou milestones selon le script). | Lis le script, contrôle le dépôt cible, l’état des ressources existantes et les autorisations `gh`. Toute écriture distante peut modifier le dépôt. |
| [`setup_pr_templates.sh`](./setup_pr_templates.sh) | Automatisation de modèles de Pull Request. | Vérifie les chemins, la cible GitHub et les changements effectués avant lancement. |

## Outils de développement

- **PowerShell et WinGet** sont requis pour le script Windows.
- **Bash et GitHub CLI (`gh`)** peuvent être nécessaires aux scripts de maintenance GitHub.
- N’utilise pas d’option d’exécution ou d’élévation globale uniquement pour contourner un avertissement.
- Ne lance pas un script distant directement depuis une commande réseau sans l’avoir téléchargé, lu et vérifié.

> [!CAUTION]
> Les scripts ont des effets potentiels sur le PC local ou le dépôt GitHub. La présence d’un fichier dans ce dépôt ne constitue pas un audit de sécurité ni une garantie de fonctionnement. Vérifie les sources des paquets et obtiens une sauvegarde adaptée avant toute opération importante.

**Navigation :** [README principal](../README.md) · [Outils](../outils/README.md) · [Checklist](../CHECKLIST.md)
