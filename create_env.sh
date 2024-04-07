#!/bin/bash

# Check if 'myenv' exists
if ! command -v python >/dev/null 2>&1; then
    echo "'myenv' not found. Creating..."
    python -m venv myenv || { echo "Failed to create 'myenv'"; exit 1; }
fi

# Activate 'myenv'
source myenv/bin/activate || { echo "Failed to activate 'myenv'"; exit 1; }

# Install dependencies from requirements.txt.
echo "Installing dependencies..."
pip install -r requirements.txt || { echo "Failed to install dependencies"; exit 1; }

echo "Environment setup complete."
