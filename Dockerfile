# Imagen base con Python 3.11.9
FROM python:3.11.9-slim

# Evitar buffers y mensajes incompletos en logs
ENV PYTHONUNBUFFERED=1

# Carpeta de trabajo
WORKDIR /app

# Copiar archivos del proyecto al contenedor
COPY . .

# Actualizar pip e instalar dependencias
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Comando para ejecutar FastAPI con Uvicorn
# Cambia run:app por el nombre de tu archivo principal y la variable FastAPI
CMD ["uvicorn", "run:app", "--host", "0.0.0.0", "--port", "10000"]
