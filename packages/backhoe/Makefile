# path to the foundation/artifacts/makefile/modules
# https://github.com/williamwissemann/foundation

# path to the foundation/artifacts/makefile/modules
# https://github.com/williamwissemann/foundation

# include Makefile artifacts from foundation
ARTIFACTS ?= ../../artifacts
MAKE_MODULES = ${ARTIFACTS}/makefile/modules
include $(MAKE_MODULES)/Makefile.*

# setup the scope of the make help
HELP_FILTER ?= help|python|docker

# python environment variable defaults
PYTHON_PACKAGE = backhoe

# docker environment variable defaults
DOCKER_IMAGE ?= PYTHON_PACKAGE
DOCKER_TAG ?= dev
