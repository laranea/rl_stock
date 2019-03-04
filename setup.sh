#!/usr/bin/env bash

python --version >/dev/null 2>&1 || { echo >&2 "I require Python but it's not installed. Aborting."; exit 1; }

curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py

python get-pip.py

pip --version >/dev/null 2>&1 || { echo >&2 "I require PyPI but it's not installed. Aborting."; exit 1; }

clear

pip install -r requirements.txt

MODELS_DIRECTORY=models

if [ ! -d "$MODELS_DIRECTORY" ]; then
  # Control will enter here if $MODELS_DIRECTORY doesn't exist.
  mkdir $MODELS_DIRECTORY
fi

echo "done!"