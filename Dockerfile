FROM python:3.11

RUN apt-get update && apt-get install -y netcat

WORKDIR /app

COPY . .

RUN pip install --upgrade pip
RUN pip install setuptools wheel
RUN pip install "ruamel.yaml<0.18"
RUN pip install .

EXPOSE 8087

CMD ["python", "FreeTAKServer.py"]
