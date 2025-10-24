# Imagen base con Python 3.11.9
FROM python:3.11.9-slim

# Evitar buffers en logs
ENV PYTHONUNBUFFERED=1

# Carpeta de trabajo
WORKDIR /app

# Copiar archivos del proyecto
COPY . .

# Actualizar pip e instalar dependencias
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Comando por defecto (ajusta según tu app)
CMD ["python", "run.py"]
