#!/bin/bash

# Update package lists
sudo apt-get update

# Install pip if not already installed
if ! command -v pip &> /dev/null
then
    sudo apt-get install -y python3-pip
fi

# Install pygit2 version 1.12.2
pip install pygit2==1.12.2

# Install Git if not already installed
if ! command -v git &> /dev/null
then
    sudo apt-get install -y git
fi

# Clone the Stable Diffusion WebUI Forge repository
git clone https://github.com/lllyasviel/stable-diffusion-webui-forge.git

# Navigate to the repository directory
cd stable-diffusion-webui-forge

# Launch the application with sharing enabled
python launch.py --share
