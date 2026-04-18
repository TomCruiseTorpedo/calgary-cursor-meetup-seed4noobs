# 🪟 Windows Setup Guide — For Complete Beginners

**This guide is for Windows only.** If you're on a Mac, use [SETUP_FROM_SCRATCH.md](SETUP_FROM_SCRATCH.md) instead.

This walks you through setting up a developer environment on Windows 11 or Windows 10, starting from absolutely nothing.

---

## 🚀 Shortcut: Bootstrap Script

Instead of following these steps manually, download and run the bootstrap script — it installs everything in the right order automatically:

1. Open PowerShell **as Administrator** (right-click → "Run as administrator")
2. Run:
```powershell
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser -Force
irm https://raw.githubusercontent.com/TomCruiseTorpedo/calgary-cursor-meetup-seed4noobs/main/scripts/bootstrap-windows.ps1 | iex
```

Re-run-safe — skips anything already installed. If you'd rather follow the steps yourself, continue below.

---

## 📋 What You'll Install

1. Git
2. Node.js + npm (for JavaScript projects)
3. Python (for Python projects)
4. GitHub CLI (for connecting to GitHub without passwords)
5. Cursor (your agentic coding IDE)

**Note:** Windows Terminal (the "Container") and PowerShell (the "Brain") are already included with Windows 11 (see details below).

---

## 🖥️ Step 1: Understanding Your Terminal (Modern vs. Legacy)

On Windows, you need to separate the **Container (Terminal)** from the **Brain (Shell)**.

### Windows 11: The "Modern" Setup (Parallel to macOS)

Windows 11 makes **Windows Terminal** the default, creating a relationship identical to macOS.

- **The Container:** Windows Terminal (Modern, tabs, GPU accelerated).
- **The Brain:** PowerShell.
- **The Experience:** Clicking "Terminal" or "PowerShell" opens a modern window running the PowerShell engine.

### Windows 10: The "Legacy" Setup

On Windows 10, the "Terminal" and the "Shell" feel like the same thing because they are tightly coupled in the old "Console Host" (the classic black window).

- **The Container:** Console Host (basic, no tabs).
- **The Brain:** PowerShell.
- **The Experience:** When you open PowerShell, you are opening the legacy window running the PowerShell engine inside it.

---

## 🚀 Step 2: Open PowerShell (or Terminal)

You'll use PowerShell to install everything.

**How to open it:**

