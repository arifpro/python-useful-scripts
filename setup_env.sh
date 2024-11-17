#!/bin/bash

# Set the virtual environment directory
VENV_DIR="devarif"

# Create a virtual environment (if it doesn't already exist)
if [ ! -d "$VENV_DIR" ]; then
    echo "Creating virtual environment '$VENV_DIR'..."
    python3 -m venv $VENV_DIR
else
    echo "Virtual environment '$VENV_DIR' already exists."
fi

# Activate the virtual environment
echo "Activating virtual environment '$VENV_DIR'..."
source $VENV_DIR/bin/activate

# Install the required packages from requirements.txt
echo "Installing dependencies from requirements.txt..."
pip install -r requirements.txt

echo "Virtual environment setup complete."
