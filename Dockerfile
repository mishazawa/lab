FROM python:3.10-slim

RUN apt update && apt install ffmpeg libsm6 libxext6  -y

RUN apt install gcc -y 

WORKDIR /code

COPY ./requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