1. Press the **Windows key (⊞)** on your keyboard.
2. Type `PowerShell` (or `Terminal` if you're on Windows 11).
3. Right-click the result → **Run as administrator**.
   - *Running as administrator gives you permission to install software.*

### Why PowerShell is the "Superior Brain"

PowerShell is far better than the old "Command Prompt" (CMD) for beginners:

- **Object-Oriented**: It handles actual data, not just "dumb text."
- **Human Readable**: It uses a simple Verb-Noun system (like `Get-Service` or `Set-ExecutionPolicy`).
- **Universal**: It's a skill that now works on Mac and Linux too!

---

## 📦 Step 3: Windows Terminal (For Windows 10 Users)

If you are on Windows 10, you should install the modern **Windows Terminal** to get tabs and a much better experience.

### If you need to install it

**Option 1: Via Microsoft Store (easiest):**

1. Open the **Microsoft Store**.
2. Search for `Windows Terminal`.
3. Click **Get** / **Install**.

**Option 2: Via PowerShell using winget:**

```powershell
winget install Microsoft.WindowsTerminal
```

Once installed, always use **Windows Terminal** instead of plain PowerShell.

---

## 🔧 Step 4: Install Git

Git is how developers save and share code. You need it.

### Check if Git is already installed

```powershell
git --version
```

**If you see `git version 2.x.x`** → Already installed! Skip to the Configure section below.

**If you see "The term 'git' is not recognized"** → Install it.

**Option A: winget (recommended — Windows 11 built-in, simplest)**

```powershell
winget install --id Git.Git -e --source winget
```

Close PowerShell, open a new one, and verify: `git --version`

**Option B: Direct installer (Windows 10 fallback)**

1. Go to: <https://git-scm.com/downloads/win>
2. Click the **"Click here to download"** link
3. Open the downloaded `.exe` file
4. Click through the installer (keep defaults, click **Next**)
5. Click **Install**, then **Finish**

Close PowerShell, open a new one, verify: `git --version`

### Configure Git with your name and email

Git needs to know who you are. Run these two commands (replace with your actual name and email):

```
git config --global user.name "Your Name"
```

```
git config --global user.email "your.email@example.com"
```

---

## ⬡ Step 5: Install Node.js and npm

Node.js lets you run JavaScript on your computer. npm is Node's package manager.

### Check if already installed

```powershell
node --version
```

```powershell
npm --version
```

**If both show version numbers** → Already installed! Skip to Step 6.

### Install Node.js (Direct installer — simplest)

1. Go to: <https://nodejs.org/en/download>
2. Click **"Download Node.js (LTS)"** — LTS means "Long Term Support" (stable version)
3. Open the downloaded `.msi` installer
4. Click through it (keep default settings, click Next)
5. When you see a screen about **"Tools for Native Modules"**, check the box
6. Click **Install** and wait
7. **Restart your computer** after installation completes

After restarting, open a new PowerShell window and verify:

```
node --version
npm --version
```

You should see version numbers like `v22.x.x` and `10.x.x`.

### Alternative: Install with winget

If you have Windows 11 (winget pre-installed) or Windows 10 with winget installed:

```
winget install OpenJS.NodeJS.LTS
```

**Windows 10 users:** Install winget first via Microsoft Store if not already installed.

After that, close and reopen PowerShell, then verify with `node --version`.

---

## 🐍 Step 6: Install Python

Python is a beginner-friendly programming language.

### Check if already installed

```powershell
python --version
```

Also try:

```powershell
python3 --version
```

**If you see `Python 3.x.x`** → Already installed! Skip to Step 7.

**If you see `Python 2.x.x`** → That's an old version. Follow the install steps below.

### Install Python

1. Go to: <https://www.python.org/downloads/>
2. Click the big yellow **"Download Python 3.x.x"** button at the top
3. Open the downloaded `.exe` file
4. **⚠️ CRITICAL:** On the very first screen of the installer, you'll see a checkbox at the bottom that says:
   **"Add Python 3.x to PATH"**

   **CHECK THIS BOX BEFORE DOING ANYTHING ELSE.** This is the most common beginner mistake — if you miss this checkbox, Python won't work from the terminal.

5. Click **Install Now**
6. Wait for it to finish → click **Close**

Open a **brand new** PowerShell window and verify:

```
python --version
```

### Alternative: Install with winget

```
winget install Python.Python.3.12
```

---

## 🐙 Step 7: Install GitHub CLI + Connect to GitHub

GitHub CLI lets you push code without setting up SSH keys or tokens.

### Install

```powershell
winget install --id GitHub.cli -e --source winget
```

Close and reopen PowerShell, then connect your GitHub account:

```powershell
gh auth login
```

Choose **GitHub.com** → **HTTPS** → follow the browser prompt. After that, `git push` works without passwords.

> **Don't have a GitHub account?** Create one first at [github.com](https://github.com).

---

## 🛡️ Step 8: Fix PowerShell Execution Policy (If Needed)

Windows sometimes blocks running scripts for security reasons. If you ever see an error about "execution policy" or "scripts are disabled on this system", fix it:

Open PowerShell **as Administrator** and run:

```powershell
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
```

Type `Y` and press Enter when prompted.

This allows you to run scripts you've downloaded from the internet (required for many developer tools).

---

## 🧑‍💻 Step 9: Install Cursor

Cursor is an agentic coding IDE.

1. Go to: <https://www.cursor.com>
2. Click **Download** — it will detect Windows automatically
3. Open the downloaded `.exe` installer
4. Follow the prompts — it installs like any other Windows app
5. Launch Cursor from your Start Menu or Desktop

---

## ✅ Step 10: Verify Everything

Open a fresh PowerShell window (or Windows Terminal) and run each of these:

```powershell
git --version
node --version
npm --version
python --version
gh --version
```

Every command should show a version number. If any show an error, re-do that step.

---

## 🆘 Common Windows Issues

### "is not recognized as the name of a cmdlet"

This means Windows can't find the program. Fixes to try (in order):

1. Close PowerShell completely, open a new window, try again.
2. Restart your computer.
3. Re-run the installer for that tool, making sure to check any "Add to PATH" options.

### Python opens the Microsoft Store instead of running

Windows 10 has a quirk where typing `python` opens the Store. Fix it:

1. Search for "Manage app execution aliases" in the Start menu
2. Turn **OFF** the entries for "python.exe" and "python3.exe"
3. Now `python` in PowerShell will use your real Python installation

### npm commands fail with "EACCES: permission denied"

Run PowerShell as Administrator (right-click → "Run as administrator") and try again.

### "Running scripts is disabled on this system"

Run this in an Administrator PowerShell:

```powershell
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
```

### Git asks for credentials every time

Configure Git to remember your credentials:

```powershell
git config --global credential.helper manager
```

---

## 💡 Windows-Specific Tips

- **Always open PowerShell as Administrator** when installing new tools
- **Close and reopen PowerShell** after installing anything — new installs need a fresh shell
- **Restart your computer** if something installs but still shows "not found"
- **Use Windows Terminal** instead of the old "Command Prompt" (cmd) — it's much better

---

## Next Steps

- **[SETUP_FROM_SCRATCH.md](SETUP_FROM_SCRATCH.md)** — Back to the main guide
- **[PYTHON_SETUP.md](PYTHON_SETUP.md)** — Set up a Python project
- **[JS_TS_SETUP.md](JS_TS_SETUP.md)** — Set up a JavaScript/TypeScript project
