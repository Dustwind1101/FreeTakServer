FROM python:3.11

RUN apt-get update && apt-get install -y netcat-openbsd

WORKDIR /app
COPY . .

RUN pip install --upgrade pip \
    && pip install setuptools wheel \
    && pip install "ruamel.yaml<0.18" \
    && pip install .

EXPOSE 8087

CMD ["python", "FreeTAKServer.py"]
