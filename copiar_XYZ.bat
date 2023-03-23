@echo off
xcopy /i %1 \Users\%USERPROFILE%\Documents\Lotes\%1
xcopy /i %2 \Users\%USERPROFILE%\Documents\Lotes\%2
echo Los dos archivos se han copiado correctamente!
pause