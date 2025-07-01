@echo off
echo Souhaitez-vous activer un reset automatique de la VRAM apres cette session ? (O/N)
set /p choix=

if /I "%choix%"=="O" (
    echo Ok! Le script de reset se lancera apres votre session.
    pause
    call "D:\IA-locale\Stable Diffusion AMD\stable-diffusion-webui-directml\Reset-VRAM.bat"
) else (
    echo Aucun reset ne sera effectue.
    timeout /t 2 >nul
)
exit
