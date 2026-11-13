# 5. Windows, pilotes et tests

Ton matériel est prêt. Il faut maintenant installer le système et vérifier que tout est stable.

## 💿 1. Installer Windows 11

1. Sur un autre PC, crée une clé USB d'installation (8 Go min.) avec l'**Outil de création de support Windows** officiel de Microsoft.
2. Branche la clé sur ton nouveau PC et allume-le (il démarrera dessus automatiquement, sinon sélectionne la clé via le Boot Menu, souvent `F8`, `F11` ou `F12`).
3. Suis les étapes, choisis ton SSD NVMe comme disque d'installation, et laisse le PC redémarrer.

---

## 🧩 2. Installer les pilotes (Drivers)

Une fois sur le bureau Windows :
1. **Windows Update** : Lance les mises à jour jusqu'à ce que tout soit à jour.
2. **Pilote Chipset** : Télécharge-le sur le site du fabricant de la carte mère (ou directement chez AMD/Intel). *À installer en priorité.*
3. **Pilote Carte Graphique** : Télécharge les derniers pilotes sur le site officiel (NVIDIA, AMD ou Intel).
4. **Réseau / Audio / Wi-Fi** : Uniquement si quelque chose ne fonctionne pas après Windows Update (évite d'installer les logiciels lourds et inutiles des fabricants de cartes mères).
5. **Taux de rafraîchissement de l'écran** : Va dans *Paramètres Windows > Système > Écran > Paramètres d'affichage avancés* et passe ton écran à sa fréquence max (ex : 144 Hz, 165 Hz).

---

## 🔥 3. Tests de stabilité et températures

Avant d'utiliser ton PC à fond, vérifie qu'il ne surchauffe pas et ne plante pas :

- **HWInfo64** : Pour surveiller les températures en temps réel.
  - CPU en charge : idéalement < 85°C (max ~95°C selon modèles récents).
  - GPU en charge : idéalement < 80°C.
- **Cinebench (R23 / 2024)** : Teste le processeur et son refroidissement pendant 10 minutes.
- **OCCT ou FurMark / 3DMark** : Teste la stabilité de la carte graphique, de la RAM et de l'alimentation.
- **CrystalDiskInfo** : Vérifie l'état de santé de ton SSD.

---
⬅️ [Chapitre 4 : BIOS et XMP/EXPO](04-bios-uefi-et-xmp-expo.md) | ➡️ [Chapitre 6 : Diagnostic et pannes](06-diagnostic-et-pannes.md)
