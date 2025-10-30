# Usa una imagen base de Python (establece la versión)
FROM python:3.11-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo de requisitos al contenedor
COPY src/requirements.txt /app/

# Instala las dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Copia el resto de tu código fuente al contenedor
# Asumo que tu código principal está en la carpeta 'src'
COPY src/ /app/src/
COPY tests.py /app/

# Comando para ejecutar la aplicación al iniciar el contenedor (ejemplo)
# Reemplaza 'main.py' por tu archivo de inicio si es diferente
CMD ["python", "src/main.py"]