FROM python:3.8-slim-buster
#FROM gitpod/workspace-full

# System deps:
# RUN pip install "poetry==$POETRY_VERSION"
RUN pip install -r requirements.txt

# Copy only requirements to cache them in docker layer
WORKDIR /code

# RUN poetry config virtualenvs.create false \
#   && poetry install --no-interaction --no-ansi

COPY . /code
