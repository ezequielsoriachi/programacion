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
if %opcion% == 3 goto manufiles
if %opcion% == 4 goto ejecutar_servicios_maxi
if %opcion% == 5 goto salir


:scannear_red_seba

:menu1
del fichero*.tmp
cls
echo.
echo  -----------------MENU1-----------------------
echo  1. Escanear toda la red LAN
echo  2. Salir
echo.
echo.
set /p opc=Pulse el numero correspondiente para la accion requerida:
if %opc%==1 goto scanner
if %opc%==2 goto inicio


:scanner
cls
echo Introduzca los 3 primeros octetos que forman la red
echo (Ejemplo: 172.16.1)
set /p ip=
cls
echo Escaneando toda la Red de area local (%ip%.0)
echo -----------------------------------------------
FOR /L %%a IN (1,1,254) DO (
echo [ ESCANEANDO IP %%a de 254 ] - [%ip%.%%a]
ping -w 50 -n 1 %ip%.%%a | find "Respuesta" && @ECHO IP Conectada --- [%ip%.%%a] >> fichero1.tmp
)
cls
if exist fichero*.tmp (
echo ---IPs Conectadas--- 
echo.
type fichero1.tmp
echo.
set /p ipe=Introduce la IP para conectarse:
echo.
echo.
echo IP elegida con exito!!, pulse una tecla para salir
del fichero*.tmp
echo.
pause>nul
goto inicio
) 
echo Ip no encontradas, presione una tecla para escanear otra red
pause>nul
goto menu1


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


:manufiles

color 0B
title MANIPULACION DE ARCHIVOS
cls
echo.
echo ------------------------------------------------------------------------------------------------------------------------
echo    QUE DESEA REALIZAR?: 
echo ------------------------------------------------------------------------------------------------------------------------
echo 1. LISTAR ARCHIVOS EN UN DIRECTORIO
echo 2. CREAR NUEVO ARCHIVO
echo 3. MODIFICAR ARCHIVO
echo 4. MOVER ARCHIVO
echo 5. ELIMINAR ARCHIVO
echo 6. RESPALDAR ARCHIVO
echo 7. SALIR
echo ------------------------------------------------------------------------------------------------------------------------
echo.
set /p omf= 
	if %omf% == 1 (goto listar)
	if %omf% == 2 (goto crear)
	if %omf% == 3 (goto modificar)
	if %omf% == 4 (goto mover)
	if %omf% == 5 (goto eliminar)
	if %omf% == 6 (goto bu)
	if %omf% == 7 (goto inicio)
	if %omf% == 77 (goto m)
	if %omf% neq 77 (goto ono)


:listar
title LISTAR ARCHIVOS
cls
echo.
echo INGRESE EL DIRECTORIO QUE DESEA REVISAR: 
echo.
set /p dt1=
cls
echo.
echo LOS ARCHIVOS EN ESTE DIRECTORIO SON: 
echo.
for /r "%dt1%" %%I in (*.*) do (echo %%I)
echo.
pause>nul
goto :manufiles


:crear
title CREAR ARCHIVO
cls
echo.
echo INGRESE EL DIRECTORIO DONDE SE GUARDARA EL ARCHIVO:
echo.
set /p dt2= 
cls
echo.
echo INGRESE EL NOMBRE DEL ARCHIVO:
echo.
set /p n2= 
cls 
echo.
echo INGRESE EL CONTENIDO DEL ARCHIVO:
echo.
set /p c2= 
cls
echo.
echo INGRESE LA EXTENSION DEL ARCHIVO:
echo.
set /p e2= 
cls
echo %c2% > "%dt2%\%n2%.%e2%"
cls
echo.
echo OPERACION COMPLETA, PRESIONE CUALQUIER TECLA PARA VOLVER AL MENU PRINCIPAL...
echo.
pause>nul
goto :manufiles


:modificar
title MODIFICAR ARCHIVO
cls
echo.
echo QUE OPERACION DESEA REALIZAR?
echo.
echo 1. AGREGAR CONTENIDO AL ARCHIVO.
echo 2. SOBREESCRIBIR ARCHIVO.
echo.
set /p mod= 
	if %mod% == 1 (goto editar) 
	if %mod% == 2 (goto sobre)	
	if %mod% neq 2 (goto ono)
