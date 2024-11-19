#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Check if required tools are installed
if ! command -v black &> /dev/null; then
    echo "Error: black is not installed. Install it with 'pip install black'."
    exit 1
fi

if ! command -v isort &> /dev/null; then
    echo "Error: isort is not installed. Install it with 'pip install isort'."
    exit 1
fi

# Check if at least one argument (file/directory) is passed
if [ "$#" -eq 0 ]; then
    echo "Usage: $0 <file_or_directory> [additional_files_or_directories...]"
    exit 1
fi

# Format with isort
echo "Running isort..."
isort "$@"

# Format with black
echo "Running black..."
black "$@"

echo "Formatting completed successfully!"
