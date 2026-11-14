# 📖 Chapitre 7 — Glossaire Hardware (Les termes expliqués simplement)

Tu croises des acronymes incompréhensibles sur les fiches techniques ou dans les chapitres précédents ? Ce lexique traduit le jargon informatique en français clair.

---

### A - C

* **Airflow (Flux d'air) :** Circulation de l'air dans le boîtier. En règle générale, l'air frais entre par l'avant et le bas (*aspiration / intake*), et l'air chaud sort par l'arrière et le haut (*extraction / exhaust*).
* **ATX / Micro-ATX / Mini-ITX :** Formats standards définissant la taille d'une carte mère (et des boîtiers compatibles). `ATX` est la taille standard, `Micro-ATX` est un peu plus courte, et `Mini-ITX` est très compacte.
* **BIOS / UEFI :** Premier logiciel intégré à la carte mère qui se lance avant Windows. Il permet de vérifier que tout le matériel est détecté, de régler la vitesse des ventilateurs et d'activer le profil de vitesse de la RAM (`XMP`/`EXPO`).
* **BIOS Flashback (ou Q-Flash Plus) :** Fonctionnalité très pratique de certaines cartes mères permettant de mettre à jour le BIOS via une clé USB **sans avoir besoin d'installer de processeur ni de RAM**.
* **Bottleneck (Goulot d'étranglement) :** Déséquilibre entre deux composants (ex. : un processeur très faible associé à une carte graphique très puissante), ce qui empêche le composant le plus rapide de donner son maximum.
* **Chipset :** Puce sur la carte mère qui gère les communications entre le processeur et les périphériques (ports USB, SSD, réseau, audio).
* **Clear CMOS :** Manipulation consistant à réinitialiser tous les réglages du BIOS aux valeurs d'usine (utile si le PC ne démarre plus après un mauvais réglage). Se fait en retirant la pile ronde de la carte mère ou via un bouton/cavalier dédié.

### D - M

* **DDR4 / DDR5 :** Générations de mémoire vive (RAM). Elles possèdent une encoche physique placée à un endroit différent : une carte mère DDR5 n'accepte **jamais** de barrette DDR4, et inversement.
* **Dual Channel :** Mode de fonctionnement où deux barrettes de RAM travaillent en parallèle pour doubler la bande passante mémoire. Sur une carte mère à 4 emplacements, on installe généralement les deux barrettes dans les slots **A2 et B2** (2e et 4e en partant du CPU).
* **EZ Debug LED :** Petits voyants lumineux sur la carte mère (`CPU`, `DRAM`, `VGA`, `BOOT`) qui s'allument brièvement au démarrage. Si l'un d'eux reste bloqué allumé avec un écran noir, il indique précisément quel composant bloque le démarrage.
* **Form Factor :** Voir *ATX / Micro-ATX / Mini-ITX*.
* **M.2 NVMe :** Format moderne de SSD ressemblant à une petite barrette de chewing-gum qui se visse directement sur la carte mère, sans aucun câble d'alimentation ni câble SATA.

### P - S

* **PCIe (PCI Express) :** Connecteurs longs sur la carte mère servant principalement à brancher la carte graphique (`PCIe x16`). On appelle aussi `PCIe 6+2 pins` les câbles de l'alimentation destinés à la carte graphique.
* **POST (Power-On Self-Test) :** Série d'auto-tests effectués par la carte mère dans les secondes suivant l'appui sur le bouton Power pour vérifier que le CPU, la RAM et le GPU répondent correctement.
* **PSU (Power Supply Unit) :** Le bloc d'alimentation du PC.
* **Resizable BAR (ou Smart Access Memory) :** Option du BIOS qui permet au processeur d'accéder directement à toute la mémoire vidéo de la carte graphique, offrant souvent un gain de performances gratuit en jeu.
* **Socket :** Emplacement précis sur la carte mère accueillant le processeur (ex. : `AM5` chez AMD, `LGA1700` ou `LGA1851` chez Intel). Un CPU ne peut fonctionner que sur le socket pour lequel il a été conçu.

### T - Z

* **TDP (Thermal Design Power) :** Indicateur (en Watts) représentant la chaleur dégagée par un processeur ou une carte graphique, servant à dimensionner le refroidissement et l'alimentation. *(Attention : en charge maximale, certains composants consomment temporairement plus que leur TDP de base).*
* **VRM (Voltage Regulator Module) :** Ensemble de composants électroniques situés autour du socket de la carte mère. Ils convertissent le courant de l'alimentation pour nourrir précisément le processeur.
* **XMP / EXPO / DOCP :** Profils d'overclocking automatique intégrés à la RAM (`XMP` pour Intel, `EXPO` pour AMD). Sans activation dans le BIOS, la RAM tourne par défaut à une fréquence de sécurité plus lente que celle affichée sur sa boîte.
* **12VHPWR / 12V-2x6 :** Connecteur d'alimentation moderne à 16 broches utilisé sur certaines cartes graphiques récentes. Il doit impérativement être enfoncé à fond sans pliure brusque du câble.
