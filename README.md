# Module Builder

```
 __  __           _       _        ____        _ _     _           
|  \/  |         | |     | |      |  _ \      (_) |   | |          
| \  / | ___   __| |_   _| | ___  | |_) |_   _ _| | __| | ___ _ __ 
| |\/| |/ _ \ / _` | | | | |/ _ \ |  _ <| | | | | |/ _` |/ _ \ '__|
| |  | | (_) | (_| | |_| | |  __/ | |_) | |_| | | | (_| |  __/ |   
|_|  |_|\___/ \__,_|\__,_|_|\___| |____/ \__,_|_|_|\__,_|\___|_|  
help                           - display this makefile's help information

----- setup environment -----
venv                           - create a virtual environment for development
venv_setup                     - sets up a venv environment from scratch
venv_delete                    - deletes the virtual environment for development

----- module management -----
new                           - create a new module via cookiecutter
reset                         - [DANGEROUS] runs cookiecutter with --overwrite-if-exists
```

build requirments: make, sed python3.8, virtualenv

about: https://www.cs.cornell.edu/courses/cs3110/2019sp/textbook/modules/modular_programming.html

todo:
[] Can make file point at artificats folder for dynamic loading

[] How do we support a version pin
[] - Can we merge requirments.txt and requirments.local.txt
[] - have requirments.txt resolve it and setup parse it
[] - ../../package_name # 3.9.47

[] How would running test over every folder work
[] update pacakge helper to resync with templete
[] make step that mimicks all the test steps

[] cleanup readme