
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
