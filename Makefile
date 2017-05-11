.PHONY: setup test run help

# Setup project
setup:
	@echo "Instalando as dependências do requirements.txt..."
	@pip install -r requirements.txt

# Run tests
test:
	python src/manage.py test $(app)

# Start local server
run:
	python src/manage.py runserver 0:8000

help:
	@echo "Faramir, version 0.0.1"
	@echo "Common commands to Faramir project"
	@echo " "
	@echo "usage: make <command> [arg=value] [argN=value]"
	@echo " "
	@echo "Commands:"
	@echo "    setup    Install dependencies to project"
	@echo "    test     Run all tests to project or app (e.g.: make test app=core)"
	@echo "    run      Run a local server to project (default: 0.0.0.0:8000)"
	@echo " "
	@echo "For full documentation, see http://faramir.readthedocs.io"
