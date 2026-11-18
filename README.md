<div align="center">

![Bannière PCperso](assets/banner.svg)

# PCperso

### 🖥️⚡ *Tout savoir sur le Montage d'un PC Gamer*
### 🎮 *Le Guide complet de A à Z, conçu pour assembler ton PC en toute confiance*

<br>

[![Version v1.2](https://img.shields.io/badge/Version-v1.2-black?style=for-the-badge)](./CHANGELOG.md)
![Guide de A à Z](https://img.shields.io/badge/Guide-De_A_%C3%A0_Z-black?style=for-the-badge)
![Langue Français](https://img.shields.io/badge/Langue-Fran%C3%A7ais-black?style=for-the-badge)
![Public Débutants & Passionnés](https://img.shields.io/badge/Public-D%C3%A9butants_%26_Passionn%C3%A9s-black?style=for-the-badge)
![Format Ebook / Open Guide](https://img.shields.io/badge/Format-Ebook_%2F_Open_Guide-black?style=for-the-badge)

<br>

*Apprends à choisir les bons composants, assembler ton propre ordinateur pas à pas, configurer le BIOS, optimiser le refroidissement et installer Windows sans stress.*

[✨ Nouveautés v1.2](#-nouveautés-v12) • [📚 Sommaire](#-sommaire-du-guide) • [🧰 Outils & Scripts](#-outils-fiches--scripts) • [✅ Checklist Jour J](#-bonus-pratique) • [🤝 Entraide](#-entraide--contribution) • [📜 Licence](#-licence)

</div>

---

> [!TIP]
> **🎯 C'est fait pour toi si tu es :**
> * 🌱 **Débutant** et que tu veux monter ton premier PC sans crainte de casser un composant.
> * 🔧 **Passionné de hardware** ou **futur builder** en quête d'une méthode claire, structurée et sans jargon inutile.

> [!NOTE]
> ### ✨ Nouveautés v1.2
> * 🌬️ **Nouveau chapitre 08 :** [*Refroidissement, Airflow & Entretien*](./guide/08-refroidissement-et-entretien.md) *(sens des ventilateurs, courbes, pâte thermique et nettoyage)*.
> * 🧩 **Nouvel outil :** [*Configurations Types par Budget*](./outils/configs-types.md) pour démarrer sur une base saine *(1080p, 1440p, 4K)*.
> * 🔌 **Mise à jour hardware :** ajout des standards récents (**ATX 3.1 / `12V-2x6`**, cartes mères à connecteurs inversés **BTF / Project Zero**, **PCIe 5.0**).
> * 📋 *Tous les détails de la mise à jour dans le [`CHANGELOG.md`](./CHANGELOG.md).*

---

## 📚 Sommaire du guide

| Étape | Chapitre | Ce que tu vas maîtriser | Mots-clés |
| :---: | :--- | :--- | :--- |
| **01** | 🧩 [**Composants & Compatibilité**](./guide/01-composants-compatibilite.md) | Choisir des pièces 100 % compatibles et comprendre le rôle exact de chacune. | <kbd>Socket</kbd> <kbd>Chipset</kbd> <kbd>Watts</kbd> |
| **02** | 🔌 [**Connecteurs & Préparation**](./guide/02-preparation-et-connecteurs.md) | Identifier tous les câbles et ports de ta carte mère avant de sortir le tournevis. | <kbd>ATX 24-pin</kbd> <kbd>12V-2x6</kbd> <kbd>M.2</kbd> |
| **03** | 🛠️ [**Assemblage & Câblage**](./guide/03-assemblage-et-cablage.md) | Installer processeur, RAM, SSD, carte graphique et gérer le *cable management*. | <kbd>CPU</kbd> <kbd>RAM</kbd> <kbd>GPU</kbd> |
| **04** | ⚙️ [**BIOS / UEFI & Optimisation**](./guide/04-bios-uefi-et-xmp-expo.md) | Configurer ton BIOS, activer les profils mémoire, Resizable BAR et courbes PWM. | <kbd>UEFI</kbd> <kbd>XMP</kbd> <kbd>EXPO</kbd> |
| **05** | 🪟 [**Windows, Pilotes & Tests**](./guide/05-windows-pilotes-et-tests.md) | Installer le système, mettre à jour les drivers, régler l'écran (Hz) et tester la stabilité. | <kbd>OS</kbd> <kbd>Drivers</kbd> <kbd>Bench</kbd> |
| **06** | 🩺 [**Diagnostic & Dépannage**](./guide/06-diagnostic-et-pannes.md) | Identifier l'origine d'un écran noir ou d'une LED d'erreur et résoudre les pannes. | <kbd>EZ Debug</kbd> <kbd>CMOS</kbd> <kbd>FAQ</kbd> |
| **07** | 📖 [**Glossaire Hardware**](./guide/07-glossaire-hardware.md) | Traduire tous les acronymes techniques en français clair et accessible. | <kbd>TDP</kbd> <kbd>VRM</kbd> <kbd>POST</kbd> |
| **08** | 🌬️ [**Refroidissement & Entretien**](./guide/08-refroidissement-et-entretien.md) `Nouveau v1.2` | Maîtriser le flux d'air du boîtier, la pâte thermique et garder un PC propre et silencieux. | <kbd>Airflow</kbd> <kbd>AIO</kbd> <kbd>PWM</kbd> |

---

## 🧰 Outils, Fiches & Scripts

En complément des chapitres du livre, le dépôt met à ta disposition des **outils prêts à l'emploi** *(voir le guide complet dans [`outils/`](./outils/README.md) et [`scripts/`](./scripts/README.md))* :

| Ressource | Utilité | Quand l'utiliser ? | Accès rapide |
| :--- | :--- | :--- | :--- |
| 🎯 **Configs Types par Budget** `Nouveau v1.2` | Exemples de configurations équilibrées (1080p / 1440p / 4K) à adapter à tes besoins. | Avant sélection | [Voir les configs](./outils/configs-types.md) |
| 🧮 **Calculateur Budget & PSU** | Dimensionner ton alimentation (`TDP + marge 25 %`) et suivre tes achats. | Avant commande | [Guide](./outils/calculateur-budget-puissance.md) • [Modèle `.csv`](./outils/modele-config-budget.csv) |
| 🔖 **Fiche Mémo Câblage & Debug** | Synthèse 1 page des câbles à ne pas confondre + arbre visuel *No-POST*. | Jour J & 1er boot | [Ouvrir la fiche](./outils/fiche-memo-cablage-et-debug.md) |
| ⚙️ **Pack Logiciels PC Neuf** | Script PowerShell (`Winget`) installant HWiNFO64, OCCT, CrystalDiskInfo, FanControl et 7-Zip. | Après Windows | [Mode d'emploi](./scripts/README.md) • [Script `.ps1`](./scripts/pack-logiciels-pc-neuf.ps1) |

---

## ✅ Bonus pratique

> [!IMPORTANT]
> **Ne démarre pas ton montage sans ton pense-bête !**
>
> 👉 [**Ouvrir la Checklist interactive de montage**](./CHECKLIST.md)
>
> *Garde cette page (ainsi que la [Fiche Mémo 1 page](./outils/fiche-memo-cablage-et-debug.md)) ouverte sur ton téléphone ou une tablette pendant l'assemblage pour cocher chaque étape en temps réel, de la préparation du bureau jusqu'au premier démarrage.*

---

<details>
<summary>🚀 <b>Parcours Express : comment profiter au mieux de ce dépôt GitHub ?</b> <i>(Clique pour déplier)</i></summary>

<br>

1. ⭐ **Mets une étoile (Star)** en haut à droite pour retrouver facilement le guide le jour du montage.
2. 🎯 **Avant d'acheter :** inspire-toi des [Configs Types](./outils/configs-types.md), vérifie tes choix avec le chapitre 01 et chiffre le tout dans [`modele-config-budget.csv`](./outils/modele-config-budget.csv).
3. 🛠️ **Le Jour J :** garde la [Checklist interactive](./CHECKLIST.md) et la [Fiche Mémo](./outils/fiche-memo-cablage-et-debug.md) sous les yeux, puis suis les chapitres 02 à 05 dans l'ordre.
4. 🖥️ **Confort de lecture :** active le thème sombre de GitHub si tu préfères un meilleur confort visuel pendant l'assemblage.

</details>

---

## 🤝 Entraide & Contribution

* **Tu bloques sur une compatibilité ou un écran noir ?** Ouvre une demande via l'onglet **Issues** du dépôt en sélectionnant le modèle structuré [`demande-aide-config.yml`](./.github/ISSUE_TEMPLATE/demande-aide-config.yml).
* **Tu veux proposer une amélioration ou corriger une coquille ?** Consulte le guide [`CONTRIBUTING.md`](./CONTRIBUTING.md).
* **Curieux de voir l'évolution du projet ?** Parcours l'historique complet dans [`CHANGELOG.md`](./CHANGELOG.md).

---

## 📜 Licence

<div align="center">

[![Licence CC BY-NC-SA 4.0](https://img.shields.io/badge/Licence-CC_BY--NC--SA_4.0-lightgrey?style=for-the-badge&logo=creativecommons&logoColor=black)](./LICENSE)

Ce projet est mis à disposition selon les termes de la licence [**Creative Commons BY-NC-SA 4.0**](https://creativecommons.org/licenses/by-nc-sa/4.0/deed.fr) (détails dans [`LICENSE`](./LICENSE)).  
*Utilisation libre à titre personnel • Partage autorisé avec attribution • Pas d'utilisation commerciale sans accord.*

<br>

🔧 *Bon montage et amuse-toi bien avec ton nouveau PC !* ⚡

</div>
