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
echo                2. Manipulaci�n de directorios
echo                3. Manipulaci�n de archivos
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



:manipulacion_de_archivo_manu



:ejecutar_servicios_maxi



:salir
exit
