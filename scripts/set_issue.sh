#!/usr/bin/env bash
set -euo pipefail

# ==============================================================================
# Script de création des Labels, Milestones et Issues pour PCperso
# Prérequis : GitHub CLI (gh) installé et authentifié (`gh auth login`)
# ==============================================================================

REPO="teremuhamblin/PCPperso"

echo "🚀 Configuration du dépôt : $REPO"

# 1. Création / mise à jour des Labels
echo "🏷️  Création des labels..."
gh label create "documentation" --repo "$REPO" --color "0075ca" --description "Guides, fiches composants et architecture" --force
gh label create "data"          --repo "$REPO" --color "1d76db" --description "Données composants, JSON, tarifs et TDP" --force
gh label create "compatibilité" --repo "$REPO" --color "d93f0b" --description "Règles matérielles et contraintes physiques" --force
gh label create "feature"       --repo "$REPO" --color "0e8a16" --description "Nouvelles fonctionnalités et outils" --force
gh label create "refactoring"   --repo "$REPO" --color "fbca04" --description "Nettoyage, refonte et optimisation" --force

# 2. Fonction utilitaire pour créer un Milestone s'il n'existe pas
create_milestone() {
  local title="$1"
  local desc="$2"
  local exists
  exists=$(gh api "repos/$REPO/milestones?state=all&per_page=100" --jq ".[] | select(.title == \"$title\") | .title" || true)
  if [ -z "$exists" ]; then
    gh api "repos/$REPO/milestones" -X POST -f title="$title" -f description="$desc" > /dev/null
    echo "✅ Milestone créé : $title"
  else
    echo "ℹ️  Milestone déjà existant : $title"
  fi
}

echo "🎯 Création des milestones..."
create_milestone "v1.1" "Composants & Compatibilité de base"
create_milestone "v1.2" "Budget & Estimation électrique"
create_milestone "v1.3" "Refroidissement, Dimensions & Stockage"
create_milestone "v1.4" "Post-montage, BIOS & Dépannage"
create_milestone "v1.5" "Comparateur & Export"
create_milestone "v2.0" "Refonte majeure & Expérience interactive"

# 3. Fonction utilitaire pour créer une Issue
create_issue() {
  local title="$1"
  local milestone="$2"
  local labels="$3"
  gh issue create \
    --repo "$REPO" \
    --title "$title" \
    --milestone "$milestone" \
    --label "$labels" \
    --body-file -
  echo "📌 Issue créée : $title"
}

echo "📝 Création des issues..."

# --- v1.1 ---
create_issue "[v1.1] Standardiser et rédiger les fiches détaillées des composants" "v1.1" "documentation,data" << 'EOF'
### Objectif
Créer des fiches pédagogiques complètes et uniformes pour chaque composant principal d'un PC Gamer.

