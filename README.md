# BCDEdit - Herramienta de Administración del BCD

BCDEdit es una herramienta de línea de comandos utilizada para gestionar el BCD (Boot Configuration Data), que es un almacén de datos que contiene información sobre cómo arrancar Windows. Puedes utilizar BCDEdit para ajustar diversas configuraciones que pueden mejorar el rendimiento, reducir el tiempo de arranque y aumentar la estabilidad de tu sistema.

# Índice
1. [Descripción](#bcdedit---herramienta-de-administración-del-bcd)
2. [Para mejorar el rendimiento](#para-mejorar-el-rendimiento)
   - [Habilitar el reloj de la plataforma](#bcdedit-set-useplatformtick-yes)
   - [Deshabilitar el "tick" dinámico](#bcdedit-set-disabledynamictick-yes)
   - [Aumentar el espacio de direcciones virtuales](#bcdedit-set-increaseuserva-4000)
   - [Eliminar el valor useplatformclock](#bcdedit-deletevalue-useplatformclock)
   - [Habilitar el inicio desde la memoria flash](#bcdedit-set-usefirmwareboot-yes)
   - [Activar la optimización del rendimiento de arranque](#bcdedit-set-bootperformancetuning-on)
   - [Aumentar el tamaño del archivo de paginación](#bcdedit-set-increasepagefileusage-256)
   - [Deshabilitar la memoria dinámica](#bcdedit-set-disabledynamicmemory-yes)

3. [Para reducir el tiempo de arranque](#para-reducir-el-tiempo-de-arranque)
   - [Cambiar el menú de arranque al modo heredado](#bcdedit-set-bootmenupolicy-legacy)
   - [Deshabilitar la recuperación automática](#bcdedit-set-recoveryenabled-no)
   - [Deshabilitar el registro de arranque](#bcdedit-set-bootlog-no)

4. [Para aumentar la estabilidad](#para-aumentar-la-estabilidad)
   - [Activar el registro de arranque](#bcdedit-set-bootlog-yes)
   - [Deshabilitar la carga crítica](#bcdedit-set-criticalload-no)
   - [Actualizar el archivo de arranque de Windows](#bcdedit-set-bcdboot-bootbcd)

5. [Otras opciones](#otras-opciones)
   - [Listar todas las entradas del BCD](#bcdedit-enum)
   - [Establecer la partición de arranque predeterminada](#bcdedit-set-default-id_de_partición)
   - [Establecer el tiempo de espera antes de arrancar](#bcdedit-set-timeout-número)
   - [Activar o desactivar la depuración de arranque](#bcdedit-debug-on--off)
   - [Escribir el BCD en un archivo](#bcdedit-writestore-archivo)

## Para mejorar el rendimiento

- `bcdedit /set useplatformtick yes`: Habilita el uso del reloj de la plataforma, que es más preciso que el reloj del BIOS, lo que puede mejorar el rendimiento del sistema en algunos casos.

- `bcdedit /set disabledynamictick yes`: Deshabilita el "tick" dinámico, una función de Windows que ajusta la velocidad del reloj del sistema según la carga del procesador, lo que puede mejorar el rendimiento en algunos casos, aunque puede causar problemas de estabilidad.

- `bcdedit /set increaseuserva 4000`: Aumenta el tamaño del espacio de direcciones virtuales del usuario, lo que puede mejorar el rendimiento en sistemas con mucha memoria RAM.

- `bcdedit /deletevalue useplatformclock`: Elimina el valor "useplatformclock," controlando si Windows utiliza el reloj de la plataforma o el reloj del BIOS, lo que puede mejorar el rendimiento en algunos casos, aunque puede causar problemas de estabilidad.

- `bcdedit /set usefirmwareboot yes`: Habilita el inicio desde la memoria flash, lo que puede mejorar el rendimiento del arranque en algunos sistemas.

- `bcdedit /set bootperformancetuning on`: Activa la optimización del rendimiento de arranque, lo que puede mejorar el rendimiento del arranque en algunos sistemas.

- `bcdedit /set increasepagefileusage 256`: Aumenta el tamaño del archivo de paginación, lo que puede mejorar el rendimiento en sistemas con mucha memoria RAM.

- `bcdedit /set disabledynamicmemory yes`: Deshabilita la memoria dinámica, lo que puede mejorar el rendimiento en sistemas con poca memoria RAM.

## Para reducir el tiempo de arranque

- `bcdedit /set bootmenupolicy legacy`: Cambia el menú de arranque al modo heredado, lo que puede reducir el tiempo de arranque en algunos sistemas.

- `bcdedit /set recoveryenabled no`: Deshabilita la recuperación automática, lo que puede reducir el tiempo de arranque en algunos sistemas.

- `bcdedit /set bootlog no`: Deshabilita el registro de arranque, lo que puede reducir el tiempo de arranque en algunos sistemas.

## Para aumentar la estabilidad

- `bcdedit /set bootlog yes`: Activa el registro de arranque, lo que puede ayudar a diagnosticar problemas de estabilidad.

- `bcdedit /set criticalload no`: Deshabilita la carga crítica, lo que puede ayudar a evitar problemas de estabilidad.

- `bcdedit /set bcdboot bootbcd`: Actualiza el archivo de arranque de Windows, lo que puede ayudar a corregir problemas de estabilidad.

## Otras opciones

- `bcdedit /enum`: Lista todas las entradas del BCD.

- `bcdedit /set default {ID_de_partición}`: Establece la partición de arranque predeterminada.

- `bcdedit /set timeout {número}`: Establece el número de segundos que Windows espera antes de arrancar por defecto.

- `bcdedit /debug {on | off}`: Activa o desactiva la depuración de arranque.

- `bcdedit /writestore {archivo}`: Escribe el BCD en un archivo.


## Licencia
Este proyecto está bajo la licencia [Creative Commons Attribution 4.0 International License](https://creativecommons.org/licenses/by/4.0/). Puedes compartir, adaptar y utilizar estos archivos siempre que des el crédito correspondiente al autor original.

### Nota importante
Se recomienda encarecidamente hacer una copia de seguridad de los datos importantes antes de continuar. El autor no se hace responsable de ningún daño o problema causado por el mal uso de estas tecnicas.
