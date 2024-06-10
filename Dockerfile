FROM python:3.9-slim
RUN apt-get update && apt-get install -y \
    build-essential \
    libssl-dev \
    libffi-dev \
    python3-dev \
    && apt-get clean

WORKDIR /app
COPY requirements.txt /app/
RUN pip install -r requirements.txt
COPY . /app
CMD ["python", "main.py"]
