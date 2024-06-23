.PHONY: test, lint, format

test:
	python3 -m poetry run pytest tests --cov=/var/task --cov-report term-missing

lint:
	poetry run mypy --explicit-package-bases .
	poetry run ruff check .
	poetry run black --check .

format:
	poetry run ruff check . --fix --exit-non-zero-on-fix
	poetry run black .
