# Sistema de Información en Bash

Este script en Bash ofrece una interfaz de usuario para monitorear y obtener información vital del sistema operativo Linux. Incluye funcionalidades para revisar el espacio libre del disco, el tamaño ocupado por un directorio, el uso del procesador, y el número de usuarios conectados.

## Funcionalidades Implementadas

- **Espacio Libre del Disco**: Utiliza `df -h` para mostrar el espacio libre disponible en el sistema.
- **Tamaño de Directorio**: Emplea `du -sh` para calcular el tamaño ocupado por un directorio específico, incluyendo sus archivos y subdirectorios.
- **Uso del Procesador**: Usa `top -bn1` para informar sobre la carga actual del procesador.
- **Usuarios Conectados**: Implementa `who | wc -l` para mostrar el número de usuarios actualmente conectados al sistema.
- **Usuarios Conectados desde la Última Consulta**: Registra cuántos usuarios se han conectado desde la última vez que se consultó esta opción.

## Uso

Para demostrar la funcionalidad de estas herramientas, el script proporciona un menú interactivo donde el usuario puede seleccionar la información que desea consultar.

## Requisitos

- Un sistema operativo Linux.
- Bash instalado en el sistema (disponible por defecto en la mayoría de las distribuciones de Linux).

## Configuración y Ejecución

1. Clonar o descargar el repositorio.
2. Navegar al directorio del script.
3. Hacer el script ejecutable con `chmod +x system_info.sh`.
4. Ejecutar el script con `./system_info.sh`.

## Autor

- TheHacha167

---

© 2023 TheHacha167 - Todos los derechos reservados.
