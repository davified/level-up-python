#!/usr/bin/env bash

set -e

# TODO: install python3

virtual_environment_name=".$(basename $(pwd))"
python3 -m venv $virtual_environment_name

source $virtual_environment_name/bin/activate
pip3 install -r requirements.txt

python -m ipykernel install --user --name=${virtual_environment_name}

echo "Setup completed."
echo "To get started, run the following commands:"
echo "- source $virtual_environment_name/bin/activate"
echo "- jupyter notebook"