:editar
cls
echo.
echo INGRESE EL DIRECTORIO DONDE SE ENCUENTRA EL ARCHIVO A EDITAR:
echo.
set /p dt3= 
cls
echo.
echo LOS ARCHIVOS EN ESTE DIRECTORIO SON:
echo.
for /r "%dt3%" %%I in (*.*) do (echo %%I)
echo.
echo INGRESE LA DIRECCION COMPLETA DEL ARCHIVO A EDITAR:
echo.
set /p dt33= 
cls
echo.
echo INGRESE EL CONTENIDO A INTRODUCIR EN EL DOCUMENTO:
echo.
set /p cnt3= 
echo %cnt3% >> "%dt33%"
cls
echo.
echo OPERACION COMPLETA, PRESIONE CUALQUIER TECLA PARA VOLVER AL MENU PRINCIPAL...
echo.
pause>nul
goto :manufiles
:sobre
cls
echo.
echo INGRESE EL DIRECTORIO DONDE SE ENCUENTRA EL ARCHIVO A EDITAR:
echo.
set /p dt333= 
cls
echo.
echo LOS ARCHIVOS EN ESTE DIRECTORIO SON:
echo.
for /r "%dt333%" %%I in (*.*) do (echo %%I)
echo.
echo INGRESE LA DIRECCION COMPLETA DEL ARCHIVO A SOBREESCRIBIR:
echo.
set /p dt3333= 
cls
echo.
echo INGRESE EL CONTENIDO A SOBREESCRIBIR EN EL DOCUMENTO:
echo.
set /p cnt33= 
echo %cnt33% > "%dt3333%"
cls
echo.
echo OPERACION COMPLETA, PRESIONE CUALQUIER TECLA PARA VOLVER AL MENU PRINCIPAL...
echo.
pause>nul
goto :manufiles


:mover
title MOVER ARCHIVO
cls
echo.
echo INGRESE EL DIRECTORIO DONDE SE ENCUENTRA EL ARCHIVO A MOVER:
echo.
set /p dt4= 
cls
echo.
echo LOS ARCHIVOS EN ESTE DIRECTORIO SON:
echo.
for /r "%dt4%" %%I in (*.*) do (echo %%I)
echo.
echo INGRESE LA DIRECCION COMPLETA DEL ARCHIVO A MOVER:
echo.
set /p dt44= 
echo.
echo INGRESE EL DIRECTORIO DONDE SE GUARDARA EL ARCHIVO A MOVER:
echo.
set /p dt444= 
move "%dt44%" "%dt444%"
cls
echo.
echo OPERACION COMPLETA, PRESIONE CUALQUIER TECLA PARA VOLVER AL MENU PRINCIPAL...
echo.
pause>nul
goto :manufiles


:eliminar
title ELIMINAR ARCHIVO
cls
echo.
echo INGRESE EL DIRECTORIO DONDE SE ENCUENTRA EL ARCHIVO A ELIMINAR:
echo.
set /p dt5= 
cls
echo.
echo LOS ARCHIVOS EN ESTE DIRECTORIO SON:
echo.
for /r "%dt5%" %%I in (*.*) do (echo %%I)
echo.
echo INGRESE LA DIRECCION COMPLETA DEL ARCHIVO A ELIMINAR:
echo.
set /p dt55= 
	if exist "%dt55%" (del "%dt55%")
cls
echo.
echo OPERACION COMPLETA, PRESIONE CUALQUIER TECLA PARA VOLVER AL MENU PRINCIPAL...
echo.
pause>nul
goto :manufiles


:bu
title RESPALDAR ARCHIVO
cls
echo.
echo INGRESE EL DIRECTORIO DONDE SE ENCUENTRA EL ARCHIVO A RESPALDAR:
echo.
set /p dt7= 
cls
echo.
echo LOS ARCHIVOS EN ESTE DIRECTORIO SON:
echo.
for /r "%dt7%" %%I in (*.*) do (echo %%I)
echo.
echo INGRESE LA DIRECCION COMPLETA DEL ARCHIVO A RESPALDAR:
echo.
set /p dt77= 
cls
echo.
echo INGRESE EL DIRECTORIO DONDE SE GUARDARA EL ARCHIVO A RESPALDAR:
echo.
set /p dt777= 
copy "%dt77%" "%dt777%"
echo.
pause>nul
goto :manufiles


:m
cls
echo.
echo                                           - PROGRAMA CREADO POR MANUEL FONT -
echo.
pause>nul
goto :manufiles


:ono
title MANIPULACION DE ARCHIVOS
cls
echo.
echo COMANDO NO VALIDO.
echo.
pause>nul
goto :manufiles


:ejecutar_servicios_maxi



:salir
exit
