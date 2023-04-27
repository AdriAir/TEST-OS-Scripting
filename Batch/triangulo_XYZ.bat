setlocal EnableDelayedExpansion

@echo off
CLS
echo Dibujo por pantalla

set height=%2
set char=%1

for /l %%i in (1,1,%height%) do (   
    set /a chars=%%i
    set "line="
    for /l %%j in (1,1,!chars!) do set "line=!line!!char!"
    echo !line!
)
for /l %%i in (%height%,-1,2) do (   
    set /a chars=%%i-1
    set "line="
    for /l %%j in (1,1,!chars!) do set "line=!line!!char!"
    echo !line!
)