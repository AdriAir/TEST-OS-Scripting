@echo off

if %1 lss %2 (
        echo %1 es menor que %2
    ) else if %1 == %2 (
        echo %1 es igual a %2
    ) else (
        echo %1 es mayor que %2
    )
pause