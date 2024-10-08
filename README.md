# Stable Diffusion WebUI Forge Setup Script

This repository contains a Bash script that automates the installation and setup of the [Stable Diffusion WebUI Forge](https://github.com/lllyasviel/stable-diffusion-webui-forge) for running a Stable Diffusion-based image generation interface.

## Features
- Installs required dependencies (`pip`, `pygit2`, `git`)
- Clones the Stable Diffusion WebUI Forge repository
- Launches the WebUI with sharing enabled, making it accessible via a public URL

## Prerequisites
Before running the script, ensure that you are using a Linux-based operating system with `apt` as the package manager (e.g., Ubuntu or Debian). The script assumes Python 3 and `pip` are available on your system.

## Installation and Setup

1. **Clone this repository:**
   ```bash
   git clone https://github.com/your-username/stable-diffusion-setup-script.git
   cd stable-diffusion-setup-script
