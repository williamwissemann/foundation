# This makefile has been created to help developers perform common actions.
# Most actions assume it is operating in a virtual environment where the
# python command links to the appropriate virtual environment Python.

MAKEFLAGS += --no-print-directory

ARTIFACTS ?= ./artifacts
MAKE_MODULES = ${ARTIFACTS}/makefile/modules
BACKHOE_PATH ?= packages/backhoe/src/backhoe/app.py

export HELP_FILTER = help|package|venv

include $(MAKE_MODULES)/Makefile.*
