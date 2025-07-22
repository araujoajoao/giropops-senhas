FROM python:3.12-slim

WORKDIR /app

# Copia os arquivos
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .
COPY templates/ templates/
COPY static/ static/

EXPOSE 5000

# Usa o Python diretamente para rodar o app
CMD ["python", "app.py"]


