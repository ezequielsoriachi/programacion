@echo off
echo.
color 02

:inicio
cls
echo.
echo ------------------------------------------------------------------------------------------------------------------------
echo    SELECCIONA UN OPCION: 
echo 1. ESCANEAR RED
echo 2. MANIPULACION DE DIRECTORIOS
echo 3. MANIPULACION DE ARCHIVOS
echo 4. EJECUTAR MYSQL, APACHE Y EL SERVICIO DE GITHUB
echo 5. SALIR
echo ------------------------------------------------------------------------------------------------------------------------
set /p opcion= Ingresa tu opcion: 
if %opcion% == 1 goto scannear_red_seba
if %opcion% == 2 goto manipulacion_de_directorios_agus
if %opcion% == 3 goto manufiles
if %opcion% == 4 goto ejecutar_servicios_maxi
if %opcion% == 5 goto salir


:scannear_red_seba



:manipulacion_de_directorios_agus



:manufiles
color 02
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
echo LOS ARCHIVOS EN ESTE DIRECTORIO SON: 
echo.
for /r "%ruta%" %%I in (*.*) do (echo %%I)
echo.
pause>nul
goto :manufiles

:crear
title CREAR ARCHIVO
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
echo %c2% > "%ruta%\%n2%.%e2%"
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
echo LOS ARCHIVOS EN ESTE DIRECTORIO SON:
echo.
for /r "%ruta%" %%I in (*.*) do (echo %%I)
echo.
echo INGRESE EL NOMBRE DEL ARCHIVO A EDITAR:
echo.
set /p dt3= 
cls
echo.
echo INGRESE EL CONTENIDO A INTRODUCIR EN EL DOCUMENTO:
echo.
set /p cnt3= 
echo %cnt3% >> "%ruta%\%dt3%"
cls
echo.
echo OPERACION COMPLETA, PRESIONE CUALQUIER TECLA PARA VOLVER AL MENU PRINCIPAL...
echo.
pause>nul
goto :manufiles
:sobre
cls
echo.
echo LOS ARCHIVOS EN ESTE DIRECTORIO SON:
echo.
for /r "%ruta%" %%I in (*.*) do (echo %%I)
echo.
echo INGRESE EL NOMBRE DEL ARCHIVO A SOBREESCRIBIR:
echo.
set /p dt33= 
cls
echo.
echo INGRESE EL CONTENIDO A SOBREESCRIBIR EN EL DOCUMENTO:
echo.
set /p cnt33= 
echo %cnt33% > "%ruta%\%dt33%"
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
echo LOS ARCHIVOS EN ESTE DIRECTORIO SON:
echo.
for /r "%ruta%" %%I in (*.*) do (echo %%I)
echo.
echo INGRESE EL NOMBRE DEL ARCHIVO A MOVER:
echo.
set /p dt44= 
echo.
echo INGRESE EL DIRECTORIO DONDE SE GUARDARA EL ARCHIVO A MOVER:
echo.
set /p dt444= 
move "%ruta%\%dt44%" "%dt444%"
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
echo LOS ARCHIVOS EN ESTE DIRECTORIO SON:
echo.
for /r "%ruta%" %%I in (*.*) do (echo %%I)
echo.
echo INGRESE EL NOMBRE DEL ARCHIVO A ELIMINAR:
echo.
set /p dt5= 
	if exist "%ruta%\%dt5%" (del "%ruta%\%dt5%")
cls
echo %ruta%\%dt5%
echo.
echo OPERACION COMPLETA, PRESIONE CUALQUIER TECLA PARA VOLVER AL MENU PRINCIPAL...
echo.
pause>nul
goto :manufiles

:bu
title RESPALDAR ARCHIVO
cls
echo.
echo LOS ARCHIVOS EN ESTE DIRECTORIO SON:
echo.
for /r "%ruta%" %%I in (*.*) do (echo %%I)
echo.
echo INGRESE EL NOMBRE DEL ARCHIVO A RESPALDAR:
echo.
set /p dt77= 
cls
echo.
echo INGRESE EL DIRECTORIO DONDE SE GUARDARA EL ARCHIVO A RESPALDAR:
echo.
set /p dt777= 
copy "%ruta%/%dt77%" "%dt777%"
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
