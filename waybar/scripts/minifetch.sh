#!/bin/bash
# Esto saca: Icono_Distro | Kernel | Tiempo_Encendido
fastfetch --structure OS:Kernel:Uptime --format "{2} | {5} | {7}" | sed 's/Linux //'
