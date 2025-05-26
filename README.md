# Proyecto de Benchmark de Rendimiento: VM vs Docker

Este proyecto compara el uso de recursos y las métricas de rendimiento entre una máquina virtual completa (VirtualBox) y un contenedor Docker.

## Estructura del Proyecto

- `notebooks/`: Notebooks Jupyter para ejecutar y graficar los benchmarks  
- `scripts/`: Scripts de configuración para VM, Docker y Dockerfile  
- `results/`: Carpeta para almacenar los resultados del benchmark  

## Requisitos

- Python 3.8 o superior  
- Docker (en el host o WSL2)  
- VirtualBox (con una máquina Linux invitada)  
- `sysbench`, `jupyter`, `matplotlib`, `psutil`

## Inicio rápido

En VM o Docker, ejecutar:

```bash
cd scripts
bash vm_setup.sh       # Para VirtualBox
bash docker_setup.sh   # Para Docker o WSL2
