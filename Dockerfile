ARG BASE_IMAGE=python:3.10-slim

FROM ${BASE_IMAGE}

WORKDIR /code

COPY ./requirements.txt /code/requirements.txt

RUN  pip install -r requirements.txt

COPY ./main.py /code/main.py 

ENTRYPOINT [ "uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8001" ]