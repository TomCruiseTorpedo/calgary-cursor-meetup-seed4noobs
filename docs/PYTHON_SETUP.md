# Python Setup (Unified for macOS & Windows)

This guide shows beginners how to install Python, create and activate a virtual environment, install packages, and run Python code. These steps work the same for both macOS (using Zsh) and Windows (using PowerShell).

    Target Python version: Python 3.12.12

---

## 1) Check if Python is Already Installed

Open your terminal or PowerShell and run:

`python --version`

If that doesn’t show a version, try:

`python3 --version`

If you see something like:

Python 3.12.x

then Python is already installed. If not, proceed to install it.

---

## 2) Download & Install Python

Go to the official Python downloads page:

<https://www.python.org/downloads/>

### Windows

1. Run the downloaded .exe installer.
2. **Check the box “Add Python 3.x to PATH”.**
3. Click Install Now.
4. Wait for the install to finish and close the installer.

---

### macOS

1. Open the downloaded .pkg file.
2. Follow the installer prompts.

macOS may already include an older Python, but installing Python 3 ensures you have the right version.

---

## 3) Verify the Installation

After installing, open a fresh terminal and run:

`python --version`

If that doesn’t work, try:

`python3 --version`

You should see:

Python 3.12.x

If you don’t, double-check that Python was installed correctly.

---

## 4) What Is pip?

pip is Python’s package manager — it lets you install other libraries and tools.

Check if it’s available by running:

`pip --version`

If that doesn’t work:

`python -m pip --version`

---

## 5) Create a Project Folder

Pick a name for your project and make a folder:

`mkdir my_python_project`

`cd my_python_project`

---

## 6) Create a Virtual Environment

A virtual environment isolates your Python packages so different projects don’t conflict.

Create one with:

`python -m venv venv`

This makes a folder called venv with its own Python installation.

---

## 7) Activate the Virtual Environment

### Windows (PowerShell)

`.\\venv\\Scripts\\Activate.ps1`

If you see an execution policy warning, run PowerShell as Administrator and enter:

`Set-ExecutionPolicy RemoteSigned`

---

### macOS (Zsh)

`source venv/bin/activate`

When the virtual environment is active, your prompt will start with (venv).

---

## 8) Install Packages with pip

Once the virtual environment is active, install packages like this:

`pip install <package_name>`

For example:

`pip install flask`

---

## 9) Deactivate the Virtual Environment

When you’re done working in this project, run:

`deactivate`

Your prompt will return to normal.

---

## Why Use Virtual Environments?

Virtual environments:

- Keep project dependencies separate
- Prevent version conflicts
- Make your project easier to share
- Keep your system Python clean

---

## Quick Checklist

- Installed Python 3.x  
- Verified Python runs in the terminal/PowerShell  
- Created a project folder  
- Created a virtual environment  
- Activated the virtual environment  
- Installed at least one package

---

## Tip for Absolute Beginners

If you want a friendly, all-in-one Python editor that includes Python and a beginner interface, you can explore Thonny (<https://thonny.org>). It’s not required for this hackathon but is a nice tool when learning Python.

---

End of Python setup guide.
