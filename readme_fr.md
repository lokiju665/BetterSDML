
# BetterSDML 👥‍💻

*Un petit kit « plug-and-play » pour lancer ****Stable Diffusion WebUI – DirectML**** sur les cartes AMD, sans prise de tête.*

*Réinitialisation automatique de la VRAM • Brave Portable intégré • Scripts batch optimisés*

---

## ✨ Pourquoi BetterSDML ?

Utiliser **Stable Diffusion WebUI DirectML** sur Windows avec une carte AMD, c’est souvent :

- des **surcharges de VRAM** qui bloquent les générations suivantes ;
- la nécessité de **fermer manuellement** Python, Brave et les consoles CMD ;
- la difficulté de **maintenir une installation propre et fonctionnelle**.

**BetterSDML**, ce sont des scripts `.bat` qui :

1. ferment proprement `python.exe`, Brave Portable et les fenêtres CMD ;
2. libèrent la VRAM (pause de 2 secondes) ;
3. relancent WebUI + Brave d’un simple clic.

---

## 📸 Aperçu visuel

| Capture d’écran                              | Description                                   |
|---------------------------------------------|-----------------------------------------------|
| `screenshot_webui_interface.png`            | Interface principale de WebUI                 |
| `screenshot_reset_vram_prompt.png`          | Fenêtre de confirmation pour le reset VRAM    |
| `screenshot_brave_loading.png`              | Brave se ferme puis redémarre automatiquement |
| `screenshot_cmd_startup.png`                | Lancement automatique par CMD                 |

---

## 📁 Structure du projet

```
BetterSDML/
├── BraveWebui/                              ← Brave Portable (téléchargé au 1er lancement)
└── stable-diffusion-webui-directml/
    ├── Lancer-StableDiffusion.exe       ← Lanceur principal
    ├── Start-WebUI-Propre.bat           ← Démarrage propre (version améliorée)
    ├── Reset-VRAM.bat                   ← Libère la VRAM + relance WebUI
    ├── VRAM-Option.bat                  ← Menu O/N pour activer la relance automatique
    ├── Start-test.bat                   ← Script de test/sauvegarde
    └── StableDiffusion.ico              ← Icône personnalisée pour raccourcis (facultatif)
```

> **Note :** BetterSDML **n’inclut pas** les ~10 Go de l’installation WebUI.  
> — Vous devez cloner ou installer **Stable-Diffusion-WebUI-DirectML** *dans ce dossier*,  
> — ou copier/coller votre propre installation ici.

---

## 🚀 Démarrage rapide

```bat
:: Cloner le dépôt (ou télécharger le ZIP)
> git clone https://github.com/votre-utilisateur/BetterSDML.git

:: Aller dans le dossier DirectML
> cd BetterSDML\stable-diffusion-webui-directml

:: (Option A) Lancer l’installation officielle
> webui-user.bat  :: ou python launch.py

:: Lancement complet (1ère fois)
> Lancer-StableDiffusion.exe

:: Activer la relance automatique de la VRAM ?
> VRAM-Option.bat   :: O = oui | N = non
```

---

## 🔧 Prérequis

| Composant          | Où l’obtenir                | Remarques                                       |
| ------------------ | --------------------------- | ----------------------------------------------- |
| **Carte AMD**      | Pilote Adrenalin 23.5+      | Testé avec une RX 6800 XT (16 Go)               |
| **DirectX 12**     | Intégré à Windows 10/11     | —                                               |
| **WebUI DirectML** | Clonage Git ou copie locale | Une installation propre (environnement Python)  |
| **Brave Portable** | Téléchargé automatiquement  | Sauvegardé dans `BraveWebui/`                   |

---

## 🛠 Scripts inclus

| Script                     | Fonction                                                  |
|---------------------------|------------------------------------------------------------|
| **Start-WebUI-Propre.bat** | Lance WebUI, télécharge Brave si nécessaire               |
| **Reset-VRAM.bat**         | Ferme Python + Brave + CMD, libère la VRAM, relance WebUI |
| **VRAM-Option.bat**        | Active/désactive la relance automatique                   |
| **Start-test.bat**         | Lanceur de secours ou test                                |

---

## ⚠️ Limitations et feuille de route

- Les chemins sont adaptés à **mon installation personnelle** — à vous de les ajuster si besoin.
- Pas encore d’installeur « tout-en-un » (c’est prévu).
- Incompatible Mac/Linux (DirectML = Windows uniquement).

> 🔧 Ce projet a été conçu pour résoudre **mes problèmes de VRAM et de navigation WebUI** rapidement.  
> Il nécessite une **installation minimale** de DirectML via ligne de commande (ou par copie manuelle).  
> Brave Portable s’installe automatiquement dans le bon dossier.  
> Je ne suis pas développeur — j’ai conçu ce projet avec l’aide de ChatGPT.  
> Si quelqu’un souhaite améliorer ou contribuer, c’est bienvenu — je le publie pour aider les autres utilisateurs AMD.

---

## 🗺 Feuille de route (selon mes tests et mon temps)

1. Installeur AMD en un clic (fichier EXE).
2. Script de nettoyage des modèles + prise en charge multi-VAE.
3. Interface PowerShell colorée (logs, minuteur VRAM, etc.).

---

## 🤝 Remerciements

- **lokiju665** pour les tests concrets.
- **ChatGPT** pour le débogage.
- La communauté **SD-DirectML** pour le soutien AMD.

---

## 📜 Licence

MIT — Libre d’utiliser, modifier, partager. Aucune garantie. Sauvegardez toujours vos fichiers !
