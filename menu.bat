@echo off
echo.
color a0

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



@echo off
set "ruta_red=\\nombre_de_la_maquina\compartido"

REM Crear una carpeta en la máquina de red
if not exist "%ruta_red%\nueva_carpeta" (
    mkdir "%ruta_red%\nueva_carpeta"
    echo Carpeta creada.
) else (
    echo La carpeta ya existe.
)

REM Eliminar una carpeta en la máquina de red
if exist "%ruta_red%\carpeta_a_eliminar" (
    rmdir /s /q "%ruta_red%\carpeta_a_eliminar"
    echo Carpeta eliminada.
) else (
    echo La carpeta no existe.
)

REM Mover una carpeta en la máquina de red
if exist "%ruta_red%\carpeta_origen" (
    move "%ruta_red%\carpeta_origen" "%ruta_red%\carpeta_destino"
    echo Carpeta movida.
) else (
    echo La carpeta de origen no existe.
)

REM Copiar una carpeta en la máquina de red
if exist "%ruta_red%\carpeta_origen" (
    xcopy /E /I "%ruta_red%\carpeta_origen" "%ruta_red%\carpeta_destino"
    echo Carpeta copiada.
) else (
    echo La carpeta de origen no existe.
)

pause



:manipulacion_de_archivo_manu



:ejecutar_servicios_maxi



:salir
exit
