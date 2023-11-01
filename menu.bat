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
@echo off
echo.
color a0
title Gestion de Carpetas en Red

:menu
cls
echo -------------- Menu de Gestion de Carpetas --------------
echo 1) Manipular ruta de la maquina previamente escaneada.
echo 2) Crear carpeta.
echo 3) Eliminar carpeta.
echo 4) Editar carpeta.
echo 5) Mover carpeta.
echo 6) Copiar carpetas.
echo 7) Salir y limpiar pantalla.
echo ---------------------------------------------------------

set /p opcion="Seleccione una opcion (1-7): "

if "%opcion%"=="1" goto manipular
if "%opcion%"=="2" goto crear
if "%opcion%"=="3" goto eliminar
if "%opcion%"=="4" goto editar
if "%opcion%"=="5" goto mover
if "%opcion%"=="6" goto copiar
if "%opcion%"=="7" goto limpiar
goto menu

:manipular
cls
echo Has seleccionado la opción 1) Manipular ruta de la maquina previamente escaneada.
setlocal enabledelayedexpansion

set "ruta=C:\Ruta\A\Directorio"

:: Separa la ruta en partes usando el caracter de barra invertida (\) como delimitador
for /f "tokens=*" %%a in ("!ruta:\=" "!") do set "carpeta=%%a"
(consultar al profeeeeeeeeeeeeeeeeeeeeeeee------------)

echo El nombre de la carpeta es: !carpeta!

endlocal

pause
goto menu

:crear
cls
echo Has seleccionado la opcion 2) Crear carpeta.

set /p nuevaCarpeta="Ingrese el nombre de la nueva carpeta: "
mkdir "%nuevaCarpeta%"
echo Carpeta "%nuevaCarpeta%" creada correctamente.
pause
goto menu

:eliminar
cls
echo Has seleccionado la opcion 3) Eliminar carpeta.
set /p carpetaAEliminar="Ingrese la carpeta a eliminar: "
rmdir /s /q "%carpetaAEliminar%"
echo Carpeta "%carpetaAEliminar%" eliminada correctamente.
pause
goto menu

:editar
cls
echo Has seleccionado la opción 4) Editar carpeta.
title Editar Archivo

set /p archivo="Ingrese el nombre del archivo a editar: "

if not exist "%archivo%" (
    echo El archivo "%archivo%" no existe.
pause
goto menu

:mover
cls
echo Has seleccionado la opcion 5) Mover carpeta.
set /p origenCarpeta="Ingrese la carpeta de origen: "
set /p destinoCarpeta="Ingrese la carpeta de destino: "
move /y "%origenCarpeta%" "%destinoCarpeta%"
echo Carpeta "%origenCarpeta%" movida a "%destinoCarpeta%" correctamente.
pause
goto menu

:copiar
cls
echo Has seleccionado la opcion 6) Copiar carpetas.
set /p origenCarpeta="Ingrese la carpeta de origen: "
set /p destinoCarpeta="Ingrese la carpeta de destino: "
xcopy /e /i "%origenCarpeta%" "%destinoCarpeta%"
echo Carpeta "%origenCarpeta%" copiada a "%destinoCarpeta%" correctamente.
pause
goto menu

:limpiar
cls
echo Saliendo y limpiando pantalla...
timeout /t 2 >nul
exit

:manipulacion_de_archivo_manu



:ejecutar_servicios_maxi



:salir
exit
