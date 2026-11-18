[⬅️ Retour au Sommaire](../README.md) • [📖 Chapitre 07 : Glossaire](./07-glossaire-hardware.md) • [✅ Checklist Montage](../CHECKLIST.md)

# 🌬️ Chapitre 08 : Refroidissement, Airflow & Entretien

Monter son PC, c'est bien. Faire en sorte qu'il reste **frais, silencieux et performant pendant des années**, c'est encore mieux !

Un bon refroidissement n'est pas qu'une question de confort auditif : lorsque le processeur (CPU) ou la carte graphique (GPU) chauffent trop, ils réduisent volontairement leur fréquence pour éviter de griller — c'est ce qu'on appelle le ***Thermal Throttling*** *(bridage thermique)*. Résultat : perte de FPS en jeu, ventilateurs qui hurlent et usure prématurée des composants.

Dans ce chapitre, tu vas apprendre à maîtriser la circulation de l'air dans ton boîtier, à régler tes ventilateurs pour le silence et à entretenir ta machine sans rien casser.

---

## 1. ❄️ Ventirad vs Watercooling (AIO) : comment s'y retrouver ?

Pour refroidir le processeur, il existe deux grandes familles grand public : le **refroidissement par air (Ventirad)** et le **refroidissement liquide tout-en-un (AIO — *All-In-One*)**.

