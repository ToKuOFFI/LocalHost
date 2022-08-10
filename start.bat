:menu
@echo off & color 0f & cls & title start.bat By ToKu
color C
echo.
echo LOCAL HOST BY TOKU DISCORD.GG/SINIXDEV .
echo.
echo    [A] Lancer le serveur    [B] Besoin d'aide  
echo    [C] Actualite            [D] Fermer le programme
echo.
set /p answer="Quelle option choisissez-vous ? > "
if /i {%ANSWER%}=={a} (goto :a)
if /i {%ANSWER%}=={b} (goto :b)
if /i {%ANSWER%}=={c} (goto :c)
if /i {%ANSWER%}=={D} (goto :d)
goto :menu
exit

:a
color F
echo.
echo Lancement du serveur en cours... Merci de bien vouloir patienter !
ping localhost -n 2 >nul
echo.
cd /d D:\Users\sinix\Documents\FXServer\server-data
D:\Users\sinix\Documents\FXServer\FXServer.exe +exec server.cfg
rem 
pause
exit

:b
echo.
color F
echo Repondez par [O] ou [N]
set /p answer="Etre redirige vers notre discord ? > "
if /i {%ANSWER%}=={O} (start https://discord.gg/sinixdev)
if /i {%ANSWER%}=={N} (goto :menu)
ping localhost -n 5 >nul
echo.
echo Repondez par [O] ou [N]
set /p answer="Etre dirige vers notre github ? > "
if /i {%ANSWER%}=={O} (start https://github.com/ToKuOFFI)
if /i {%ANSWER%}=={N} (goto :menu)
goto :menu
exit

:c 
echo.
color F
echo Releases du 10/08/2022 !
echo Creation du ToKuHost 
echo Amelioration du Start.bat
echo.
echo.
echo Repondez par [O] ou [N]
set /p answer="Revenir au menu de lancement ? > "
if /i {%ANSWER%}=={O} (goto :menu)
if /i {%ANSWER%}=={N} (goto :d)
pause
exit

:d
echo.
color F
echo Vous allez fermer le programme !
timeout /t 20
exit
