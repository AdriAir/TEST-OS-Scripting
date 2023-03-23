@echo off

if not exist %1 goto no else goto yes

:yes
type %1
goto end

:no
echo No existe el archivo pasado por parametro
goto end

:end
pause
