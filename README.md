# Package Builder

Package Builder is utility to support building & maintaining small python projects.

> One key solution to managing complexity of large software is modular programming: the code is composed of many different code modules that are developed separately. - [Link](https://www.cs.cornell.edu/courses/cs3110/2019sp/textbook/modules/modular_programming.html)

**The benefits of [modular programming](https://www.keil.com/support/man/docs/a251/a251_in_modular.htm) are:**

* Efficient Program Development
* Multiple Use of Subprograms
* Ease of Debugging and Modifying

## Installation

**requirments:**

* make
* sed
* python3.8
* virtualenv

TODO: add more info

## Usage

```text
> make help
   _____        _____ _  __         _____ ______    
  |  __ \ /\   / ____| |/ /   /\   / ____|  ____|
  | |__) /  \ | |    | ' /   /  \ | |  __| |__
  |  ___/ /\ \| |    |  <   / /\ \| | |_ |  __|
  | |  / ____ | |____| . \ / ____ | |__| | |____    
 _|_|_/_/    \_\_____|_|\_/_/   _\_\_____|______|_
|  \/  |   /\   | \ | |   /\   / ____|  ____|  __ \
| \  / |  /  \  |  \| |  /  \ | |  __| |__  | |__) |
| |\/| | / /\ \ | . ` | / /\ \| | |_ |  __| |  _  /
| |  | |/ ____ \| |\  |/ ____ | |__| | |____| | \ \
|_|  |_/_/    \_|_| \_/_/    \_\_____|______|_|  \_\
                                                     
help                           - display this makefile's help information

----- setup environment -----
venv                           - create a virtual environment for development
venv_setup                     - sets up a venv environment from scratch
venv_delete                    - deletes the virtual environment for development

----- module management -----
new                           - create a new module via cookiecutter
reset                         - [DANGEROUS] runs cookiecutter with --overwrite-if-exists
```

### make venv

TODO: add more info

### make new

TODO: add more info

### package version importing and managment 

* requirments.local.txt
* requirments.txt
* setup.py

|NOTE: For local package importing across packages the folder name in *./packages* has to mach the package name.
|---|

TODO: add more info (i.e version pining in comments)

## TODO

* [ ] Add option to run tests for all projects in *./packages*
* [ ] Add a make command the mimics a pipeline to the cookiecutter templete
* [ ] Add a Dockerize step to makefile in cookiecutter templete
* [ ] Create a update pacakge helper to resync with templete
* [ ] cleanup readme
