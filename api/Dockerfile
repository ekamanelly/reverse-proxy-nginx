# FROM python:3.7-alpine AS builder
# EXPOSE 8000
# WORKDIR /usr/src/app
# COPY requirements.txt /usr/src/app
# RUN pip3 install -r requirements.txt --no-cache-dir
# COPY . /usr/src/app
# ENTRYPOINT ["python3"] 
# CMD ["manage.py", "runserver", "0.0.0.0:8000"]

FROM python:3.8-slim-buster AS BUILDER

RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    python3-dev \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app

COPY requirements.txt .

RUN python3.8 -m pip install --no-cache-dir --upgrade \
    pip \
    setuptools \
    wheel

RUN python3.8 -m pip install --no-cache-dir \
    -r requirements.txt

COPY . .

EXPOSE 8000
ENTRYPOINT ["python3"] 
CMD ["manage.py", "runserver", "0.0.0.0:8000"]
