@echo off
echo.
color a0
REM prueba maxi

:crear
if exist pruebas (goto inicio) else (MD "C:\pruebas" & goto inicio) 

:inicio
cls
echo.
echo ---------------------------------------------
echo               Selecciona una opcion
echo                1. Scannear red
echo                2. Manipulación de directorios
echo                3. Manipulación de archivos
echo                4. Ejecutar mysql, apache y el servicio de github
echo                5. Salir
echo ---------------------------------------------
set /p opcion= Ingresa tu opcion: 
if %opcion% == 1 goto scannear_red_seba
if %opcion% == 2 goto manipulacion_de_directorios_agus
if %opcion% == 3 goto manipulacion_de_archivo_manu
if %opcion% == 4 goto ejecutar_servicios_maxi
if %opcion% == 5 goto salir


:scannear_red_seba



:manipulacion_de_directorios_agus



:manipulacion_de_archivo_manu



:ejecutar_servicios_maxi



:salir
exit
