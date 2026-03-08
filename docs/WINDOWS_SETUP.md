# 🪟 Windows Setup Guide — For Complete Beginners

**This guide is for Windows only.** If you're on a Mac, use [SETUP_FROM_SCRATCH.md](SETUP_FROM_SCRATCH.md) instead.

This walks you through setting up a developer environment on Windows 10 or Windows 11, starting from absolutely nothing.

---

## 📋 What You'll Install

1. Windows Terminal (better terminal app)
2. Git
3. Node.js + npm (for JavaScript projects)
4. Python (for Python projects)
5. Cursor (the AI coding tool)

---

## 🖥️ Step 1: Open PowerShell

PowerShell is Windows' built-in terminal. You'll use it to install everything.

**How to open it:**
1. Press the **Windows key (⊞)** on your keyboard
2. Type `PowerShell`
3. Right-click **Windows PowerShell** → **Run as administrator**
   - Running as administrator gives you permission to install software

You'll see a window like:
```
PS C:\Windows\System32>
```
or
```
PS C:\Users\YourName>
```

That's your terminal. You're ready to type commands.

---

## 📦 Step 2: Install Windows Terminal (Recommended)

Windows Terminal is a much better terminal app than the default one. It supports multiple tabs, is easier to use, and looks nicer.

**Install via the Microsoft Store:**
1. Press **Windows key (⊞)**
2. Type `Microsoft Store` and open it
3. Search for `Windows Terminal`
4. Click **Get** / **Install**

Once installed, use Windows Terminal instead of plain PowerShell for everything going forward.

Alternatively, install it from PowerShell using `winget` (Windows' built-in package manager):
```
winget install Microsoft.WindowsTerminal
```

---

## 🔧 Step 3: Install Git

Git is how developers save and share code. You need it.

### Check if Git is already installed

```
git --version
```

**If you see `git version 2.x.x`** → Already installed! Skip to Step 4.

**If you see "The term 'git' is not recognized"** → Install it:

1. Go to: https://git-scm.com/downloads/win
2. Click the **"Click here to download"** link — it auto-detects your Windows version
3. Open the downloaded `.exe` file
4. Click through the installer:
   - Keep all the default settings (just keep clicking **Next**)
   - On "Choosing the default editor", you can choose Notepad if you're not sure
   - On "Adjusting your PATH environment", keep **"Git from the command line and also from 3rd-party software"** selected
5. Click **Install**, then **Finish**

**After installing:** Close PowerShell completely, open a new one, and verify:
```
git --version
```

### Configure Git with your name and email

Git needs to know who you are. Run these two commands (replace with your actual name and email):

```
git config --global user.name "Your Name"
```
```
git config --global user.email "your.email@example.com"
```

---

## ⬡ Step 4: Install Node.js and npm

Node.js lets you run JavaScript on your computer. npm is Node's package manager.

### Check if already installed

```
node --version
```
```
npm --version
```

**If both show version numbers** → Already installed! Skip to Step 5.

### Install Node.js (Direct installer — simplest)

1. Go to: https://nodejs.org/en/download
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

If you have Windows 11 or a recent Windows 10, you can use `winget`:
```
winget install OpenJS.NodeJS.LTS
```

After that, close and reopen PowerShell, then verify with `node --version`.

---

## 🐍 Step 5: Install Python

Python is a beginner-friendly programming language.

### Check if already installed

```
python --version
```

Also try:
```
python3 --version
```

**If you see `Python 3.x.x`** → Already installed! Skip to Step 6.

**If you see `Python 2.x.x`** → That's an old version. Follow the install steps below.

### Install Python

1. Go to: https://www.python.org/downloads/
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

## 🛡️ Step 6: Fix PowerShell Execution Policy (If Needed)

Windows sometimes blocks running scripts for security reasons. If you ever see an error about "execution policy" or "scripts are disabled on this system", fix it:

Open PowerShell **as Administrator** and run:
```
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
```

Type `Y` and press Enter when prompted.

This allows you to run scripts you've downloaded from the internet (required for many developer tools).

---

## 🧑‍💻 Step 7: Install Cursor

Cursor is the AI-powered code editor you'll use.

1. Go to: https://www.cursor.com
2. Click **Download** — it will detect Windows automatically
3. Open the downloaded `.exe` installer
4. Follow the prompts — it installs like any other Windows app
5. Launch Cursor from your Start Menu or Desktop

---

## ✅ Step 8: Verify Everything

Open a fresh PowerShell window (or Windows Terminal) and run each of these:

```
git --version
```
```
node --version
```
```
npm --version
```
```
python --version
```

Every command should show a version number. If any show an error, re-do that step.

---

## 🆘 Common Windows Issues

### "is not recognized as the name of a cmdlet"

This means Windows can't find the program. Fixes to try (in order):
1. Close PowerShell completely, open a new window, try again
2. Restart your computer
3. Re-run the installer for that tool, making sure to check any "Add to PATH" options

### Python opens the Microsoft Store instead of running

Windows 10 has a quirk where typing `python` opens the Store. Fix it:
1. Search for "Manage app execution aliases" in the Start menu
2. Turn **OFF** the entries for "python.exe" and "python3.exe"
3. Now `python` in PowerShell will use your real Python installation

### npm commands fail with "EACCES: permission denied"

Run PowerShell as Administrator (right-click → "Run as administrator") and try again.

### "Running scripts is disabled on this system"

Run this in an Administrator PowerShell:
```
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
```

### Git asks for credentials every time

Configure Git to remember your credentials:
```
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
- **[docs/PYTHON_SETUP.md](PYTHON_SETUP.md)** — Set up a Python project
- **[docs/JS_TS_SETUP.md](JS_TS_SETUP.md)** — Set up a JavaScript/TypeScript project
