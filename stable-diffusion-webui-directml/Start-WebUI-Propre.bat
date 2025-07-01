::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCqDJGqF4VQ1LxpGSAG+OGS5E7gZ5vy7/++VsUIhfeEwdoqb26SeHMkQ5UvhSYU513hWnfQIBR1eawGiYQELoG1NuCqMNMj8
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSjk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCuDJHCluU4/KxpYSTixKGq4CrBczOH96f+Uq0ITFMMSXLPIzrWMLOVe7kzic4M+33VU1dwJDg5RMxaifAo3vWNOikiEOcSZoULSXkmL6k4UEmNyknDZgyV1Zctt+g==
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
REM ───────── 0.  Empêcher Gradio d’ouvrir son propre onglet
set "GRADIO_LAUNCH_BROWSER=False"

REM ───────── 1.  Aller dans le dossier Stable Diffusion
cd /d "D:\IA-locale\Stable Diffusion AMD\stable-diffusion-webui-directml"

REM ───────── 2.  Lancer WebUI (une seule instance, sans autolaunch)
start "" /B webui.bat --skip-torch-cuda-test --use-directml --no-half-vae --disable-nan-check --port 7861

REM ───────── 3.  Attendre que le port 7861 réponde
echo [INFO] Attente de l’API (7861)...
:wait_api
timeout /t 2 >nul
powershell -Command ^
  "try{$c=[Net.Sockets.TcpClient]::new();$c.Connect('127.0.0.1',7861)}catch{}; exit([int](!$c.Connected))"
if errorlevel 1 goto wait_api

REM ───────── 4.  Ouvrir Brave en mode WebApp avec le nouveau profil
start "" "C:\Program Files\BraveSoftware\Brave-Browser\Application\brave.exe" ^
  --user-data-dir="D:\IA-locale\Stable Diffusion AMD\BraveWebui" ^
  --app="http://127.0.0.1:7861"

REM ───────── 5.  (Optionnel) fermer la 1ʳᵉ fenêtre Brave éventuelle
timeout /t 6 >nul
powershell -NoLogo -Command ^
  "$p = (Get-Process brave | Where-Object {$_.MainWindowHandle -ne 0} | Sort-Object StartTime | Select -First 1); " ^
  "if ($p) { $p.CloseMainWindow() | Out-Null; Start-Sleep 1; if(-not $p.HasExited){$p.Kill()} }"

start "" "D:\IA-locale\Stable Diffusion AMD\stable-diffusion-webui-directml\VRAM-Option.bat"


exit /b
