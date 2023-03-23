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

del %1

:end
pause