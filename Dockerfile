FROM python:3.8-slim-buster

# Copy only requirements to cache them in docker layer
WORKDIR /code

COPY . /code

# System deps:
RUN pip install -r requirements.txt