# Foundation

Foundation is a utility wrapper to support building & maintaining small interdependent packages while maintaining consistency across each package.

> One key solution to managing complexity of large software is modular programming: the code is composed of many different code modules that are developed separately. - [Link](https://www.cs.cornell.edu/courses/cs3110/2019sp/textbook/modules/modular_programming.html)

**The benefits of [modular programming](https://www.keil.com/support/man/docs/a251/a251_in_modular.htm) are:**

* Efficient Program Development
* Multiple Use of Subprograms
* Ease of Debugging and Modifying

## Installation

**requirements:**

* make
* python3.8
* virtualenv

TODO: add more info

## Usage

```text
> make help
                                                
available commands:
  help                           Help screen                                                 
  help/all                       Display help for all targets                                
  help/short                     This help short screen                                      
  package/new                    create a new package via cookiecutter                       
  package/reset                  [DANGEROUS] runs cookiecutter with --overwrite-if-exists    
  package/venv                   create a virtual environment                                
  package/venv_delete            deletes the virtual environment   
```

### make venv

* [ ] TODO: add more info

### make new

|NOTE: Don't use special characters (i.e `-`) in package names stick to (a-z and _). Using special characters can lead to a bunch of import issues and pain.
|---|

* [ ] TODO: Enforce package name to the regex `[a-zA-Z0-9\-]*`

### package version importing and management

* requirements.local.txt
* requirements.txt
* setup.py

|NOTE: For local package resolution to work the folder name in *./packages* **has** to match the package name in setup.py in that folder.
|---|

* [ ] TODO: add more info (i.e version pining in comments)

## Wishlist

* [ ] Add option to run tests for all projects in *./packages*
* [ ] Add a make command the mimics a pipeline to the cookiecutter template
* [ ] Create a update package helper to resync with template
* [ ] Create a docker workflow similar to record_keeper
* [ ] Cleanup readme
