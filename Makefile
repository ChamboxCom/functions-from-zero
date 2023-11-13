install:
	@echo "Installing..."
	pip install --upgrade pip &&\
		pip install -r requirements.txt
	@echo "Install Complete"

test:
	@echo "Running tests..."
	python -m pytest -vv test_hello.py
	@echo "Tests Complete"

format:
	@echo "Formatting..."
	black *.py
	@echo "Format Complete"

lint:
	@echo "Linting..."
	pylint --disable=R,C *.py
	@echo "Lint Complete"

all: install test format lint