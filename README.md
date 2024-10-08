Here's the updated `README.md` with both model download links:

# Stable Diffusion WebUI Forge Setup Script

This repository contains a Bash script that automates the installation and setup of the [Stable Diffusion WebUI Forge](https://github.com/lllyasviel/stable-diffusion-webui-forge) for running a Stable Diffusion-based image generation interface.

## Features
- Installs required dependencies (`pip`, `pygit2`, `git`)
- Clones or updates the Stable Diffusion WebUI Forge repository
- Automatically navigates into the repository and launches the WebUI with sharing enabled
- Downloads pre-trained models for Stable Diffusion

## Prerequisites
Ensure that you are using a Linux-based operating system with `apt` as the package manager (e.g., Ubuntu or Debian).

## Installation and Setup

## For colab
[![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/epic-miner/forgeui-lightningai/blob/main/Untitled10.ipynb)

## For Lightning AI

1. **Clone this repository:**
   ```bash
   git clone https://github.com/epic-miner/forgeui-lightningai.git
   cd forgeui-lightningai
   ```

2. **Make the script executable:**
   ```bash
   chmod +x *
   ```

3. **Run the setup script:**
   ```bash
   sh start.sh
   ```

4. **Download the Models:**
   You can download the pre-trained models from [Hugging Face](https://huggingface.co):
   - [Flux1-dev-bnb-nf4-v2](https://huggingface.co/lllyasviel/flux1-dev-bnb-nf4/blob/main/flux1-dev-bnb-nf4-v2.safetensors)
     ```bash
     wget -O flux1-dev-bnb-nf4-v2.safetensors https://huggingface.co/lllyasviel/flux1-dev-bnb-nf4/resolve/main/flux1-dev-bnb-nf4-v2.safetensors
     ```
   - [Flux1-dev-fp8](https://huggingface.co/lllyasviel/flux1_dev/blob/main/flux1-dev-fp8.safetensors)
     ```bash
     wget -O flux1-dev-fp8.safetensors https://huggingface.co/lllyasviel/flux1_dev/resolve/main/flux1-dev-fp8.safetensors
     ```

## How It Works
The `setup_stable_diffusion.sh` script performs the following steps:
1. Updates the system package list.
2. Installs `pip` and `git` if not already installed.
3. Installs `pygit2` version `1.12.2`.
4. Checks if the `stable-diffusion-webui-forge` repository exists:
   - If it exists, it pulls the latest changes from the repository.
   - If it does not exist, it clones the repository.
5. Navigates into the repository and launches the WebUI with sharing enabled.
6. Optionally, you can download the pre-trained models from Hugging Face for better results.

## Notes
- Ensure you have sufficient permissions to install packages and execute the script.
- If you're using a different package manager (like `yum` or `pacman`), modify the package installation commands accordingly.
- The public sharing feature allows remote access to the WebUI.

## Resources
- [Stable Diffusion WebUI Forge Repository](https://github.com/lllyasviel/stable-diffusion-webui-forge)
- [Video Tutorial](https://youtu.be/Qe_-3wl8USw?si=JM1Ho5I_8CCLHWOB)
- [Discussions on WebUI Forge](https://github.com/lllyasviel/stable-diffusion-webui-forge/discussions/981)
- [Download Model (Flux1-dev-bnb-nf4-v2)](https://huggingface.co/lllyasviel/flux1-dev-bnb-nf4/blob/main/flux1-dev-bnb-nf4-v2.safetensors)
- [Download Model (Flux1-dev-fp8)](https://huggingface.co/lllyasviel/flux1_dev/blob/main/flux1-dev-fp8.safetensors)

## License
This project is licensed under the MIT License.
