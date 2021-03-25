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

## Getting started

|NOTE: Don't use special characters (i.e `-`) in package names stick to (a-z and _). Using special characters can lead to a bunch of import issues and pain.
|---|

A new python packages can be created by calling:

 `> make package/new`

This will provided prompts to configure your package.

```text
package_display_name [Package-Name]: Example-Package
package_name [example_package]: example_package
package_short_description [A description of the package.]: 
version [0.0.1]: 
full_name [William T. Wissemann]: 
email [WilliamWissemann@gmail.com]: 
github_user_name [williamwissemann]: 
github_repo_name [foundation]: 
license [Not open source]: 
year [2021]: 
```

* [ ] TODO: Enforce package name to the regex `[a-zA-Z0-9\-]*`

## For more options

```text
❯ make help

available commands:
  help                           Help screen                                                 
  help/all                       Display help for all targets                                
  help/short                     This help short screen                                      
  package/clean                  deletes the virtual environment                             
  package/new                    create a new package via cookiecutter                       
  package/reset                  [DANGEROUS] runs cookiecutter with --overwrite-if-exists    
  package/venv                   create a virtual environment                                   
```

### Using & defining interdependent packages locally

|NOTE: For local package resolution to work the folder name in *./packages* **has** to match the package name in setup.py in that folder.
|---|

`setup.py` in a package will resolve importing local packages defined in the requirements.local.txt and found in the `packages` folder.

An explanation can be found in `packages/{{package}}/requirements.local.txt`

## Wishlist

* [ ] Add option to run tests for all projects in *./packages*
* [ ] Add a make command the mimics a pipeline to the cookiecutter template
* [ ] Create a update package helper to resync with template
