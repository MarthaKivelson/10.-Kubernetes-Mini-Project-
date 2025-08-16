FROM python:3.9-slim

#no pyc file created 
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY requirements.txt /app/
COPY app.py /app/
COPY templates /app/templates
COPY static /app/static

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5000

CMD [ "python" , "app.py"]
