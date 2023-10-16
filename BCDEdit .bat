@echo off

REM Configuración para mejorar el rendimiento
REM Para habilitar una opción, elimine el "REM" de la línea correspondiente.

REM bcdedit /set useplatformtick yes
REM Habilita el uso del reloj de la plataforma, que es más preciso que el reloj del BIOS, lo que puede mejorar el rendimiento del sistema en algunos casos.

REM bcdedit /set disabledynamictick yes
REM Deshabilita el "tick" dinámico, una función de Windows que ajusta la velocidad del reloj del sistema según la carga del procesador, lo que puede mejorar el rendimiento en algunos casos, aunque puede causar problemas de estabilidad.

REM bcdedit /set increaseuserva 4000
REM Aumenta el tamaño del espacio de direcciones virtuales del usuario, lo que puede mejorar el rendimiento en sistemas con mucha memoria RAM.

REM bcdedit /deletevalue useplatformclock
REM Elimina el valor "useplatformclock," controlando si Windows utiliza el reloj de la plataforma o el reloj del BIOS, lo que puede mejorar el rendimiento en algunos casos, aunque puede causar problemas de estabilidad.

REM bcdedit /set usefirmwareboot yes
REM Habilita el inicio desde la memoria flash, lo que puede mejorar el rendimiento del arranque en algunos sistemas.

REM bcdedit /set bootperformancetuning on
REM Activa la optimización del rendimiento de arranque, lo que puede mejorar el rendimiento del arranque en algunos sistemas.

REM bcdedit /set increasepagefileusage 256
REM Aumenta el tamaño del archivo de paginación, lo que puede mejorar el rendimiento en sistemas con mucha memoria RAM.

REM bcdedit /set disabledynamicmemory yes
REM Deshabilita la memoria dinámica, lo que puede mejorar el rendimiento en sistemas con poca memoria RAM.

REM Configuración para reducir el tiempo de arranque
REM Para habilitar una opción, elimine el "REM" de la línea correspondiente.

REM bcdedit /set bootmenupolicy legacy
REM Cambia el menú de arranque al modo heredado, lo que puede reducir el tiempo de arranque en algunos sistemas.

REM bcdedit /set recoveryenabled no
REM Deshabilita la recuperación automática, lo que puede reducir el tiempo de arranque en algunos sistemas.

REM bcdedit /set bootlog no
REM Deshabilita el registro de arranque, lo que puede reducir el tiempo de arranque en algunos sistemas.

REM Configuración para aumentar la estabilidad
REM Para habilitar una opción, elimine el "REM" de la línea correspondiente.

REM bcdedit /set bootlog yes
REM Activa el registro de arranque, lo que puede ayudar a diagnosticar problemas de estabilidad.

REM bcdedit /set criticalload no
REM Deshabilita la carga crítica, lo que puede ayudar a evitar problemas de estabilidad.

REM bcdedit /set bcdboot bootbcd
REM Actualiza el archivo de arranque de Windows, lo que puede ayudar a corregir problemas de estabilidad.

REM Otras opciones
REM Para habilitar una opción, elimine el "REM" de la línea correspondiente.

REM bcdedit /enum
REM Lista todas las entradas del BCD.

REM bcdedit /set default {ID_de_partición}
REM Establece la partición de arranque predeterminada.

REM bcdedit /set timeout {número}
REM Establece el número de segundos que Windows espera antes de arrancar por defecto.

REM bcdedit /debug {on | off}
REM Activa o desactiva la depuración de arranque.

REM bcdedit /writestore {archivo}
REM Escribe el BCD en un archivo.