| Critère | 🌬️ Ventirad (Air Cooling) | 💧 Watercooling AIO |
| :--- | :--- | :--- |
| **Principe** | Des caloducs en cuivre transfèrent la chaleur vers des ailettes refroidies par un ventilateur. | Un liquide circule en circuit fermé entre la pompe (sur le CPU) et un radiateur fixé au boîtier. |
| **Prix moyen** | **25 € à 90 €** *(excellent rapport perf/prix)* | **70 € à 200 €+** |
| **Fiabilité & Durée de vie** | **Quasi éternel** *(seul le ventilateur peut s'user et se remplace facilement)*. | **4 à 7 ans** *(évaporation lente du liquide, usure de la pompe)*. |
| **Encombrement** | Volumineux autour du CPU *(vérifier la hauteur max du boîtier et l'espace avec la RAM)*. | Dégage la zone autour du CPU *(vérifier la compatibilité radiateur 240/360 mm du boîtier)*. |
| **Bruit au repos** | Très silencieux *(aucun bruit de pompe)*. | Légèrement audible selon la pompe *(bruit aigu ou bourdonnement faible)*. |
| **Pour quel usage ?** | **Recommandé pour 85 % des configs**, des PC bureautiques aux gros CPU gaming. | Processeurs très gourmands (i7/i9, Ryzen 9 en usage intensif) ou choix esthétique. |

> [!TIP]
> **Conseil de builder :** Ne te laisse pas piéger par le marketing ! Un bon ventirad double tour à ~40-60 € égale ou surpasse facilement de nombreux watercoolings AIO d'entrée de gamme (120 mm ou 240 mm), tout en étant plus fiable sur le long terme.

### ⚠️ Règle d'or si tu utilises un Watercooling AIO
Si tu installes un AIO, **la pompe (le bloc posé sur le processeur) ne doit JAMAIS être le point le plus haut du circuit**.
* **Placement idéal :** Radiateur fixé **en haut** du boîtier (en extraction). L'air éventuel reste piégé dans le haut du radiateur, jamais dans la pompe.
* **Placement alternatif (en façade) :** Fais en sorte que le haut du radiateur dépasse nettement la hauteur du CPU *(et si possible, place les tuyaux vers le bas)*.
* **À proscrire :** Radiateur posé au sol du boîtier — les bulles d'air remontent droit dans la pompe, ce qui provoque du bruit et une usure rapide.

---

## 2. 🌪️ Comprendre l'Airflow (le flux d'air)

Un boîtier PC fonctionne comme un courant d'air dans une maison : l'air frais doit entrer d'un côté, traverser les composants chauds, puis être expulsé de l'autre côté.

### La règle physique de base : l'air chaud monte
On suit donc toujours le chemin **Bas / Avant ➡️ Haut / Arrière** :

```text
             Extraction (Haut)
               ▲           ▲
      ┌────────┴───────────┴────────┐
      │      [Fan]       [Fan]      │
  ◄───┤[Fan]                        │ ◄── Air
Arrière       [Ventirad]            │    frais
      │       [== GPU ==]           │ ◄── (Façade)
      │           ▲                 │
      │  ┌────────┴───┐             │
      │  │   Alim.    │   (Air bas) │
      └──┴────────────┴─────────────┘
```

* **Aspiration (*Intake*) :** Façade avant (et parfois le bas du boîtier). Fait rentrer l'air frais extérieur.
* **Extraction (*Exhaust*) :** Arrière et haut du boîtier. Expulse l'air réchauffé par le GPU et le CPU.

> [!NOTE]
> **Cas particulier des boîtiers « Aquarium » (panoramiques en verre) :**  
> Comme la façade avant est vitrée, l'aspiration se fait par le **côté droit** (à côté de la carte mère) et par le **bas**, tandis que l'extraction reste en **haut** et à **l'arrière**.

### 🔍 Comment savoir dans quel sens souffle un ventilateur ?
Si tu as un doute au moment de visser tes ventilateurs :
1. **Regarde la tranche du cadre :** la plupart des fabricants gravent deux petites flèches (une pour le sens de rotation des pales, une pour le sens du flux d'air).
2. **La règle visuelle classique :** sur un ventilateur standard, l'air **entre par la face « jolie »** (pales dégagées) et **sort par la face « moche »** (là où se trouvent les bras en plastique qui soutiennent le moteur et l'autocollant technique).

> [!WARNING]
> **Attention aux ventilateurs « Reverse Blade » (pales inversées) !**  
> Très populaires sur les boîtiers vitrés récents, les ventilateurs *Reverse* inversent l'esthétique : l'air sort par la face visible pour que tu n'aies pas à montrer la structure arrière du ventilateur en aspiration. Vérifie toujours la boîte ou les flèches sur le cadre !

### ⚖️ Pression positive vs Pression négative (la guerre contre la poussière)
* **Pression positive (Recommandée ✅) :** Tu fais rentrer **légèrement plus d'air** que tu n'en extrais *(ex : 3 ventilateurs en aspiration filtrée à l'avant, 1 ou 2 en extraction à l'arrière/haut)*.  
  👉 *Avantage :* L'air passe obligatoirement par les **filtres anti-poussière** des ventilateurs d'entrée, et le surplus s'échappe par les interstices du boîtier. **Résultat : beaucoup moins de poussière à l'intérieur.**
* **Pression négative :** Plus d'extraction que d'aspiration. L'air finit par être aspiré par tous les petits trous non filtrés du boîtier, ce qui encrasse vite les composants.

---

## 3. 🧴 La pâte thermique : quand et comment la changer ?

La pâte thermique comble les micro-imperfections invisibles entre la surface du processeur (IHS) et la base en métal de ton refroidisseur. Sans elle, de minuscules poches d'air isolantes feraient monter ton CPU à 100 °C en quelques secondes.

### Quand la remplacer ?
* **Systématiquement** à chaque fois que tu démontes ton ventirad ou la pompe de ton AIO.
* **Tous les 2 à 4 ans** en entretien préventif *(avec le temps, certaines pâtes sèchent et perdent en efficacité)*.
* **En cas de hausse anormale des températures** *(ex : +10 °C par rapport à tes mesures d'origine dans des conditions identiques)*.

### Comment bien faire ?
1. **Nettoyage :** Retire l'ancienne pâte avec du papier essuie-tout non pelucheux (ou un filtre à café) imbibé d'**alcool isopropylique (90° minimum, idéalement 99,9°)**. Attends 1 minute que tout s'évapore.
2. **Application :** Dépose l'équivalent d'un **petit pois** au centre du processeur *(ou 5 petits points en quinconce façon « face de 5 sur un dé » pour les très gros processeurs récents)*. La pression du serrage en croix l'étalera uniformément.
3. **À éviter pour débuter :** N'utilise **jamais de métal liquide** (*Liquid Metal*) sur une config classique : il est conducteur d'électricité (risque de court-circuit fatal en cas de goutte) et attaque l'aluminium.

> [!TIP]
> **Alternative moderne durable :** Les pads à changement de phase *(type PTM7950 ou équivalents)* offrent d'excellentes performances thermiques sans jamais sécher ni nécessiter de remplacement fréquent.

---

## 4. 🤫 Optimiser le bruit : les courbes de ventilation

Par défaut, beaucoup de cartes mères font tourner les ventilateurs trop vite au repos, ou au contraire les font accélérer brusquement dès que tu ouvres un onglet navigateur.

### PWM (4 broches) vs DC (3 broches)
* **Connecteur 4 broches (`PWM`) :** Permet un contrôle très fin de la vitesse (souvent de 20 % à 100 %). C'est le standard actuel à privilégier dans le BIOS.
* **Connecteur 3 broches (`DC`) :** Vitesse gérée par variation de tension (moins précise, ne descend pas très bas).

### Comment créer une courbe intelligente ?
Tu peux régler tes ventilateurs directement dans le **BIOS/UEFI** *(voir [Chapitre 04](./04-bios-uefi-et-xmp-expo.md))*, ou encore plus simplement sous Windows avec le logiciel gratuit **FanControl** *(inclus dans notre [Pack Logiciels PC Neuf](../scripts/README.md))*.

**Exemple de courbe équilibrée pour les ventilateurs de boîtier / CPU :**
* **De 0 °C à 45 °C :** `25 % à 35 %` de vitesse *(PC quasi inaudible en bureautique/navigation)*.
* **À 65 °C :** `50 % à 60 %` *(montée douce pour le gaming léger)*.
* **À 80 °C :** `80 %` *(refroidissement soutenu)*.
* **À 85 °C+ :** `100 %` *(sécurité maximale)*.

> [!TIP]
> **Le réglage secret anti-yoyo : l'Hystérésis (ou *Step-up / Step-down time*)**  
> Dans ton BIOS ou dans *FanControl*, règle un **délai de montée** (*Ramp-up delay / Hysteresis*) de **2 à 3 secondes**. Cela évite que tes ventilateurs ne hurlent pendant 1 seconde à chaque micro-pic de température quand tu lances une application.

---

## 5. 🌡️ Quelles sont les températures normales ?

Pour vérifier tes températures en jeu ou en test de charge, utilise **HWiNFO64** ou l'outil de test **OCCT** *(voir [Chapitre 05](./05-windows-pilotes-et-tests.md))*.

| Composant | 🟢 Au repos (Bureau) | 🟡 En jeu (Charge normale) | 🔴 Zone de danger / *Throttling* |
| :--- | :--- | :--- | :--- |
| **Processeur (CPU)** | 30 °C – 45 °C | 55 °C – 78 °C | **> 90 °C – 95 °C** *(selon modèle)* |
| **Carte Graphique (GPU)** | 30 °C – 45 °C *(ventilateurs souvent à 0 tr/min)* | 60 °C – 78 °C *(Hotspot < 95 °C)* | **> 85 °C** *(cœur GPU)* |
| **SSD NVMe M.2** | 30 °C – 45 °C | 45 °C – 65 °C | **> 75 °C – 80 °C** |

*(Note : Certains processeurs modernes, comme les Ryzen série 7000/9000 ou Intel Core récents, sont conçus pour monter volontairement jusqu'à 85-95 °C lors de rendus 3D lourds à 100 % de charge. Ce qui compte, c'est qu'ils ne dépassent pas ces seuils en jeu classique.)*

---

## 6. 🧹 Calendrier d'entretien : garder un PC sain

Un PC bien entretenu ne prend que **15 minutes deux fois par an** et prolonge grandement la durée de vie des composants.

### 📅 Tous les 1 à 3 mois *(5 minutes)*
* **Nettoie les filtres anti-poussière** (façade, bas sous l'alimentation, haut) : passe-les sous l'eau claire ou aspire-les *hors du PC*, puis laisse-les **sécher complètement** avant de les remettre.
* Vérifie d'un coup d'œil que tous les ventilateurs tournent sans bruit suspect.

### 📅 Tous les 6 à 12 mois *(15 minutes — Dépoussiérage complet)*
1. Éteins le PC, mets l'interrupteur de l'alimentation sur `O` (Off) et **débranche le câble secteur**.
2. Appuie 5 secondes sur le bouton Power pour vider l'électricité résiduelle.
3. Installe le PC dans un endroit aéré (balcon, garage ou pièce ouverte).
4. **Souffle la poussière** par petits à-coups avec une **bombe à air sec** (toujours tenue bien droite pour ne pas projeter de liquide givrant) ou un souffleur électrique dédié.

> [!CAUTION]
> **Les 2 erreurs fatales du nettoyage :**
> 1. **Ne passe JAMAIS un aspirateur classique à l'intérieur du boîtier** : l'embout en plastique crée d'importantes charges d'électricité statique qui peuvent griller la carte mère, sans compter le risque d'arracher un petit composant soudé.
> 2. **BLOQUE toujours les pales des ventilateurs avec un doigt** avant de souffler dessus ! Si l'air comprimé les fait tourner à toute vitesse, ils se comportent comme de petites dynamos et renvoient du courant électrique dans ta carte mère (en plus d'abîmer leurs roulements).

### 📅 Tous les 2 à 4 ans *(30 minutes)*
* Remplace la **pâte thermique** du processeur si les températures ont augmenté.
* Vérifie le serrage des vis principales et l'état des câbles *(en particulier le câble d'alimentation du GPU qui doit toujours rester bien enfoncé à fond)*.

---

## ✅ Récapitulatif express du chapitre

* **Airflow :** Frais par l'avant/bas ➡️ Chaud expulsé par l'arrière/haut, avec une légère **pression positive** pour limiter la poussière.
* **Ventirad vs AIO :** Un bon ventirad est souvent plus durable et plus économique ; si tu prends un AIO, garde toujours la pompe plus basse que le haut du radiateur.
* **Silence :** Utilise les courbes **PWM** avec un léger délai (*Hystérésis*) via le BIOS ou **FanControl**.
* **Nettoyage :** Filtres tous les 2-3 mois, air sec tous les 6-12 mois en **bloquant les pales** et **sans aspirateur**.

---

<div align="center">

[⬅️ Chapitre 07 : Glossaire Hardware](./07-glossaire-hardware.md) • [🏠 Retour au Sommaire](../README.md) • [✅ Checklist Finale](../CHECKLIST.md)

</div>
