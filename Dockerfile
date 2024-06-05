FROM ubuntu:latest

# Instalar dependencias
RUN apt-get update && apt-get install -y \
    paquete1 \
    paquete2 \
    paquete3 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Copiar archivos de la aplicación al contenedor
COPY archivo_local /ruta_en_el_contenedor

# Establecer el directorio de trabajo
WORKDIR /ruta_en_el_contenedor

# Ejecutar comando al iniciar el contenedor
CMD ["comando", "argumento"]
