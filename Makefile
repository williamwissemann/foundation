# This makefile has been created to help developers perform common actions.
# Most actions assume it is operating in a virtual environment where the
# python command links to the appropriate virtual environment Python.

MAKEFLAGS += --no-print-directory

PYTHON ?= python3.8

# Do not remove this block. It is used by the 'help' rule when
# constructing the help output.
# help:  __  __           _       _        ____        _ _     _           
# help: |  \/  |         | |     | |      |  _ \      (_) |   | |          
# help: | \  / | ___   __| |_   _| | ___  | |_) |_   _ _| | __| | ___ _ __ 
# help: | |\/| |/ _ \ / _` | | | | |/ _ \ |  _ <| | | | | |/ _` |/ _ \ '__|
# help: | |  | | (_) | (_| | |_| | |  __/ | |_) | |_| | | | (_| |  __/ |   
# help: |_|  |_|\___/ \__,_|\__,_|_|\___| |____/ \__,_|_|_|\__,_|\___|_|                                                                    
# help:                                                      

# help: help                           - display this makefile's help information
.PHONY: help
help:
	@grep "^# help\:" Makefile | grep -v grep | sed 's/\# help\: //' | sed 's/\# help\://'

# help: 
# help: ----- setup environment -----
# help: venv                           - create a virtual environment for development
venv:
	@$(PYTHON) -m venv venv
	@/bin/bash -c "source venv/bin/activate && pip install pip --upgrade && pip install -r requirements.dev.txt"
	@echo "\nEnter virtual environment using: \n\t$ source venv/bin/activate\n"

# help: venv_setup                     - sets up a venv environment from scratch
.PHONY: venv_setup
venv_setup: venv_delete venv

# help: venv_delete                    - deletes the virtual environment for development
.PHONY: venv_delete
venv_delete:
	@rm -fr venv

# help: 
# help: ----- module management -----
# help: new                           - create a new module via cookiecutter
new: 
	@. venv/bin/activate; $(PYTHON) -m cookiecutter --output-dir ./modules ./artifacts/cookiecutter/template/ 
	@echo "\nThe new package can be found in : \n\t$ ./modules"

# help: reset                         - [DANGEROUS] runs cookiecutter with --overwrite-if-exists
reset:
	@. venv/bin/activate; $(PYTHON) -m cookiecutter --overwrite-if-exists --output-dir ./modules ./artifacts/cookiecutter/template/ 


# Keep these lines at the end of the file to retain nice help
# output formatting.
# help:
