# BetterSDML 👥‍💻

*A small "plug-and-play" kit to launch **Stable Diffusion WebUI – DirectML** on AMD cards, hassle-free.*

*Automatic VRAM reset • Integrated Portable Brave • Optimized batch scripts*

---

## ✨ Why BetterSDML?

Using **Stable Diffusion WebUI DirectML** on Windows with an AMD GPU often leads to:

- **VRAM overloads** that block subsequent generations;
- the need to **manually close** Python, Brave, and CMD windows;
- difficulty in keeping a **clean and functional installation**.

BetterSDML was created to solve these issues **and** to make launching the WebUI as a standalone web app easier.

It includes `.bat` scripts that:

1. Cleanly close `python.exe`, Brave (portable), and the launcher CMD;
2. Free VRAM (2-second pause);
3. Relaunch the WebUI + Brave in a single click.

---

## 📸 Visual preview

| Screenshot                      | Description                              |
| ------------------------------ | ---------------------------------------- |
| ![WebUI](screenshot_webui_interface.png)      | Main WebUI interface                     |
| ![Prompt](screenshot_reset_vram_prompt.png)   | VRAM reset prompt (Y/N)                  |
| ![Brave](screenshot_brave_loading.png)        | Brave closes and restarts automatically  |
| ![CMD](screenshot_cmd_startup.png)            | CMD launcher that loads the interface    |

---

## 📁 Project structure

```
BetterSDML/
├── BraveWebui/                              ← Portable Brave (auto-installed)
└── stable-diffusion-webui-directml/
    ├── Lancer-StableDiffusion.exe       ← Main launcher (custom icon)
    ├── Start-WebUI-Propre.bat           ← Clean launch (improved version)
    ├── Reset-VRAM.bat                   ← Frees VRAM + relaunches WebUI
    ├── VRAM-Option.bat                  ← Y/N menu to activate auto-restart
    ├── Start-test.bat                   ← Test/backup script
    └── StableDiffusion.ico              ← Custom icon (for shortcuts)
```

> **Note:** BetterSDML **does not include** the ~10 GB WebUI installation.> You must clone or install **Stable-Diffusion-WebUI-DirectML** in this folder,> or copy/paste your own installation here manually.

---

## 🚀 Quick start

```bat
:: Clone the repo (or download ZIP)
> git clone https://github.com/your-user/BetterSDML.git

:: Navigate to the folder
> cd BetterSDML\stable-diffusion-webui-directml

:: (Option A) Launch the official install
> webui-user.bat  :: or python launch.py

:: Full launch (first time)
> Lancer-StableDiffusion.exe

:: Prompt for auto VRAM reset
> VRAM-Option.bat   :: Y = yes | N = no
```

---

## 🔧 Requirements

| Component          | Source                     | Notes                                     |
| ------------------ | -------------------------- | ----------------------------------------- |
| **AMD GPU**        | Adrenalin Driver 23.5+     | Tested with RX 6800 XT (16 GB)            |
| **DirectX 12**     | Included with Windows      | Required for DirectML                     |
| **WebUI DirectML** | Git or manual copy         | Must be placed in this repo’s folder      |
| **Brave Portable** | Auto-installed             | Saved in `BraveWebui/`                    |

---

## 🛠 Included scripts

| Script                     | Function                                                  |
| -------------------------- | --------------------------------------------------------- |
| **Start-WebUI-Propre.bat** | Launches WebUI, installs Brave if needed                  |
| **Reset-VRAM.bat**         | Closes Python + Brave + CMD, frees VRAM, relaunches WebUI |
| **VRAM-Option.bat**        | Enables/disables auto-restart                             |
| **Start-test.bat**         | Emergency/test launcher                                   |

---

## ⚠️ Limitations & Roadmap

- Paths are adapted to **my personal setup** — you can modify them.
- No all-in-one installer yet (but it's planned).
- Not compatible with Mac/Linux (DirectML is Windows-only).

> 🔧 This project was made to fix **my own VRAM issues** and simplify launching WebUI.> It requires a **basic manual install** of SD WebUI DirectML (via command line or copy).> Brave Portable installs itself in the right folder.> I'm not a dev — I built this with ChatGPT’s help.> If someone wants to improve or reuse it, go ahead — I’m just trying to help AMD users.

---

## 🗺 Roadmap (based on my experience)

1. One-click AMD installer (EXE).
2. Model cleaner script + multi-VAE support.
3. Colorful PowerShell interface (logs, VRAM timers, etc.)

---

## 🤝 Thanks

- **lokiju665** for testing and feedback.
- **ChatGPT** for scripting help.
- The **SD-DirectML** community for AMD support.

---

## 📜 License

MIT — Free to use, modify, share. No warranty. Back up your files!