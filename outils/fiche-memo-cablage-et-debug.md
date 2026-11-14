# 🔖 Fiche Mémo 1 Page — Câblage & Dépannage Express

Garde cette page ouverte sur ton téléphone ou imprime-la pendant l'assemblage pour éviter toute hésitation sur les câbles ou les voyants de démarrage.

---

## 🔌 Ne plus jamais confondre les câbles d'alimentation

| Nom sur le câble / prise | Nombre de broches | Destination exacte | Piège à éviter |
| :--- | :--- | :--- | :--- |
| **`ATX` / `MB`** | `24 pins` (ou `20+4`) | Bord droit de la carte mère | Très ferme à clipser : soutiens la carte mère par dessous. |
| **`CPU` / `EPS`** | `8 pins` (`4+4` détachables) | Haut gauche de la carte mère | **Ne jamais forcer un câble PCIe GPU ici !** |
| **`PCIe` / `VGA`** | `8 pins` (`6+2` détachables) | Carte graphique (GPU) | Utilise 2 câbles séparés depuis l'alim si le GPU a 2 prises. |
| **`12VHPWR` / `12V-2x6`** | `16 pins` (12+4 petits) | Carte graphique récente | Enfoncer à 100 % sans aucun jour visible, pas de pliure serrée. |
| **`SATA Power`** | Prise plate en "L" | Disques SATA / contrôleur RGB | Ne se branche jamais sur la carte mère, uniquement sur les périphériques. |

---

## 🚨 Que faire si ça ne démarre pas ? (Arbre express)

```mermaid
flowchart TD
    Start["Appui sur Power"] --> Q1{"Les ventilateurs tournent ?"}

    Q1 -- "Non" --> A1["1. Alim sur I (On) ?<br/>2. Câble 24-pin clipsé à fond ?<br/>3. Broches POWER SW au bon endroit ?"]
    Q1 -- "Oui mais écran noir" --> Q2{"Câble écran branché<br/>sur la CARTE GRAPHIQUE ?"}

    Q2 -- "Non" --> FixVideo["Déplacer HDMI/DP vers le bas (sur le GPU)"]
    Q2 -- "Oui" --> Q3{"Quelle LED 'EZ Debug'<br/>reste allumée ?"}

    Q3 -- "DRAM" --> FixRAM["Réinsérer la RAM (clic) ou tester 1 barrette en A2.<br/>Sur DDR5/AM5 : patienter 2-3 min au 1er boot."]
    Q3 -- "CPU" --> FixCPU["Vérifier le câble CPU 4+4 en haut à gauche.<br/>Vérifier si BIOS Flashback nécessaire."]
    Q3 -- "VGA" --> FixVGA["Réinsérer le GPU et vérifier ses câbles d'alim."]
    Q3 -- "BOOT" --> FixBOOT["Tout est OK côté matériel !<br/>Insérer la clé USB d'installation Windows."]
```
