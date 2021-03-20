#!/bin/bash

PYTHON=python3.8

if [ -z "$1" ]
then
    ${PYTHON} ../backhoe/src/backhoe/app.py -h
else
    ${PYTHON} ../backhoe/src/backhoe/app.py $@
fi
