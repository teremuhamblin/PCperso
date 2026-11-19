#!/usr/bin/env bash
set -euo pipefail

# ==============================================================================
# Script de création des Labels et PULL_REQUEST_TEMPLATE pour PCperso
# Prérequis : GitHub CLI (gh) installé et authentifié (`gh auth login`)
# ==============================================================================

REPO="teremuhamblin/PCPperso"   # Vérifie si ton dépôt s'écrit PCPperso ou PCperso
BRANCH="main"

echo "🚀 Configuration des Pull Request Templates sur : $REPO (branche : $BRANCH)"

# 1. Création / mise à jour des Labels utilisés dans les PR
echo "🏷️  Vérification des labels..."
gh label create "documentation" --repo "$REPO" --color "0075ca" --description "Guides, fiches composants et architecture" --force
gh label create "data"          --repo "$REPO" --color "1d76db" --description "Données composants, JSON, tarifs et TDP" --force
gh label create "compatibilité" --repo "$REPO" --color "d93f0b" --description "Règles matérielles et contraintes physiques" --force
gh label create "feature"       --repo "$REPO" --color "0e8a16" --description "Nouvelles fonctionnalités et outils" --force
gh label create "refactoring"   --repo "$REPO" --color "fbca04" --description "Nettoyage, refonte et optimisation" --force
gh label create "bug"           --repo "$REPO" --color "d73a4a" --description "Correction d'erreur ou lien cassé" --force

# 2. Fonction utilitaire pour créer ou mettre à jour un fichier via l'API GitHub
upload_pr_template() {
  local file_path="$1"
  local commit_msg="$2"
  local encoded
  encoded=$(base64 | tr -d '\n\r')

  local sha
  sha=$(gh api "repos/$REPO/contents/$file_path?ref=$BRANCH" --jq '.sha // empty' 2>/dev/null || true)

  if [[ "$sha" =~ ^[0-9a-f]{40}$ ]]; then
    printf '%s' "$encoded" | gh api -X PUT "repos/$REPO/contents/$file_path" \
      -f message="$commit_msg" \
      -f branch="$BRANCH" \
      -f sha="$sha" \
      -F content=@- > /dev/null
    echo "🔄 Template mis à jour : $file_path"
  else
    printf '%s' "$encoded" | gh api -X PUT "repos/$REPO/contents/$file_path" \
      -f message="$commit_msg" \
      -f branch="$BRANCH" \
      -F content=@- > /dev/null
    echo "✅ Template créé : $file_path"
  fi
}

echo "📝 Déploiement des Pull Request Templates..."

# --- Template par défaut (avec sélecteur manuel via l'onglet Preview) ---
upload_pr_template ".github/PULL_REQUEST_TEMPLATE.md" "docs(github): ajout du template PR par défaut" << 'EOF'
<!--
Astuce : Tu peux choisir un modèle spécialisé en passant dans l'onglet "Preview" puis en cliquant sur un lien ci-dessous :
-->
> **Modèles spécialisés disponibles (via l'onglet *Preview*) :**
> [📚 Documentation](?expand=1&template=documentation.md) • [🧩 Composant & Compatibilité](?expand=1&template=composant_compatibilite.md) • [✨ Feature / Bugfix](?expand=1&template=feature_fix.md)

---

## 📝 Description
<!-- Résume clairement les modifications apportées par cette Pull Request et leur objectif. -->


## 🔗 Issue liée
<!-- Remplace #XX par le numéro de l'issue concernée (ex : Closes #12). -->
- Closes #

## 🏷️ Type de modification
<!-- Coche une ou plusieurs cases avec [x] -->
- [ ] 📚 Documentation / Guide (`guide/`, `README.md`, `ROADMAP.md`…)
- [ ] 🧩 Fiche composant / Outil / Compatibilité (`outils/`, TDP, dimensions…)
- [ ] ✨ Nouvelle fonctionnalité / Script (`scripts/`, comparateur, v2.0…)
- [ ] 🐛 Correction d'erreur / lien mort / coquille
- [ ] ♻️ Refactorisation / nettoyage du dépôt

## 🔍 Détails des changements
<!-- Liste les principaux fichiers modifiés ou ajoutés. -->
- 

## ✅ Check-list avant fusion (Merge)
- [ ] Le texte est clair, structuré et sans faute majeure.
- [ ] Les valeurs techniques (Socket, DDR5, ATX 3.1 / `12V-2x6`, TDP, dimensions…) ont été vérifiées.
- [ ] Les liens internes Markdown et diagrammes Mermaid fonctionnent.
- [ ] Le `CHANGELOG.md` / `ROADMAP.md` est à jour si nécessaire.
EOF

# --- Template spécialisé : Documentation ---
upload_pr_template ".github/PULL_REQUEST_TEMPLATE/documentation.md" "docs(github): ajout du template PR documentation" << 'EOF'
## 📚 Modification de documentation
<!-- Quel guide ou quelle fiche est concerné(e) ? -->
- **Fichier(s) modifié(s)** : 
- **Issue liée** : Closes #

## 🎯 Ce qui a été amélioré / ajouté
- [ ] Nouveau chapitre ou nouvelle section (`guide/`)
- [ ] Simplification / vulgarisation des explications
- [ ] Correction de faute, coquille ou lien mort
- [ ] Mise à jour de `README.md` / `ROADMAP.md` / `CHANGELOG.md`

## ✅ Check-list Documentation
- [ ] Le vocabulaire technique est expliqué pour un débutant.
- [ ] Le sommaire, les ancres HTML/Markdown et les tableaux s'affichent correctement.
- [ ] Aucun lien cassé en aperçu GitHub.
EOF

# --- Template spécialisé : Composant & Compatibilité ---
upload_pr_template ".github/PULL_REQUEST_TEMPLATE/composant_compatibilite.md" "docs(github): ajout du template PR composant et compatibilité" << 'EOF'
## 🧩 Mise à jour Composants / Compatibilité / Outils
- **Élément(s) concerné(s)** : <!-- ex : AM5 B850, LGA 1851, RTX 5070, PSU ATX 3.1, BTF -->
- **Issue liée** : Closes #

## 📋 Nature de la modification
- [ ] Ajout / mise à jour d'une fiche ou configuration type (`outils/configs-types.md`)
- [ ] Ajout / correction d'une règle de compatibilité (`outils/verificateur-compatibilite-2026.md`)
- [ ] Mise à jour budget / tarif / TDP (`calculateur-budget-puissance.md`, `modele-config-budget.csv`)
- [ ] Vérification des contraintes physiques (mm, flux d'air, `12V-2x6`, Back-Connect)

## 🔎 Sources & Vérifications
<!-- Lien vers les fiches constructeurs utilisées pour vérifier les caractéristiques. -->
- Source(s) : 

## ✅ Check-list Matériel
- [ ] Les normes exactes sont respectées (Socket, DDR5, ATX/mATX/ITX, ATX 3.1 / `12V-2x6`…).
- [ ] Les configurations types impactées restent 100 % compatibles.
- [ ] Le fichier `.csv` garde bien la virgule `,` comme séparateur et des formules valides.
EOF

# --- Template spécialisé : Feature ou Bugfix ---
upload_pr_template ".github/PULL_REQUEST_TEMPLATE/feature_fix.md" "docs(github): ajout du template PR feature et fix" << 'EOF'
## ✨ Feature ou Correction technique
- **Issue liée** : Closes #

## 🏷️ Type
- [ ] ✨ Nouvelle fonctionnalité (outil, script PowerShell, comparateur, export, v2.0…)
- [ ] 🐛 Correction de bug / d'affichage Mermaid / de script
- [ ] ♻️ Refactorisation / nettoyage

## 📝 Résumé des changements
<!-- Explique ce qui a été ajouté ou corrigé. -->


## 🧪 Comment tester / vérifier
1. 
2. 

## ✅ Check-list Technique
- [ ] Les scripts / codes s'exécutent sans erreur (aucune commande dangereuse ou non documentée).
- [ ] Le rendu GitHub (Markdown, Mermaid, CSV) a été vérifié.
- [ ] La documentation associée a été mise à jour.
EOF

echo "🎉 Terminé ! Les Pull Request Templates sont en ligne sur https://github.com/$REPO/tree/$BRANCH/.github"
