@echo off
cls

set /p edad=Ingresa tu edad: 
if %edad% lss 10 (
    echo Eres muy joven
    ) else if %edad% leq 30 (
    echo Que mala edad tienes
    ) else (
       echo Que bien te veo
    )

pause