### Sous-tâches
- [ ] Définir un modèle unique de fiche composant (rôle, caractéristiques clés, pièges à éviter, critères de choix).
- [ ] Rédiger la fiche **CPU** (cœurs/threads, fréquence, cache, socket, TDP, iGPU).
- [ ] Rédiger la fiche **GPU** (VRAM, bus, résolution cible, connecteurs d'alimentation, longueur).
- [ ] Rédiger la fiche **Carte mère** (chipset, socket, VRM, slots RAM/M.2, format).
- [ ] Rédiger la fiche **RAM** (DDR4 vs DDR5, fréquence MT/s, latence CL, Dual Channel).
- [ ] Rédiger la fiche **Alimentation (PSU)** (puissance, certifications 80+, modularité, norme ATX 3.0/3.1).
- [ ] Rédiger la fiche **Boîtier** (format supporté, flux d'air, façade mesh, dégagements internes).

### Critère de validation
Les 6 fiches suivent la même structure et sont liées depuis l'index du projet.
EOF

create_issue "[v1.1] Documenter les règles de compatibilité essentielles" "v1.1" "documentation,compatibilité" << 'EOF'
### Objectif
Permettre de vérifier rapidement les compatibilités de base entre les composants principaux.

### Sous-tâches
- [ ] Créer une matrice de compatibilité **CPU ↔ Carte mère** (sockets Intel/AMD et chipsets compatibles).
- [ ] Documenter les règles **RAM ↔ Plateforme** (incompatibilité physique/électrique DDR4 vs DDR5).
- [ ] Documenter les règles **Format Boîtier ↔ Carte mère ↔ Alimentation** (ATX, Micro-ATX, Mini-ITX, SFX).
- [ ] Auditer les 3 configurations types de la v1.0 par rapport à ces règles.

### Critère de validation
Un lecteur débutant peut vérifier en moins de 2 minutes si ses composants de base sont compatibles.
EOF

create_issue "[v1.1] Simplifier et améliorer le guide de montage" "v1.1" "documentation" << 'EOF'
### Objectif
Rendre le guide d'assemblage v1.0 plus accessible et rassurant pour un premier montage.

### Sous-tâches
- [ ] Relire le guide de montage v1.0 et découper les étapes complexes en sous-étapes numérotées.
- [ ] Ajouter une liste des outils nécessaires et précautions (électricité statique, espace de travail).
- [ ] Ajouter un mini-glossaire des termes techniques (BIOS, VRM, câble EPS, front panel, etc.).
- [ ] Ajouter une check-list de fin de montage avant la première mise sous tension.

### Critère de validation
Le guide est lisible de bout en bout sans jargon non expliqué.
EOF

# --- v1.2 ---
create_issue "[v1.2] Ajouter le calcul de budget total par configuration" "v1.2" "data,documentation" << 'EOF'
### Objectif
Afficher le coût estimé de chaque configuration type et aider à répartir le budget efficacement.

### Sous-tâches
- [ ] Ajouter une grille tarifaire indicative par composant dans les configurations types (Entrée, Milieu, Haut de gamme).
- [ ] Calculer et afficher le coût total de chaque configuration (+ date de référence des prix).
- [ ] Ajouter une section sur la répartition idéale du budget (ex. % dédié au GPU vs CPU selon l'usage gaming).

### Critère de validation
Chaque configuration affiche un prix détaillé par pièce et un total clair.
EOF

create_issue "[v1.2] Estimer la consommation (TDP) et dimensionner l'alimentation (PSU)" "v1.2" "compatibilité,documentation" << 'EOF'
### Objectif
Fournir une méthode fiable pour calculer la puissance nécessaire et choisir une alimentation adaptée.

### Sous-tâches
- [ ] Expliquer la différence entre TDP annoncé et consommation réelle en pic (pics transitoires GPU/CPU).
- [ ] Définir une formule d'estimation simple : `(TDP CPU + Conso max GPU + marge système ~75-100W) × marge sécurité (1,25 à 1,35)`.
- [ ] Ajouter la consommation estimée et la puissance PSU recommandée sur chaque configuration type.
- [ ] Lister les erreurs courantes à éviter (sous-dimensionnement, alimentation bas de gamme).

### Critère de validation
Chaque configuration possède sa consommation estimée et la justification du choix de l'alimentation.
EOF

create_issue "[v1.2] Ajouter des recommandations ciblées par résolution (1080p, 1440p, 4K)" "v1.2" "documentation,data" << 'EOF'
### Objectif
Aider l'utilisateur à choisir sa configuration en fonction de la définition et du taux de rafraîchissement visés.

### Sous-tâches
- [ ] Définir les profils cibles : **1080p** (Full HD, compétitif/60-144 Hz), **1440p** (QHD, polyvalent), **4K** (UHD, haute qualité).
- [ ] Associer les niveaux de GPU et quantités de VRAM recommandées à chaque résolution.
- [ ] Relier explicitement les configurations types (Entrée / Milieu / Haut de gamme) à leur résolution idéale.

### Critère de validation
L'utilisateur peut choisir une config directement à partir de la définition de son écran cible.
EOF

# --- v1.3 ---
create_issue "[v1.3] Ajouter la vérification des contraintes physiques et du flux d'air" "v1.3" "compatibilité,documentation" << 'EOF'
### Objectif
Éviter les incompatibilités physiques lors de l'achat et optimiser le refroidissement du boîtier.

### Sous-tâches
- [ ] Rédiger une check-list des dimensions critiques à croiser : longueur max GPU vs boîtier, hauteur max ventirad vs boîtier, longueur PSU vs cage HDD.
- [ ] Ajouter les règles de compatibilité radiateur Watercooling (240 mm / 280 mm / 360 mm en façade ou haut).
- [ ] Expliquer les principes de flux d'air (*airflow* : pression positive/négative, sens aspiration/extraction).

### Critère de validation
Tous les cas d'incompatibilité physique courants sont couverts avec des exemples chiffrés.
EOF

create_issue "[v1.3] Rédiger les recommandations Stockage (NVMe) et Refroidissement" "v1.3" "documentation,data" << 'EOF'
### Objectif
Guider le choix du stockage SSD NVMe et de la solution de refroidissement processeur.

### Sous-tâches
- [ ] **Stockage** : comparer SSD NVMe PCIe Gen 3 / Gen 4 / Gen 5, rôle du cache DRAM, capacités recommandées (1 To vs 2 To) et gestion des dissipateurs M.2.
- [ ] **Refroidissement** : comparer Ventirad (simple/double tour) vs Watercooling AIO (bruit, fiabilité, coût, adéquation au TDP).
- [ ] Mettre à jour les configurations types avec ces recommandations précises.

### Critère de validation
Les critères de choix stockage et refroidissement sont intégrés et cohérents avec les configs types.
EOF

create_issue "[v1.3] Créer la section dédiée aux périphériques essentiels" "v1.3" "documentation" << 'EOF'
### Objectif
Compléter les guides avec le choix des périphériques indispensables (écran, clavier, souris).

### Sous-tâches
- [ ] Guide choix **Écran** : dalle (IPS, VA, OLED), taux de rafraîchissement (Hz), temps de réponse, FreeSync / G-Sync, cohérence avec le GPU.
- [ ] Guide choix **Clavier & Souris** : critères gaming essentiels (capteur, poids, switches, filaire vs sans-fil).
- [ ] Ajouter des fourchettes de budget périphériques complémentaires aux configs.

### Critère de validation
Une section complète permet de budgéter le setup complet (tour + périphériques).
EOF

# --- v1.4 ---
create_issue "[v1.4] Rédiger le guide de premier démarrage (BIOS/UEFI & Système)" "v1.4" "documentation" << 'EOF'
### Objectif
Accompagner l'utilisateur juste après l'assemblage pour configurer correctement son PC.

### Sous-tâches
- [ ] Étapes d'accès et réglages de base du **BIOS/UEFI** (ordre de boot, date/heure, mise à jour BIOS si nécessaire).
- [ ] Activation des profils mémoire **XMP / EXPO** et du **Resizable BAR / SAM**.
- [ ] Installation de l'OS et des pilotes essentiels (chipset carte mère, carte graphique, audio/réseau).
- [ ] Configuration de base des courbes de ventilation (*fan curves*).

### Critère de validation
Le guide couvre chronologiquement toutes les étapes entre le premier démarrage et le premier lancement de jeu.
EOF

create_issue "[v1.4] Créer la fiche de dépannage rapide (Troubleshooting)" "v1.4" "documentation" << 'EOF'
### Objectif
Fournir une procédure simple pour diagnostiquer les pannes courantes après montage.

### Sous-tâches
- [ ] Guide de lecture des voyants **EZ Debug LED** (`CPU`, `DRAM`, `VGA`, `BOOT`) et des codes bips.
- [ ] Arbre de diagnostic « PC ne démarre pas / aucun affichage » (vérifications pas à pas).
- [ ] Liste des outils de tests de stabilité et de monitoring (HWiNFO64, OCCT, Cinebench, MemTest86) avec les seuils de températures normaux.

### Critère de validation
Les pannes classiques de premier montage ont chacune une procédure de vérification claire.
EOF

create_issue "[v1.4] Mettre à jour la documentation d'architecture (architecture.md & structure.md)" "v1.4" "documentation,refactoring" << 'EOF'
### Objectif
Garder la documentation technique du dépôt parfaitement synchronisée avec les ajouts v1.1 à v1.4.

### Sous-tâches
- [ ] Mettre à jour `structure.md` avec l'ensemble des nouveaux fichiers et dossiers créés depuis la v1.0.
- [ ] Mettre à jour `architecture.md` pour refléter l'organisation logique des guides, règles et configurations.
- [ ] Vérifier tous les liens internes entre les fichiers Markdown.

### Critère de validation
Aucun lien mort ; la documentation du dépôt reflète exactement son contenu réel.
EOF

# --- v1.5 ---
create_issue "[v1.5] Mettre en place la comparaison côte à côte des configurations" "v1.5" "feature,documentation" << 'EOF'
### Objectif
Permettre de comparer facilement plusieurs configurations PC sur une même vue.

### Sous-tâches
- [ ] Définir les critères comparés (CPU, GPU, RAM, stockage, PSU, prix total, TDP estimé, résolution cible, points forts/limites).
- [ ] Créer un tableau ou générateur de vue comparative entre les configurations types.
- [ ] Documenter comment ajouter une nouvelle configuration au comparateur.

### Critère de validation
Au moins 3 configurations peuvent être comparées clairement sur une seule vue.
EOF

create_issue "[v1.5] Implémenter l'export des configurations (Markdown / PDF / JSON)" "v1.5" "feature,data" << 'EOF'
### Objectif
Standardiser les configurations sous forme de données structurées et permettre leur export dans plusieurs formats.

### Sous-tâches
- [ ] Définir un schéma **JSON** strict et versionné représentant une configuration PC complète (composants, prix, puissance, notes).
- [ ] Convertir les configurations types existantes vers ce format JSON.
- [ ] Mettre en place la génération/export vers **Markdown** (fiche partageable) et **PDF** (fiche imprimable).
- [ ] Documenter le format d'export et les commandes d'utilisation.

### Critère de validation
Une configuration définie en JSON s'exporte proprement en Markdown et en PDF sans perte d'information.
EOF

create_issue "[v1.5] Nettoyer et optimiser le projet avant la v2.0" "v1.5" "refactoring,documentation" << 'EOF'
### Objectif
Assainir le dépôt et structurer les données en vue de la refonte v2.0.

### Sous-tâches
- [ ] Auditer tous les fichiers pour supprimer doublons, textes obsolètes ou incohérences de nommage.
- [ ] Standardiser les noms de fichiers/dossiers et la mise en forme Markdown.
- [ ] Séparer nettement les « données brutes » (JSON) du « contenu éditorial » (Markdown).
- [ ] Rédiger le bilan de fin de cycle v1.x et les notes de préparation pour la v2.0.

### Critère de validation
Le dépôt est propre, normalisé et prêt pour le développement applicatif de la v2.0.
EOF

# --- v2.0 ---
create_issue "[v2.0] Concevoir et mettre en place la nouvelle architecture technique" "v2.0" "refactoring,feature" << 'EOF'
### Objectif
Poser les fondations techniques de la version interactive v2.0 de PCperso.

### Sous-tâches
- [ ] Choisir la stack technique cible (ex. application web TypeScript + React/Vite/Astro, ou backend léger + frontend).
- [ ] Initialiser l'architecture du code source (séparation UI, moteur de règles de compatibilité, base de données composants).
- [ ] Mettre en place les tests automatisés (règles de compatibilité, calcul TDP/budget) et une CI (GitHub Actions).
- [ ] Réécrire `architecture.md` et `structure.md` pour la v2.0.

### Critère de validation
L'environnement de dev build, passe les tests et se déploie automatiquement.
EOF

create_issue "[v2.0] Développer le configurateur interactif avec vérification en temps réel" "v2.0" "feature,compatibilité" << 'EOF'
### Objectif
Offrir un configurateur interactif guidé qui bloque ou alerte en direct sur les incompatibilités.

### Sous-tâches
- [ ] Construire le catalogue structuré des composants (socket, DDR, dimensions, TDP, prix).
- [ ] Implémenter le moteur de règles en temps réel (socket, RAM, format, longueur GPU, hauteur ventirad, puissance PSU).
- [ ] Développer l'interface de sélection étape par étape avec jauge de budget, estimation TDP et résolution cible en direct.
- [ ] Connecter les boutons d'export (JSON / Markdown / PDF) et le comparateur v1.5 dans l'interface.

### Critère de validation
Un utilisateur peut assembler un PC complet dans l'interface, voir immédiatement toute incompatibilité et exporter sa liste.
EOF

create_issue "[v2.0] Implémenter le suivi d'évolutivité (suggestions d'upgrades)" "v2.0" "feature,compatibilité" << 'EOF'
### Objectif
Permettre aux utilisateurs ayant déjà un PC de savoir quelles améliorations apporter en priorité.

### Sous-tâches
- [ ] Permettre la saisie ou l'import (JSON) d'un PC déjà monté.
- [ ] Créer l'algorithme d'analyse des goulots d'étranglement et limites actuelles (socket, capacité PSU restante, VRAM/RAM, espace boîtier).
- [ ] Générer des recommandations d'upgrades classées par impact/budget sans provoquer d'incompatibilité avec l'existant.

### Critère de validation
À partir d'une config existante saisie, l'outil propose au moins 2 à 3 pistes d'upgrade pertinentes et compatibles.
EOF

create_issue "[v2.0] Unifier la documentation finale et publier la v2.0" "v2.0" "documentation" << 'EOF'
### Objectif
Finaliser la documentation utilisateur/contributeur et publier officiellement PCperso v2.0.

### Sous-tâches
- [ ] Mettre à jour le `README.md` principal (présentation v2.0, captures d'écran, guide d'installation/utilisation).
- [ ] Intégrer ou lier les guides pédagogiques v1.x directement depuis le configurateur (infobulles / pages d'aide).
- [ ] Rédiger le guide de contribution (`CONTRIBUTING.md`) pour ajouter des composants ou corriger des règles.
- [ ] Publier la Release `v2.0.0` avec le changelog complet.

### Critère de validation
Toute la documentation est alignée sur la v2.0 et la release est publiée.
EOF

echo "🎉 Terminé ! Toutes les issues ont été créées sur https://github.com/$REPO/issues"
