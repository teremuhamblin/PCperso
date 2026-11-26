# PCperso — Feuille de route

La roadmap sépare les ressources déjà présentes des tâches de revue à effectuer. La cible v2.2 Stable ne sera annoncée comme publiée qu’après validation des critères de sortie.

## Socle documentaire présent

- [x] Guide de huit chapitres dans `guide/`.
- [x] Checklist de montage à la racine.
- [x] Index d’outils, configurations types, fiche mémo et guide d’upgrade.
- [x] Scripts et documentation d’utilisation.
- [x] Modèles communautaires GitHub.
- [x] Documents de suivi, journal et structure dans `docs/`.

## Cycle v2.2 — Traçabilité, sécurité et qualité

### Revue technique et sources

- [ ] Recenser les recommandations matérielles, chiffres et affirmations de compatibilité des guides et outils.
- [ ] Vérifier chaque recommandation auprès des documentations fabricants ou sources officielles pertinentes.
- [ ] Ajouter pour les données sensibles une source, une date de vérification et le modèle/révision applicable.
- [ ] Marquer les prix, performances et répartitions budgétaires comme exemples datés, pas garanties.
- [ ] Corriger ou retirer les affirmations non vérifiables ou obsolètes.

### Scripts et sécurité

- [ ] Relire chaque script et comparer son comportement aux instructions publiées.
- [ ] Documenter les sources de paquets, paramètres, privilèges, effets secondaires et possibilités d’annulation lorsqu’elles existent.
- [ ] Contrôler particulièrement les scripts de gestion distante via GitHub CLI avant de recommander leur exécution.
- [ ] Revoir les instructions de sécurité matérielle avec des sources de fabricants.

### Qualité documentaire

- [ ] Exécuter le vérificateur de liens locaux en CI sur les changements proposés.
- [ ] Vérifier les liens externes et les références internes à la main lorsque le contrôle automatique ne suffit pas.
- [ ] Contrôler le rendu du README, des images et des diagrammes Mermaid sur GitHub.
- [ ] Harmoniser versions, noms de fichiers et index sans supprimer les anciens liens utiles.

### Publication stable

- [ ] Faire relire la documentation par une autre personne.
- [ ] Consigner les validations réellement exécutées et leurs dates.
- [ ] Mettre à jour changelog et note de release à partir des changements vérifiés.
- [ ] Publier la v2.2 Stable uniquement après clôture des critères ci-dessus.

## Évolutions hors périmètre à discuter

Un configurateur interactif ou une base de composants avec prix en direct ne font pas partie de cette stabilisation documentaire. Ils nécessiteraient un périmètre, des sources de données et une maintenance distincts.
