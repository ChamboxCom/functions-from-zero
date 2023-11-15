install:
	@echo "Installing..."
	pip install --upgrade pip &&\
		pip install -r requirements.txt
	@echo "Install Complete"

test:
	@echo "Running tests..."
	python -m pytest -vv --cov=hello test_hello.py
	python -m pytest -vv --cov=mylib.bot test_bot.py
	@echo "Tests Complete"

format:
	@echo "Formatting..."
	find . -type f -name '*.py' | xargs black
	@echo "Format Complete"

lint:
	@echo "Linting..."
	find . -type f -name '*.py' | xargs pylint --disable=R,C
	@echo "Lint Complete"

all: install test format lint
