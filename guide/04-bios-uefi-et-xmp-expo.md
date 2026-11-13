# 4. BIOS/UEFI et profils XMP/EXPO

C'est le moment du premier allumage. Branche ton écran **sur la carte graphique** (pas sur la carte mère), allume l'interrupteur de l'alimentation (`I`), puis appuie sur Power.

## 🚪 Accéder au BIOS

Dès l'allumage, appuie plusieurs fois sur la touche **`Suppr` (Del)** ou **`F2`** selon ta carte mère.

> ℹ️ Le premier démarrage (surtout en DDR5 sur AMD AM5) peut prendre **1 à 3 minutes** pour l'entraînement mémoire. Sois patient !

---

## ✅ Vérifications de base

Dans le BIOS (mode *EZ Mode* ou *Simple*) :
- **Processeur & RAM** : Vérifie que le bon modèle de CPU et la capacité totale de RAM sont détectés.
- **Stockage** : Vérifie que ton SSD apparaît dans la liste.
- **Température CPU** : Doit être stable entre **30°C et 50°C** au repos. Si elle monte rapidement à 80-90°C, éteins le PC et vérifie la fixation du refroidissement.

---

## ⚙️ Réglages essentiels à activer

1. **Activer le profil XMP (Intel) ou EXPO / DOCP (AMD)** :
   - Par défaut, la RAM tourne à sa fréquence minimale (ex : 4800 MHz).
   - Active **XMP / EXPO (Profil 1)** pour qu'elle tourne à la vitesse vendue sur la boîte (ex : 6000 MHz).
2. **Vérifier le mode UEFI (pour Windows 11)** :
   - **CSM** : Désactivé (*Disabled*).
   - **TPM 2.0** (fTPM sur AMD / PTT sur Intel) : Activé (*Enabled*).
   - **Secure Boot** : Activé (*Enabled*).
3. **Resizable BAR (ReBAR)** : Active-le pour de meilleures performances en jeu.
4. **Courbe de ventilation** : Ajuste tes ventilateurs en mode *Silent* ou *Standard* si le PC est trop bruyant au repos.

5. **Sauvegarder et quitter** : Appuie sur **`F10`** puis valide.

---
⬅️ [Chapitre 3 : Assemblage](03-assemblage-et-cablage.md) | ➡️ [Chapitre 5 : Windows, pilotes et tests](05-windows-pilotes-et-tests.md)
