# Tipos de Kernel

El kernel se encuentra en el centro del sistema operativo y controla todas las funciones importantes del hardware, ya sea un sistema Linux macOS o Windows, un smartphone, un servidor, una virtualización como KVM o cualquier otro tipo de ordenador.

Si varios procesos se ejecutan en un kernel al mismo tiempo, existen los llamados multitasking kernel. Con la incorporación de la gestión de accesos, se convierte en un sistema multiusuario en el que varios usuarios pueden trabajar simultáneamente. La autenticación la realiza el kernel, que puede asignar o desvincular los procesos llamados.

### Kernel Monolítico:

Un kernel grande para todas las tareas. Es el único responsable de la gestión de la memoria y de los procesos, de la comunicación entre procesos y proporciona funciones de soporte de drivers y hardware. Los sistemas operativos que usan el kernel monolítico son Linux, OS X y Windows.

### MicroKernel:

El microkernel se ha diseñado intencionadamente de un tamaño pequeño para que en caso de fallo no paralice todo el sistema operativo. No obstante, para que pueda asumir las mismas funciones que un kernel grande, está dividido en varios módulos. Como ejemplo de aplicación solo existe el componente Mach de OS X, ya que hasta ahora no hay ningún sistema operativo con microkernel.

### Kernel Híbrido:

La combinación del kernel monolítico y el microkernel se denomina kernel híbrido. En este caso, el kernel grande se hace más compacto y modulable. Otras partes del kernel pueden cargarse dinámicamente. Esto ya ocurre en cierta medida en Linux y OS X.

## User vs Kernel Mode:

| Criterios | Modo de núcleo | Modo de usuario |
| --- | --- | --- |
| Modo Kernel vs Modo Usuario | En modo kernel, el programa tiene acceso directo y sin restricciones a los recursos del sistema. | En modo usuario, el programa de aplicación se ejecuta y se inicia. |
| Interrupciones | En el modo Kernel, todo el sistema operativo puede dejar de funcionar si se produce una interrupción | En el modo de usuario, un solo proceso falla si ocurre una interrupción. |
| Modos | El modo kernel también se conoce como modo maestro, modo privilegiado o modo de sistema. | El modo de usuario también se conoce como modo sin privilegios, modo restringido o modo esclavo. |
| Espacio de direcciones virtuales | En modo kernel, todos los procesos comparten un único espacio de direcciones virtuales. | En el modo de usuario, todos los procesos obtienen un espacio de direcciones virtuales separado. |
| Nivel de privilegio | En el modo kernel, las aplicaciones tienen más privilegios que en el modo usuario. | Mientras está en modo usuario, las aplicaciones tienen menos privilegios. |
| Restricciones | Como el modo kernel puede acceder tanto a los programas del usuario como a los programas del kernel, no hay restricciones. | Mientras que el modo de usuario necesita acceder a los programas del kernel, ya que no puede acceder a ellos directamente. |
| Valor de bit de modo | El bit de modo de kernel-mode es 0. | Tiempo; el bit de modo del modo de usuario es 1. |
| Referencias de memoria | Es capaz de hacer referencia a ambas áreas de memoria. | Solo puede hacer referencias a la memoria asignada para el modo de usuario. |
| Fallo del sistema | Un bloqueo del sistema en modo kernel es grave y complica las cosas. | En el modo de usuario, se puede recuperar un bloqueo del sistema simplemente reanudando la sesión. |
| Acceso | Solo la funcionalidad esencial puede operar en este modo. | Los programas de usuario pueden acceder y ejecutarse en este modo para un sistema dado. |
| Funcionalidad | El modo kernel puede hacer referencia a cualquier bloque de memoria en el sistema y también puede dirigir la CPU para la ejecución de una instrucción, lo que lo convierte en un modo muy potente y significativo. | El modo usuario es un modo de visualización estándar y típico, lo que implica que la información no puede ejecutarse por sí sola ni hacer referencia a ningún bloque de memoria; necesita una interfaz de protocolo de aplicación (API) para lograr estas cosas. |
