# This makefile has been created to help developers perform common actions.
# Most actions assume it is operating in a virtual environment where the
# python command links to the appropriate virtual environment Python.

MAKEFLAGS += --no-print-directory

PYTHON ?= python3.8

# Do not remove this block. It is used by the 'help' rule when
# constructing the help output.
# help:    _____        _____ _  __         _____ ______    
# help:   |  __ \ /\   / ____| |/ /   /\   / ____|  ____|   
# help:   | |__) /  \ | |    | ' /   /  \ | |  __| |__      
# help:   |  ___/ /\ \| |    |  <   / /\ \| | |_ |  __|     
# help:   | |  / ____ | |____| . \ / ____ | |__| | |____    
# help:  _|_|_/_/    \_\_____|_|\_/_/   _\_\_____|______|_  
# help: |  \/  |   /\   | \ | |   /\   / ____|  ____|  __ \ 
# help: | \  / |  /  \  |  \| |  /  \ | |  __| |__  | |__) |
# help: | |\/| | / /\ \ | . ` | / /\ \| | |_ |  __| |  _  / 
# help: | |  | |/ ____ \| |\  |/ ____ | |__| | |____| | \ \ 
# help: |_|  |_/_/    \_|_| \_/_/    \_\_____|______|_|  \_\                       
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
# help: ----- package management -----
# help: new                           - create a new package via cookiecutter
new: 
	@. venv/bin/activate; $(PYTHON) -m cookiecutter --output-dir ./packages ./artifacts/cookiecutter/template/ 
	@echo "\nThe new package can be found in : \n\t$ ./packages"

# help: reset                         - [DANGEROUS] runs cookiecutter with --overwrite-if-exists
reset:
	@. venv/bin/activate; $(PYTHON) -m cookiecutter --overwrite-if-exists --output-dir ./packages ./artifacts/cookiecutter/template/ 


# Keep these lines at the end of the file to retain nice help
# output formatting.
# help:
