FROM python:3.11

ENV PYTHONPATH=/app/

WORKDIR /app

RUN pip install poetry==1.8.3

COPY ../pyproject.toml ../poetry.lock /app/

RUN poetry config virtualenvs.create false \
    && poetry install --no-interaction --no-ansi

COPY ../src /app/src
