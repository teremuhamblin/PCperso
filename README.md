<div align="center">

![Bannière PCperso](assets/banner.svg)

# PCperso
- 》》 **v1.1** : *(mise à jour)*

### 🖥️⚡ *Tout savoir sur le Montage d'un PC Gamer*
### 🎮 *Le Guide complet de A à Z, conçu pour assembler ton PC en toute confiance*

<br>

[![Version v1.1](https://img.shields.io/badge/Version-v1.1-1f6feb?style=for-the-badge)](./CHANGELOG.md)
![Guide de A à Z](https://img.shields.io/badge/Guide-De_A_%C3%A0_Z-black?style=for-the-badge)
![Langue Français](https://img.shields.io/badge/Langue-Fran%C3%A7ais-black?style=for-the-badge)
![Public Débutants & Passionnés](https://img.shields.io/badge/Public-D%C3%A9butants_%26_Passionn%C3%A9s-black?style=for-the-badge)
![Format Ebook / Open Guide](https://img.shields.io/badge/Format-Ebook_%2F_Open_Guide-black?style=for-the-badge)

<br>

*Apprends à choisir les bons composants, assembler ton propre ordinateur pas à pas, configurer le BIOS et installer Windows sans stress.*

[📚 Sommaire](#-sommaire-du-guide) • [🧰 Outils & Scripts](#-outils-fiches--scripts) • [✅ Checklist Jour J](#-bonus-pratique) • [🤝 Entraide](#-entraide--contribution) • [📜 Licence](#-licence)

</div>

---

> [!TIP]
> **🎯 Ce guide est fait pour toi si tu es :**
> * 🌱 **Débutant** et que tu veux monter ton premier PC sans crainte de casser un composant.
> * 🔧 **Passionné de hardware** ou **futur builder** en quête d'une méthode claire, structurée et sans jargon inutile.

---

## 📚 Sommaire du guide

| Étape | Chapitre | Ce que tu vas maîtriser | Mots-clés |
| :---: | :--- | :--- | :--- |
| **01** | 🧩 [**Composants & Compatibilité**](./guide/01-composants-compatibilite.md) | Choisir des pièces 100 % compatibles et comprendre le rôle exact de chacune. | <kbd>Socket</kbd> <kbd>Chipset</kbd> <kbd>Watts</kbd> |
| **02** | 🔌 [**Connecteurs & Préparation**](./guide/02-preparation-et-connecteurs.md) | Identifier tous les câbles et ports de ta carte mère avant de sortir le tournevis. | <kbd>ATX 24-pin</kbd> <kbd>PCIe</kbd> <kbd>M.2</kbd> |
| **03** | 🛠️ [**Assemblage & Câblage**](./guide/03-assemblage-et-cablage.md) | Installer processeur, RAM, SSD, carte graphique et gérer le *cable management*. | <kbd>CPU</kbd> <kbd>RAM</kbd> <kbd>GPU</kbd> |
| **04** | ⚙️ [**BIOS / UEFI & Optimisation**](./guide/04-bios-uefi-et-xmp-expo.md) | Configurer ton BIOS, activer les profils mémoire et optimiser les ventilateurs. | <kbd>UEFI</kbd> <kbd>XMP</kbd> <kbd>EXPO</kbd> |
| **05** | 🪟 [**Windows, Pilotes & Tests**](./guide/05-windows-pilotes-et-tests.md) | Installer le système, mettre à jour les drivers et vérifier la stabilité thermique. | <kbd>OS</kbd> <kbd>Drivers</kbd> <kbd>Bench</kbd> |
| **06** | 🩺 [**Diagnostic & Dépannage**](./guide/06-diagnostic-et-pannes.md) | Identifier l'origine d'un écran noir ou d'une LED d'erreur et résoudre les pannes. | <kbd>EZ Debug</kbd> <kbd>CMOS</kbd> <kbd>FAQ</kbd> |
| **07** | 📖 [**Glossaire Hardware**](./guide/07-glossaire-hardware.md) `Nouveau v1.1` | Traduire tous les acronymes techniques en français clair et accessible. | <kbd>TDP</kbd> <kbd>VRM</kbd> <kbd>POST</kbd> |

---

## 🧰 Outils, Fiches & Scripts

En complément des chapitres du livre, le dépôt met à ta disposition des **outils prêts à l'emploi** *(voir le guide complet dans [`outils/`](./outils/README.md) et [`scripts/`](./scripts/README.md))* :

| Ressource | Utilité | Quand l'utiliser ? | Accès rapide |
| :--- | :--- | :--- | :--- |
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
<summary>💡 <b>Comment profiter au mieux de ce dépôt GitHub ?</b> <i>(Clique pour déplier)</i></summary>

<br>

1. ⭐ **Mets une étoile (Star)** en haut à droite pour retrouver facilement le guide plus tard.
2. 📖 **Lis les chapitres dans l'ordre** : chaque fichier contient des repères visuels et des schémas issus du dossier `./assets/`.
3. 📊 **Prépare ta config** avec le tableau [`modele-config-budget.csv`](./outils/modele-config-budget.csv) avant de sortir la carte bleue.
4. 🖥️ **Active le thème sombre** de GitHub si tu préfères un confort visuel optimal pendant ton montage.

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
