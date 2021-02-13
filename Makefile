# This makefile has been created to help developers perform common actions.
# Most actions assume it is operating in a virtual environment where the
# python command links to the appropriate virtual environment Python.

MAKEFLAGS += --no-print-directory
PROJECT = foundation
IMAGE_TAG = dev
PYTHON ?= python3

# Do not remove this block. It is used by the 'help' rule when
# constructing the help output.
# help:   ______                    _       _   _             
# help:  |  ____|                  | |     | | (_)            
# help:  | |__ ___  _   _ _ __   __| | __ _| |_ _  ___  _ __  
# help:  |  __/ _ \| | | | '_ \ / _` |/ _` | __| |/ _ \| '_ \ 
# help:  | | | (_) | |_| | | | | (_| | (_| | |_| | (_) | | | |
# help:  |_|  \___/ \__,_|_| |_|\__,_|\__,_|\__|_|\___/|_| |_|
# help:                                                      

# help: help                           - display this makefile's help information
.PHONY: help
help:
	@grep "^# help\:" Makefile | grep -v grep | sed 's/\# help\: //' | sed 's/\# help\://'

# help: venv_setup                     - sets up a venv environment from scratch
.PHONY: venv_setup
venv_setup: venv_delete venv_create

# help: venv_create                    - create a virtual environment for development
.PHONY: venv_create
venv_create: 
	@$(PYTHON) -m venv venv
	@/bin/bash -c "source venv/bin/activate && pip install pip --upgrade && pip install -r requirements.dev.txt"
	@echo "\nEnter virtual environment using: \n\t$ source venv/bin/activate\n"

# help: venv_delete                    - deletes the virtual environment for development
.PHONY: venv_delete
venv_delete:
	@rm -fr venv

# help: new_project                    - create a new package using cookiecutter
new_project: 
	@. venv/bin/activate; $(PYTHON) -m cookiecutter --output-dir ./packages ./artifacts/cookiecutter/template/ 

# help: 
# help:                                ---- Raw Commands ---
# help: 

## ----- in progress ------
build:
	docker build -t ${PROJECT}:${IMAGE_TAG} .

run: 
	docker run -it ${PROJECT}:${IMAGE_TAG} bash
	# ${python}

# housekeeping:
#	docker rmi $(docker images -a -q)
#	docker system prune -a

# Keep these lines at the end of the file to retain nice help
# output formatting.
# help:
