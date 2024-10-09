#!/bin/bash

# Update package lists
sudo apt-get update

# Install pip if not already installed
if ! command -v pip &> /dev/null; then
    sudo apt-get install -y python3-pip
fi

# Install pygit2 version 1.12.2
pip install pygit2==1.12.2

# Install Git if not already installed
if ! command -v git &> /dev/null; then
    sudo apt-get install -y git
fi

# Define the repository URL and directory name
REPO_URL="https://github.com/lllyasviel/stable-diffusion-webui-forge.git"
REPO_DIR="stable-diffusion-webui-forge"

# Check if the repository already exists
if [ -d "$REPO_DIR" ]; then
    echo "Repository already exists. Updating..."
    cd "$REPO_DIR"
    git pull origin main  # Update the repository
else
    echo "Cloning the repository..."
    git clone "$REPO_URL"
    cd "$REPO_DIR"
fi

# Launch the application with sharing enabled
python launch.py --share

