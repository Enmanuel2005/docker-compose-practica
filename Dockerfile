# Usar Ubuntu como base
FROM ubuntu:22.04

# Establecer el directorio de trabajo
WORKDIR /app

# Actualizar los repositorios e instalar Python y herramientas necesarias
RUN apt-get update && apt-get install -y python3

# Copiar los archivos del directorio 'src' al contenedor
COPY src/ /app/

# Exponer el puerto 8000
EXPOSE 8000

# Comando para ejecutar el servidor HTTP en Python
CMD ["python3", "-m", "http.server", "8000"]