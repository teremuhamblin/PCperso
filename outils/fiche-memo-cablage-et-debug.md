# 🔖 Fiche Mémo 1 
- Page — Câblage
- Debug Premier Démarrage (2026)

*À garder sous les yeux sur téléphone ou papier le jour du montage.*

---

## 🔌 1. Les câbles à ne JAMAIS confondre

| Câble | Aspect & Détrompeur | Où le brancher ? | Piège fatal à éviter |
| :--- | :--- | :--- | :--- |
| **ATX 24-pin** | Gros bloc 20+4 broches | Bord droit de la carte mère | Pousser jusqu'au clic du loquet (soutenir la carte par dessous). |
| **CPU / EPS (`4+4`)** | 8 broches séparables en **4+4** | Haut gauche de la carte mère (`CPU_PWR`) | **Ne jamais forcer un câble PCIe 6+2 dedans !** |
| **PCIe (`6+2`)** | 8 broches séparables en **6+2** | Carte graphique (GPU) | Utiliser des câbles séparés depuis la PSU (éviter le câble en Y sur gros GPU). |
| **`12V-2x6` (ATX 3.1)** | Connecteur compact **12+4 broches** | GPU récents (RTX 5000 / certaines cartes) | **Enfoncer à 100 % sans aucun espace visible** + pas de pliure à < 3,5 cm. |
| **`CPU_FAN` / `AIO_PUMP`** | Petite prise **4-pin PWM** | Haut de la carte mère près du CPU | Ne pas oublier `CPU_FAN` sinon le BIOS bloque le démarrage. |
| **RGB (`ARGB 5V` vs `RGB 12V`)** | **3 broches** (5V) vs **4 broches** (12V) | En-têtes `JARGB` / `ADD_GEN2` | **Ne jamais brancher du 5V sur du 12V** → LED grillées instantanément. |

> ⚠️ **Cartes mères Back-Connect (`ASUS BTF` / `MSI Project Zero` / `GIGABYTE Stealth`) :**  
> Tous les connecteurs (`24-pin`, `EPS`, `SATA`, `F_PANEL`, ventilateurs) se branchent **au dos** de la carte mère. Vérifie que les découpes de ton boîtier correspondent **exactement** à la marque de ta carte mère avant de la visser !

---

## 🚦 2. Diagnostic Express : voyants **EZ Debug LED**

Si le PC s'allume mais n'affiche rien à l'écran, regarde les 4 petites LED sur le bord droit de la carte mère :

| LED allumée / fixe | Signification | Actions rapides (du plus fréquent au plus rare) |
| :--- | :--- | :--- |
| 🔴 **CPU** | Processeur non détecté ou mal alimenté | 1. Vérifier le câble **`4+4` EPS** en haut à gauche (et côté PSU).<br>2. Vérifier le branchement `CPU_FAN`.<br>3. Contrôler si le BIOS nécessite une mise à jour (*BIOS Flashback*). |
| 🟡 **DRAM** | Mémoire vive non initialisée | 1. **En DDR5, attendre 1 à 3 minutes** au tout premier boot (*Memory Training*) !<br>2. Appuyer fort sur les barrettes dans les slots **A2 et B2** jusqu'au double clic.<br>3. Tester avec **une seule barrette** en A2. |
| ⚪ **VGA** | Carte graphique non détectée | 1. **Brancher l'écran sur le GPU** (et non sur la carte mère !).<br>2. Ré-enfoncer le GPU à fond dans le port PCIe x16.<br>3. Vérifier l'insertion complète du câble **`12V-2x6`** ou des PCIe 8-pin. |
| 🟢 **BOOT** | Aucun système d'exploitation trouvé | **C'est normal sur un PC neuf !** Branche ta clé USB d'installation Windows et redémarre (ou entre dans le BIOS avec `Suppr` / `F2`). |

---

## 🔄 3. Réinitialisation BIOS (Clear CMOS) si blocage après réglage RAM/XMP/EXPO

1. **Éteins le PC** et bascule l'interrupteur de l'alimentation sur **`O` (OFF)** + débranche la prise secteur.
2. Appuie 5 secondes sur le bouton Power du boîtier pour vider les condensateurs.
3. Utilise le bouton **`Clear CMOS`** à l'arrière (si présent) **OU** touche simultanément les deux broches `JBAT1` / `CLRTC` pendant 10 secondes avec un tournevis (sinon retire la pile CR2032 pendant 5 minutes).
4. Rebranche et redémarre : le BIOS revient aux réglages d'usine.
