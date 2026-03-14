# 🚀 Setup From Scratch — Complete Beginner Guide

**If you have never coded before and your computer is brand new (or freshly reset), start here.**

This guide walks you through installing every single tool you need, step by step, in the correct order. Nothing is assumed. If you already have some tools installed, you can skip those sections.

---

## 📋 What You'll Be Installing (In Order)

1. A modern terminal (command line app)
2. Git (version control)
3. Homebrew (Mac package manager) — *Mac only*
4. Node.js + npm (for JavaScript/TypeScript projects)
5. Python (for Python projects)
6. Cursor (the AI coding tool you'll use)

Total time estimate: **30–60 minutes** on a fresh machine.

---

## ⚠️ Before You Start: Know Your Operating System

- **macOS** = you have an Apple Mac laptop or desktop
- **Windows** = you have a PC running Windows (10 or 11)
- **Linux** = Ubuntu, Fedora, Debian, etc.

**Not sure which you have?**
- If you see the Apple logo (🍎) on your computer, you have a Mac (macOS).
- If you see a Windows logo (⊞), you have Windows.

Follow only the section for **your** operating system.

---

## 🖥️ STEP 1: Open Your Terminal

A terminal is a text-based app where you type commands. Think of it as talking directly to your computer.

**Understanding Terminal vs Shell:**
- **Terminal** is the application window (the emulator)
- **Shell** is the command processor that runs inside the terminal
- On modern macOS, you get **Terminal** (the app) running **zsh** (the shell) by default

### macOS

1. Press **Cmd (⌘) + Space** together to open Spotlight
2. Type `Terminal`
3. Press **Enter**

You'll see a window with text like:
```
your-name@MacBook ~ %
```
That's your terminal. It's running zsh (Z shell) by default since macOS Catalina (10.15). zsh replaced bash as the default shell due to licensing changes. The terminal is the window, while zsh is the command processor that interprets your commands.

### Windows

1. Press the **Windows key (⊞)** on your keyboard
2. Type `PowerShell`
3. Click **Windows PowerShell** (right-click → "Run as administrator" for installs)

You'll see a window with text like:
```
PS C:\Users\YourName>
```

### Linux (Ubuntu/Debian)

1. Press **Ctrl + Alt + T** at the same time
   - Or search for "Terminal" in your apps menu

---

## 📦 STEP 2: Install Git

Git is how developers save and share code. You need it.

### Check if Git is Already Installed

In your terminal, type exactly this and press Enter:

```
git --version
```

**If you see something like `git version 2.x.x`** → Git is already installed! Skip to Step 3.

**If you see an error like "command not found"** → Continue below.

---

### Install Git on macOS

When you run `git --version` and Git isn't installed, macOS will usually **automatically offer to install it** through Xcode Command Line Tools. A popup window will appear — just click **Install** and wait.

If that doesn't happen, install it manually:

1. Go to: https://git-scm.com/downloads/mac
2. Download the installer
3. Open the `.dmg` file and follow the prompts

After installing, close your terminal, open a new one, and run `git --version` again to confirm.

---

### Install Git on Windows

1. Go to: https://git-scm.com/downloads/win
2. Click the download link — it will automatically download the right version
3. Open the downloaded `.exe` file
4. Click through the installer, accepting the defaults (just keep clicking **Next**)
5. Click **Install**, then **Finish**

After installing, close PowerShell, open a new one, and run:
```
git --version
```
You should now see a version number.

---

### Install Git on Linux (Ubuntu/Debian)

```
sudo apt update
sudo apt install git -y
```

Verify:
```
git --version
```

---

## 🍺 STEP 3: Install Homebrew (macOS Only — Skip if Windows/Linux)

Homebrew is like an "app store" for developer tools on Mac. It makes installing everything else much easier.

### Check if Homebrew is Already Installed

```
brew --version
```

**If you see `Homebrew x.x.x`** → Already installed! Skip to Step 4.

**If you see "command not found"** → Install it below.

---

### Install Homebrew

Paste this entire command into your Mac terminal and press Enter:

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

- It will ask for your Mac password (the one you use to log into your computer)
- Type it — **you won't see the characters appear as you type, that's normal** — and press Enter
- Wait for it to finish (can take 5–15 minutes)

**After it finishes**, Homebrew may show you a message like:
```
==> Next steps:
Run these two commands in your terminal...
```

If you see that, copy and run those commands exactly as shown. They look something like:
```
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/YOURNAME/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```

Verify Homebrew works:
```
brew --version
```

---

## ⬡ STEP 4: Install Node.js and npm

Node.js lets you run JavaScript on your computer. npm is its package manager (for installing JS libraries).

### Check if Node.js is Already Installed

```
node --version
```

```
npm --version
```

**If both show version numbers** → Already installed! Skip to Step 5.

**If not** → Follow your OS guide below.

---

### Install Node.js on macOS (via nvm — recommended)

**nvm** (Node Version Manager) lets you install and manage Node.js versions. It's the recommended approach.

**Step A: Install nvm**

```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
```

After it finishes, close your terminal completely and open a new one.

Then verify nvm installed:
```
nvm --version
```

If you get "command not found", run this first and try again:
```
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
```

**Step B: Install Node.js using nvm**

```
nvm install 22
nvm use 22
```

Verify:
```
node --version
npm --version
```

You should see `v22.x.x` for Node and `10.x.x` for npm.

---

### Install Node.js on Windows

**Option A: Direct installer (simplest for beginners)**

1. Go to: https://nodejs.org/en/download
2. Click the big **"Download Node.js (LTS)"** button
3. Open the downloaded `.msi` file
4. Click through the installer (accept defaults, keep clicking Next)
5. When asked about "Tools for Native Modules", check that box
6. Finish and restart your computer

After restarting, open PowerShell and verify:
```
node --version
npm --version
```

**Option B: Using nvm-windows (for managing multiple versions)**

1. Go to: https://github.com/coreybutler/nvm-windows/releases
2. Download `nvm-setup.exe` from the latest release
3. Run the installer
4. Open a **new** PowerShell window as Administrator
5. Run:
```
nvm install 22
nvm use 22
```
Then verify:
```
node --version
npm --version
```

---

### Install Node.js on Linux (Ubuntu/Debian)

```
curl -fsSL https://deb.nodesource.com/setup_22.x | sudo -E bash -
sudo apt install -y nodejs
```

Verify:
```
node --version
npm --version
```

---

## 🐍 STEP 5: Install Python

Python is a popular beginner-friendly programming language.

### Check if Python is Already Installed

```
python3 --version
```

Also try:
```
python --version
```

**If you see `Python 3.x.x`** → Already installed! Skip to Step 6.

**If you see `Python 2.x.x`** → That's an old version. You need Python 3. Continue below.

---

### Install Python on macOS

**Option A: Using Homebrew (easiest)**

```
brew install python
```

After it finishes:
```
python3 --version
```

**Option B: Direct installer**

1. Go to: https://www.python.org/downloads/
2. Click the big yellow **"Download Python 3.x.x"** button
3. Open the downloaded `.pkg` file
4. Follow the installer prompts

---

### Install Python on Windows

1. Go to: https://www.python.org/downloads/
2. Click the big yellow **"Download Python 3.x.x"** button
3. Open the downloaded `.exe`
4. **⚠️ IMPORTANT:** On the first screen of the installer, **check the box that says "Add Python 3.x to PATH"** — this is critical!
5. Click **Install Now**
6. Wait for it to finish, then click **Close**

Open a **new** PowerShell window and verify:
```
python --version
```

---

### Install Python on Linux (Ubuntu/Debian)

Python 3 is usually pre-installed on Linux. Check with:
```
python3 --version
```

If it's missing:
```
sudo apt update
sudo apt install python3 python3-pip -y
```

---

## 🧑‍💻 STEP 6: Install Cursor

Cursor is the AI-powered code editor you'll be using for this project.

### Download Cursor

1. Go to: https://www.cursor.com
2. Click the **Download** button — it will detect your operating system automatically
3. Install it like any other app:
   - **Mac**: Open the `.dmg` file, drag Cursor to your Applications folder
   - **Windows**: Run the `.exe` installer
   - **Linux**: Follow the instructions on the download page

### First Launch

1. Open Cursor
2. You'll be asked to sign in or create an account — do that
3. When asked to "set up AI features", enter your API key or use the free tier

---

## ✅ STEP 7: Verify Everything Works

Open a fresh terminal and run these commands one by one. Each should show a version number, not an error:

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
python3 --version
```

If **any** of these give you "command not found", go back to the relevant section and re-do that install step. Common fixes:
- Close your terminal and open a new one (installs often need a fresh terminal)
- On Windows: restart your computer after installing

---

## 🎉 You're Ready!

Once all checks pass, head to:

- **[CURSOR_ONBOARDING.md](../CURSOR_ONBOARDING.md)** — Get your Cursor credits and account set up
- **[docs/PYTHON_SETUP.md](PYTHON_SETUP.md)** — Start a Python project
- **[docs/JS_TS_SETUP.md](JS_TS_SETUP.md)** — Start a JavaScript/TypeScript project

---

## 🆘 Troubleshooting Common Issues

### "command not found" after installing something

- Close your terminal completely, open a fresh one, and try again
- On Mac: make sure Homebrew updated your shell profile (it shows instructions at the end of install)

### Permission errors on Mac

Don't use `sudo` with Homebrew. If you get permission errors, check: https://docs.brew.sh/FAQ

### Permission errors on Windows

Right-click PowerShell → "Run as administrator" and try again

### Python shows version 2.x instead of 3.x

Use `python3` instead of `python` for all commands, or follow the install steps above to install Python 3.

### The terminal just closes immediately

This usually means there's an error. Try right-clicking and choosing "Run as administrator" (Windows) or check your terminal preferences (Mac).

### Still stuck?

Ask your Cursor AI directly:
> "I'm on a fresh [Mac/Windows/Linux] machine and [command] isn't working after I tried to install [tool]. Here's the error: [paste the error]"

Cursor can help diagnose and fix most installation issues.
