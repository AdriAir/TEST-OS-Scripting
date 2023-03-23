@echo off
cls
if "%1"=="" (
    echo No hay ningun parametro
    echo Sintaxis: ARCHIVO.bat ARCHIVO_BORRAR.EXTENSION
    goto end
    ) 
if not exist %1 (
    echo El archivo no existe
    goto end
    )

rename %1 %USERNAME%_%1
dir %USERNAME%_%1
:end
pause