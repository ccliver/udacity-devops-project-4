## The Makefile includes instructions on environment setup and lint tests
# Create and activate a virtual environment
# Install dependencies in requirements.txt
# Dockerfile should pass hadolint
# app.py should pass pylint
# (Optional) Build a simple integration test

.DEFAULT_GOAL := help

setup: ## Create python virtualenv.
	python3 -m venv ~/.devops
	source ~/.devops/bin/activate

install: ## This should be run from inside a virtualenv
	pip install --upgrade pip &&\
		pip install --no-use-pep517 -r requirements.txt

test: ## Additional, optional, tests could go here
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb

lint: ## Check Dockerfile for syntax errors
	# See local hadolint install instructions:   https://github.com/hadolint/hadolint
	# This is linter for Dockerfiles
	hadolint Dockerfile
	# This is a linter for Python source code linter: https://www.pylint.org/
	# This should be run from inside a virtualenv
	pylint --disable=R,C,W1203 ${PWD}/app.py

all: install lint test ## Install requirements, lint, and test

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
