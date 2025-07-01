@echo off
rem ===========================================================
rem  Reset VRAM  +  relance Stable Diffusion (DirectML)
rem ===========================================================

echo [1/4] Fermeture de la WebUI (python.exe)…
taskkill /IM "python.exe" /F >nul 2>&1

echo [2/4] Fermeture de Brave (brave.exe)…
taskkill /IM "brave.exe" /F >nul 2>&1

echo [3/4] Fermeture des anciennes fenêtres « Lancer-StableDiffusion »…
rem --- 3-a : tente d’abord de tuer l’éventuel exécutable GUI
taskkill /IM "Lancer-StableDiffusion.exe" /F >nul 2>&1

rem --- 3-b : boucle sur chaque cmd.exe et tue celles dont le titre matche
for /F "tokens=2 delims=," %%P in (
  'tasklist /FI "IMAGENAME eq cmd.exe" /FO CSV /NH'
) do (
  rem On récupère la ligne détaillée (avec le /V) et on cherche la chaîne :
  tasklist /FI "PID eq %%~P" /V /FO LIST | findstr /I "Lancer-StableDiffusion" >nul
  if not errorlevel 1 (
    echo    -> Kill fenêtre CMD PID %%~P
    taskkill /PID %%~P /F >nul 2>&1
  )
)

echo      Pause 2 s pour libérer la VRAM…
timeout /T 2 /NOBREAK >nul

echo [4/4] Relance de Start-WebUI-Propre.bat…
cd /d "D:\IA-locale\Stable Diffusion AMD\stable-diffusion-webui-directml"
start "" "Lancer-StableDiffusion.exe"

echo ✓ Relance terminée avec succès!

rem -- Nettoyage du fichier parasite éventuel « Kill »
if exist "Kill" (
    del /F /Q "Kill" >nul 2>&1
)

exit