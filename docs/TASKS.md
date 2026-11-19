# Suivi des tâches – PCperso

Suivi détaillé des tâches issues de la [ROADMAP.md](./ROADMAP.md), de la v1.0 à la v2.0.

---

## v1.0 – Fondation & Documentation initiale *(Terminée)*
- [x] Mise en place de la structure du projet (`structure.md`, `architecture.md`).
- [x] Rédaction du guide général sur l'assemblage d'un PC Gamer.
- [x] Création des premières configurations types (Entrée, Milieu et Haut de gamme).

---

## v1.1 – Composants & Compatibilité de base

### Standardiser et rédiger les fiches détaillées des composants
- [ ] Définir un modèle unique de fiche composant (rôle, caractéristiques clés, pièges à éviter, critères de choix).
- [ ] Rédiger la fiche **CPU** (cœurs/threads, fréquence, cache, socket, TDP, iGPU).
- [ ] Rédiger la fiche **GPU** (VRAM, bus, résolution cible, connecteurs d'alimentation, longueur).
- [ ] Rédiger la fiche **Carte mère** (chipset, socket, VRM, slots RAM/M.2, format).
- [ ] Rédiger la fiche **RAM** (DDR4 vs DDR5, fréquence MT/s, latence CL, Dual Channel).
- [ ] Rédiger la fiche **Alimentation (PSU)** (puissance, certifications 80+, modularité, norme ATX 3.0/3.1).
- [ ] Rédiger la fiche **Boîtier** (format supporté, flux d'air, façade mesh, dégagements internes).

### Documenter les règles de compatibilité essentielles
- [ ] Créer une matrice de compatibilité **CPU ↔ Carte mère** (sockets Intel/AMD et chipsets compatibles).
- [ ] Documenter les règles **RAM ↔ Plateforme** (DDR4 vs DDR5).
- [ ] Documenter les règles **Format Boîtier ↔ Carte mère ↔ Alimentation** (ATX, Micro-ATX, Mini-ITX, SFX).
- [ ] Auditer les 3 configurations types de la v1.0 par rapport à ces règles.

### Simplifier et améliorer le guide de montage
- [ ] Découper les étapes complexes en sous-étapes numérotées.
- [ ] Ajouter la liste des outils nécessaires et précautions (électricité statique, espace de travail).
- [ ] Ajouter un mini-glossaire des termes techniques (BIOS, VRM, câble EPS, front panel, etc.).
- [ ] Ajouter une check-list de fin de montage avant la première mise sous tension.

---

## v1.2 – Budget & Estimation électrique

### Ajouter le calcul de budget total par configuration
- [ ] Ajouter une grille tarifaire indicative par composant dans les configurations types.
- [ ] Calculer et afficher le coût total de chaque configuration (+ date de référence des prix).
- [ ] Ajouter une section sur la répartition idéale du budget selon l'usage gaming.

### Estimer la consommation (TDP) et dimensionner l'alimentation (PSU)
- [ ] Expliquer la différence entre TDP annoncé et consommation réelle en pic.
- [ ] Définir une formule simple de calcul PSU (CPU + GPU + marge système + marge de sécurité 25-35 %).
- [ ] Ajouter la consommation estimée et la puissance PSU recommandée sur chaque configuration type.
- [ ] Lister les erreurs courantes à éviter (sous-dimensionnement, alimentation bas de gamme).

### Ajouter des recommandations ciblées par résolution (1080p, 1440p, 4K)
- [ ] Définir les profils cibles : **1080p**, **1440p**, **4K**.
- [ ] Associer les niveaux de GPU et quantités de VRAM recommandées à chaque résolution.
- [ ] Relier explicitement les configurations types (Entrée / Milieu / Haut de gamme) à leur résolution idéale.

---

## v1.3 – Refroidissement, Dimensions & Stockage

### [1.3.1] Ajouter la vérification des contraintes physiques et du flux d'air
- [ ] Rédiger une check-list des dimensions critiques (longueur GPU, hauteur ventirad, longueur PSU).
- [ ] Ajouter les règles de compatibilité radiateur Watercooling (240 / 280 / 360 mm).
- [ ] Expliquer les principes du flux d'air (*airflow* : aspiration, extraction, pression positive).

### [1.3.2] Rédiger les recommandations Stockage (NVMe) et Refroidissement
- [ ] **Stockage** : comparer SSD NVMe PCIe Gen 3 / 4 / 5, cache DRAM, capacités et dissipateurs M.2.
- [ ] **Refroidissement** : comparer Ventirad vs Watercooling AIO (bruit, fiabilité, coût, TDP).
- [ ] Mettre à jour les configurations types avec ces recommandations.

### [1.3.3] Créer la section dédiée aux périphériques essentiels
- [ ] Guide choix **Écran** (IPS/VA/OLED, Hz, temps de réponse, FreeSync/G-Sync, cohérence avec le GPU).
- [ ] Guide choix **Clavier & Souris** (capteur, switches, filaire vs sans-fil).
- [ ] Ajouter des fourchettes de budget périphériques complémentaires.

---

## v1.4 – Post-montage, BIOS & Dépannage

### [1.4.1] Rédiger le guide de premier démarrage (BIOS/UEFI & Système)
- [ ] Expliquer les réglages de base du **BIOS/UEFI** (ordre de boot, date/heure, mise à jour BIOS).
- [ ] Décrire l'activation des profils **XMP / EXPO** et **Resizable BAR / SAM**.
- [ ] Détailler l'installation de l'OS et des pilotes essentiels (chipset, GPU, réseau/audio).
- [ ] Expliquer le réglage des courbes de ventilation (*fan curves*).

### [1.4.2] Créer la fiche de dépannage rapide (Troubleshooting)
- [ ] Guide de lecture des voyants **EZ Debug LED** (`CPU`, `DRAM`, `VGA`, `BOOT`) et codes bips.
- [ ] Arbre de diagnostic « PC ne démarre pas / aucun affichage ».
- [ ] Liste des outils de tests de stabilité et monitoring (HWiNFO64, OCCT, Cinebench, MemTest86) et seuils normaux.

### [1.4.3] Mettre à jour la documentation d'architecture
- [ ] Mettre à jour `structure.md` avec l'ensemble des nouveaux fichiers et dossiers.
- [ ] Mettre à jour `architecture.md` pour refléter l'organisation des guides, règles et configurations.
- [ ] Vérifier l'absence de liens morts entre tous les fichiers Markdown.

---

## v1.5 – Comparateur & Export

### [1.5.1] Mettre en place la comparaison côte à côte des configurations
- [ ] Définir les critères comparés (composants, prix total, TDP, résolution cible, points forts/limites).
- [ ] Créer la vue comparative entre les configurations types.
- [ ] Documenter comment ajouter une nouvelle configuration au comparateur.

### [1.5.2] Implémenter l'export des configurations (Markdown / PDF / JSON)
- [ ] Définir un schéma **JSON** strict et versionné pour une configuration PC.
- [ ] Convertir les configurations types vers ce format JSON.
- [ ] Mettre en place l'export vers **Markdown** et **PDF**.
- [ ] Documenter le format d'export et les commandes d'utilisation.

### [1.5.3] Nettoyer et optimiser le projet avant la v2.0
- [ ] Auditer les fichiers pour supprimer doublons, textes obsolètes ou incohérences de nommage.
- [ ] Standardiser les noms de fichiers/dossiers et la mise en forme Markdown.
- [ ] Séparer nettement les données brutes (JSON) du contenu éditorial (Markdown).
- [ ] Rédiger le bilan de fin de cycle v1.x.

---

## v2.0 – Refonte majeure & Expérience interactive

### [2.0.1] Concevoir et mettre en place la nouvelle architecture technique
- [ ] Choisir la stack technique cible (ex. TypeScript + React/Vite/Astro ou équivalent).
- [ ] Initialiser l'architecture du code (UI, moteur de compatibilité, base de données composants).
- [ ] Mettre en place les tests automatisés (règles de compatibilité, TDP, budget) et la CI (GitHub Actions).
- [ ] Réécrire `architecture.md` et `structure.md` pour la v2.0.

### [2.0.2] Développer le configurateur interactif avec vérification en temps réel
- [ ] Construire le catalogue structuré des composants (socket, DDR, dimensions, TDP, prix).
- [ ] Implémenter le moteur de règles de compatibilité en temps réel.
- [ ] Développer l'interface étape par étape avec jauge de budget, TDP et résolution cible en direct.
- [ ] Connecter le comparateur et l'export (JSON / Markdown / PDF) dans l'interface.

### [2.0.3] Implémenter le suivi d'évolutivité (suggestions d'upgrades)
- [ ] Permettre la saisie ou l'import (JSON) d'un PC déjà monté.
- [ ] Créer l'analyse des goulots d'étranglement et limites actuelles (socket, PSU, VRAM/RAM, dimensions).
- [ ] Générer des recommandations d'upgrades compatibles classées par impact et budget.

### [2.0.4] Unifier la documentation finale et publier la v2.0
- [ ] Mettre à jour le `README.md` principal (présentation v2.0, captures d'écran, guide d'utilisation).
- [ ] Intégrer ou lier les guides pédagogiques v1.x directement dans le configurateur.
- [ ] Rédiger le guide de contribution (`CONTRIBUTING.md`).
- [ ] Publier la Release `v2.0.0` avec le changelog complet.
