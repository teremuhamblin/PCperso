# 6. Diagnostic et pannes courantes

Pas de panique si le PC ne démarre pas du premier coup. 90 % des soucis sont dus à un câble mal enclenché.

## 🚫 Cas 1 : Rien ne se passe (aucun ventilateur, aucune LED)

1. L'interrupteur à l'arrière de l'alimentation est-il bien sur **`I`** (et la multiprise allumée) ?
2. Le câble **ATX 24 broches** est-il enfoncé à fond côté carte mère **ET** côté alimentation ?
3. Les câbles **F_PANEL** (`Power SW`) sont-ils branchés sur les bonnes broches ? (Consulte le manuel).

---

## 💡 Cas 2 : Les ventilateurs tournent, mais écran noir

Regarde les **4 LEDs de diagnostic (EZ Debug LED)** souvent situées en haut à droite de la carte mère. La LED qui reste allumée indique le problème :

- **LED `CPU`** :
  - Câble `CPU 8 broches` oublié ou mal branché (haut gauche).
  - CPU mal posé ou pins du socket tordus.
  - BIOS trop ancien pour ce processeur (utilise la fonction *BIOS Flashback* si disponible).
- **LED `DRAM`** :
  - Barrettes pas assez enfoncées (il faut entendre le clic des deux côtés).
  - Mauvais slots utilisés (essaie avec **une seule barrette** dans le slot A2/B2).
- **LED `VGA`** :
  - **L'écran est-il bien branché sur la carte graphique** et non sur la carte mère ?
  - GPU mal enfoncé dans le port PCIe ou câbles d'alimentation manquants/mal clipsés.
- **LED `BOOT`** :
  - C'est normal si Windows n'est pas encore installé ! Branche ta clé USB d'installation et redémarre.

---

## 🌡️ Cas 3 : Le PC s'éteint tout seul ou surchauffe

- As-tu bien **retiré le film plastique** sous le ventirad / la pompe du watercooling ?
- La pompe du watercooling ou le ventilateur du CPU est-il bien branché sur `CPU_FAN` / `AIO_PUMP` ?
- Les ventilateurs du boîtier soufflent-ils dans le bon sens (air frais qui rentre par l'avant/bas, air chaud qui sort par l'arrière/haut) ?

---

## 💥 Cas 4 : Écrans bleus (BSOD) ou plantages en jeu

1. **Désactive temporairement XMP / EXPO** dans le BIOS pour voir si la RAM est instable.
2. Vérifie que les câbles d'alimentation du GPU sont bien **enfoncés à fond** (surtout le connecteur 12V-2x6).
3. Mets à jour le **BIOS** de la carte mère vers la dernière version stable.

> 🔄 **Reset BIOS (Clear CMOS)** : Si le PC ne démarre plus après un réglage dans le BIOS, débranche le PC, retire la pile plate ronde de la carte mère pendant 5 minutes (ou utilise le bouton/cavalier *Clear CMOS*), puis remets-la.

---
⬅️ [Chapitre 5 : Windows et pilotes](05-windows-pilotes-et-tests.md) | 🏠 [Retour à l'accueil](../README.md)
