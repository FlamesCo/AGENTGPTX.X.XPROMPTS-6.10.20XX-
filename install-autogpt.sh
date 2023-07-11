#!/bin/bash

# Welcome message
echo "Welcome to the AUTO-GPT Installer Wizard!"
echo "This wizard will guide you through the installation process."

# Check if the required dependencies are installed
echo "Checking dependencies..."
if command -v python3 >/dev/null 2>&1; then
  echo "Python 3 is installed."
else
  echo "Python 3 is not installed. Please install Python 3 before proceeding."
  exit 1
fi

if command -v pip3 >/dev/null 2>&1; then
  echo "pip3 is installed."
else
  echo "pip3 is not installed. Please install pip3 before proceeding."
  exit 1
fi

# Install AUTO-GPT
echo "Installing AUTO-GPT..."
pip3 install gpt4

# Check if the installation was successful
if command -v gpt4 >/dev/null 2>&1; then
  echo "AUTO-GPT has been installed successfully."
else
  echo "Installation failed. Please check the error messages and try again."
  exit 1
fi

# Provide instructions on how to use AUTO-GPT
echo "Installation completed successfully!"
echo "You can now use AUTO-GPT by running the 'gpt4' command in your terminal."

# End message
echo "Thank you for using the AUTO-GPT Installer Wizard!"
