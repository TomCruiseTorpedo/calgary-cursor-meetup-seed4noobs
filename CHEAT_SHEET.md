# Vibe Coding Hackathon — Quick Cheat Sheet

This cheat sheet summarizes essential commands, concepts, and quick references
for beginners setting up their environment and building simple MVPs.
Assumes Python `3.12.12` and Node `v22.22.0`.

---

## 🧰 Terminal Basics (macOS + Windows PowerShell)

Navigation:
Use `pwd` to print the current directory, `ls` to list files, `cd folder` to change into a folder, `cd ..` to go up one level, `mkdir newdir` to create a new directory, and `clear` or `cls` to clear the terminal.

---

## 🐍 Python (3.12.12) Quick Commands

Check your Python version with `python --version`.  
To create a virtual environment, run `python -m venv venv`.  
To activate on Windows PowerShell, run `.\venv\Scripts\Activate.ps1`.  
To activate on macOS Zsh, run `source venv/bin/activate`.  
To install dependencies, run `pip install <package>`.  
To deactivate the virtual environment, run `deactivate`.

---

## 📦 Node (v22.22.0) & TypeScript Essentials

Use `nvm install 22.22.0` and `nvm use 22.22.0` to install and switch to the correct Node version.  
Check Node and npm with `node --version` and `npm --version`.  
Initialize a project using `npm init -y`.  
Add TypeScript with `npm install --save-dev typescript @types/node` then `npx tsc --init`.  
Compile TypeScript by running `npx tsc`.

---

## 📌 Git & GitHub Basics

Configure Git globally with `git config --global user.name "Your Name"` and `git config --global user.email "you@example.com"`.  
Check status with `git status`, stage changes with `git add .`, commit with `git commit -m "message"`, and push with `git push`.  
Clone a repo using `git clone https://github.com/username/repo.git`.  
Create a branch with `git checkout -b feature/description`.

---

## 🧠 Python Reference Tips

Check pip with `pip --version`.  
Install dependencies with `pip install -r requirements.txt`.  
Run your Python app with `python app.py`.

---

## 📗 JavaScript/TypeScript Reference Tips

Install packages with `npm install <pkg>`, install dev tools with `npm install --save-dev <pkg>`.  
Run a linter (if configured) with `npx eslint .`.  
Compile TypeScript using `npx tsc`.

---

## 🧩 Helpful Concepts (Plain English)

**Terminal / CLI**: a text interface where you type commands instead of clicking.  
**Virtual Environment (venv)**: an isolated Python workspace so packages don’t interfere across projects.  
**nvm**: Node Version Manager, used to install and switch among Node versions.  
**Linting**: automated tools (like ESLint) that check your code for style and mistakes.  
**Typing**: adding type information to code (TypeScript or Python type hints) to catch errors early.

---

## 🛠 Common Issues & Fixes

If PowerShell blocks a script, run `Set-ExecutionPolicy RemoteSigned`.  
If a command is “not found,” make sure you reopened your terminal after installing a tool, and for macOS ensure nvm is loaded in your shell profile.

---

## 🚀 Starter Templates — How to Run

**Python Starter App**:
Change directory to `templates/python/starter_app`.  
Create a venv using `python -m venv venv`.  
Activate it (Windows: `.\venv\Scripts\Activate.ps1`; macOS: `source venv/bin/activate`).  
Install requirements with `pip install -r requirements.txt`.  
Run the app with `python app.py`.

**TS Starter App**:
Change directory to `templates/js_ts/starter_app`.  
Install dependencies with `npm install`.  
Compile TypeScript using `npx tsc`.  
Open `index.html` in your browser.  
Optional local server: install and run using `npx serve .`.

---

## 🌐 Deployment (Vercel) Quick Steps

1. Connect your GitHub repo to Vercel.  
2. Select the project and configure build settings.  
3. Trigger the first deploy.  
4. Open the live URL to verify the deployment.

---

## 🤖 AI / Cursor Interaction Tips

**Plan Mode prompt example**: “Plan steps to get my environment ready and an MVP built in 90 ~ 120 minutes.”  
Ask for explanations using: “Explain this command in plain English.”  
Ask for user readiness: “Are you ready for me to paste this into your terminal?”

---

## 🎯 Success Checkpoints

✔ Terminal basics understood  
✔ Python `3.12.12` virtual environment created  
✔ Node `v22.22.0` installed  
✔ GitHub repo initialized and pushed  
✔ Starter templates running locally

---

End of Cheat Sheet
