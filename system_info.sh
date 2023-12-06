#!/bin/bash

# Función para obtener el espacio libre del disco
function disk_space {
    df -h
}

# Función para obtener el tamaño ocupado por un directorio
function dir_size {
    echo "Introduce la ruta del directorio:"
    read dir
    du -sh $dir
}

# Función para obtener el uso del procesador
function cpu_usage {
    mpstat | awk '/all/ {printf "CPU Load: %.2f%%\n", 100 - $NF}'
}

# Función para obtener el número de usuarios conectados
function users_connected {
    who | wc -l
}

# Función para obtener el número de usuarios conectados desde la última vez que se preguntó
function users_connected_since_last {
    echo "Número de usuarios conectados desde la última vez: $last_users"
    last_users=$(who | wc -l)
}

# Inicialización de la variable para usuarios conectados desde la última vez
last_users=$(who | wc -l)

# Bucle para mostrar el menú
while true; do
    echo "Menú de información del sistema:"
    echo "1. Espacio libre del disco"
    echo "2. Tamaño ocupado por un directorio"
    echo "3. Uso del procesador"
    echo "4. Número de usuarios conectados"
    echo "5. Número de usuarios conectados desde la última vez que se preguntó"
    echo "6. Salir"
    echo "Elige una opción:"
    read option

    case $option in
        1) disk_space ;;
        2) dir_size ;;
        3) cpu_usage ;;
        4) users_connected ;;
        5) users_connected_since_last ;;
        6) break ;;
        *) echo "Opción no válida";;
    esac
done