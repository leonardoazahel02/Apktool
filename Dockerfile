# Usar una imagen base de Ubuntu
FROM ubuntu:20.04

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /usr/src/app

# Instalar dependencias necesarias (git, java, etc.)
RUN apt-get update && apt-get install -y \
    openjdk-8-jdk \
    git \
    wget \
    curl \
    unzip \
    && rm -rf /var/lib/apt/lists/*

# Clonar el repositorio de APKTool
RUN git clone https://github.com/leonardoazahel02/Apktool.git .

# Exponer el puerto si es necesario (no es obligatorio en este caso)
EXPOSE 8080

# Configurar el contenedor para que ejecute un script al iniciar (si se requiere)
CMD ["bash"]
