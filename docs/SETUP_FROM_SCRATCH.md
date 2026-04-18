# 🚀 Setup From Scratch — Complete Beginner Guide

> **How you'll normally use this guide:** Your agentic coding harness (Cursor, VS Code with Copilot, or Antigravity) reads this file and walks you through it interactively — telling you exactly what to run and when. You don't need to read the whole thing upfront; just follow along with the AI.
>
> **Self-guided?** If you prefer to go through it yourself without an AI, this guide works standalone too.

This guide walks you through installing every single tool you need, step by step, in the correct order. Nothing is assumed. If you already have some tools installed, you can skip those sections.

---

## 📋 What You'll Be Installing (In Order)

1. A modern terminal (command line app)
2. Git (version control) — *on Mac, this also installs Xcode Command Line Tools, required before Homebrew*
3. Homebrew (Mac) — *Mac only, must come after Git/CLT*
4. Node.js + npm (for JavaScript/TypeScript projects)
5. Python (for Python projects)
6. GitHub CLI (for connecting to GitHub)
7. Cursor, VS Code, or Antigravity — your agentic coding IDE (if not already installed)

Total time estimate: **30–60 minutes** on a fresh machine.

> **Why this order matters (Mac):** Homebrew is your package manager — it installs Git, Python, and other tools. But Homebrew itself needs Apple's Xcode Command Line Tools (CLT) first. Running `git --version` on a fresh Mac triggers the CLT install popup, which gets you CLT *and* git in one step. After that, Homebrew can install everything else. If you install things in the wrong order, commands like `brew install python` won't exist yet.
>
> **Shortcut:** Instead of following these steps manually, run the bootstrap script:
> ```bash
> bash <(curl -fsSL https://raw.githubusercontent.com/TomCruiseTorpedo/calgary-cursor-meetup-seed4noobs/main/scripts/bootstrap-mac.sh)
> ```
> It installs everything in the right order automatically. Re-run-safe — skips anything already installed.

---

## 🐧 On Linux?

If you're running Linux, you probably don't need this guide — you already know how to use a terminal and a package manager. Install git, Node, and Python via your distro's package manager (`apt`, `dnf`, `pacman`, etc.) and you're set.

---

## ⚠️ Before You Start: Know Your Operating System

- **macOS** = you have an Apple Mac laptop or desktop
- **Windows** = you have a PC running Windows (11 or 10)
- **Linux** = Ubuntu, Fedora, Debian, etc.

**Not sure which you have?**

- If you see the Apple logo (🍎) on your computer, you have a Mac (macOS).
- If you see a Windows logo (⊞), you have Windows.

Follow only the section for **your** operating system.

**Mac users — which chip?** These guides default to **Apple Silicon** — any Mac with an Apple-designed chip (M-series: M1 through M5; or A-series: MacBook Neo with A18 Pro). If you have an older **Intel Mac** (pre-late 2020), the steps are the same but Homebrew installs to a different path — watch for the "Intel Mac" notes in the Homebrew section.

---

## 🖥️ STEP 1: Open Your Terminal

A terminal is a text-based app where you type commands. Think of it as talking directly to your computer.

**Understanding Terminal (The Container) vs Shell (The Brain):**

- **Terminal (The Window/UI):** The graphical application that provides the window, handles text rendering, fonts, and tabs.
- **Shell (The Brain):** The program running inside that window that interprets your typed commands and executes them.

### macOS

1. Press **Cmd (⌘) + Space** together to open Spotlight
2. Type `Terminal`
3. Press **Enter**

You'll see a window with text like:

```
your-name@MacBook ~ %
```

On macOS, **Terminal** is your "Container" and **zsh** is your "Brain." Since macOS Catalina (10.15), zsh is the default shell.

#### 🎨 Optional: Enhance Your Terminal with Oh My Zsh *(skip for now — come back after setup is complete)*

Once you have the basic terminal working, you can optionally enhance your zsh experience with **Oh My Zsh** - a popular framework that makes your terminal more powerful and visually appealing.

##### What is Oh My Zsh?

Oh My Zsh is an open-source, community-driven framework that manages your zsh configuration. It transforms a plain terminal into a much more powerful and visually appealing tool through pre-configured settings, themes, and plugins.

##### Core Features

- **300+ Plugins**: Add shortcuts (aliases) and functions for nearly every developer tool (Git, Docker, npm, Python, etc.)
- **150+ Themes**: Instantly change your prompt's look to show useful info like Git branch, time, or system status
- **Automatic Updates**: Built-in tool keeps the framework and components up to date

##### Popular Add-ons

While many features are built-in, most users install these "must-have" plugins:

- **zsh-autosuggestions**: Suggests commands as you type based on your command history
- **zsh-syntax-highlighting**: Colours your commands in real-time (red for invalid, green for correct)
- **Powerlevel10k**: The most popular and flexible theme for a highly customized, fast interface

##### Installation

If you have curl installed, you can install Oh My Zsh with a single command:

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

##### Performance Note

Because Oh My Zsh loads many scripts at startup, some users find it can slightly slow down how quickly a new terminal window opens. This is usually not noticeable on modern machines, but if you experience slow startup times, you can always uninstall it later.

**Note:** This step is completely optional. Your terminal will work perfectly fine without Oh My Zsh - it just adds extra features and customization options.

---

### Windows

1. Press the **Windows key (⊞)** on your keyboard
2. Type `PowerShell`
3. Click **Windows PowerShell** (right-click → "Run as administrator" for installs)

You'll see a window with text like:

```
PS C:\Users\YourName>
```

On Windows 11, **Windows Terminal** is your "Container" and **PowerShell** is your "Brain." On Windows 10, PowerShell often runs in the older "Legacy" Console Host window.

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

When you run exactly this command and Git isn't installed:

```bash
git --version
```

macOS will usually **automatically offer to install it** through Xcode Command Line Tools. A popup window will appear — just click **Install** and wait.

If that doesn't happen, install it manually:

1. Go to: <https://git-scm.com/downloads/mac>
2. Download the installer
3. Open the `.dmg` file and follow the prompts

After installing, close your terminal, open a new one, and run `git --version` again to confirm.

### Configure Git (Mac — do this right after installing)

Git needs to know your name and email before you can make your first commit.

```bash
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
```

Use the same email you'll use for your GitHub account.

---

### Install Git on Windows

1. Go to: <https://git-scm.com/downloads/win>
2. Click the download link — it will automatically download the right version
3. Open the downloaded `.exe` file
4. Click through the installer, accepting the defaults (just keep clicking **Next**)
5. Click **Install**, then **Finish**

After installing, close PowerShell, open a new one, and run:

```
git --version
```

You should now see a version number.

### Configure Git (Windows — do this right after installing)

```
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
```

Use the same email you'll use for your GitHub account.

---

## 🍺 STEP 3: Install Homebrew (macOS Only — Skip if Windows)

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

> **Intel Mac?** Your commands will show `/usr/local/bin/brew` instead of `/opt/homebrew/bin/brew` — that's correct. Just run whatever Homebrew printed, don't change it.

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

**Option A: Install nvm**

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.4/install.sh | bash
```

After it finishes, close your terminal completely and open a new one.

Then verify nvm installed:

```bash
nvm --version
```

If you get "command not found", run this first and try again:

```bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
```

**Option B: Install Node.js using nvm**

```bash
nvm install 22
nvm use 22
nvm alias default 22
```

The last line (`nvm alias default 22`) is important — without it, Node won't be available when you open a new terminal window.

Verify:

```bash
node --version
npm --version
```

You should see `v22.x.x` for Node and `10.x.x` for npm.

---

### Install Node.js on Windows

**Option A: Direct installer (simplest for beginners)**

1. Go to: <https://nodejs.org/en/download>
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

1. Go to: <https://github.com/coreybutler/nvm-windows/releases>
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

```bash
brew install python
```

After it finishes, verify:

```bash
python3 --version
```

**Option B: Direct installer**

1. Go to: <https://www.python.org/downloads/>
2. Click the big yellow **"Download Python 3.x.x"** button
3. Open the downloaded `.pkg` file
4. Follow the installer prompts

---

### Install Python on Windows

1. Go to: <https://www.python.org/downloads/>
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

## 🧑‍💻 STEP 6: Install Your AI Coding Tool

> **Using VS Code + Copilot or Antigravity instead of Cursor?** You already have your tool — skip this step and move on to Step 7.

### Download Cursor

1. Go to: <https://www.cursor.com>
2. Click the **Download** button — it will detect your operating system automatically
3. Install it like any other app:
   - **Mac**: Open the `.dmg` file, drag Cursor to your Applications folder
   - **Windows**: Run the `.exe` installer

### First Launch

1. Open Cursor
2. Sign in or create an account when prompted — use your email
3. Choose the free tier if asked about a plan

---

## 🐙 STEP 7: GitHub — Account, SSH Key, and CLI

### Create a GitHub account

If you don't have one yet:

1. Go to [github.com](https://github.com) and click **Sign up**
2. Enter your email, choose a password and username
3. Verify your email — GitHub sends a confirmation link

> Use the same email you used for `git config` above — it links your commits to your account.

---

### Generate an SSH key (ed25519)

An SSH key is a secure identity file that GitHub (and servers) use to recognise your computer — no password needed each time.

**macOS:**
```bash
ssh-keygen -t ed25519 -C "your.email@example.com"
```
Press Enter to accept the default file location. Leave the passphrase blank for now.

```bash
ssh-add --apple-use-keychain ~/.ssh/id_ed25519
```

**Windows (PowerShell as Administrator):**
```powershell
ssh-keygen -t ed25519 -C "your.email@example.com"
Set-Service ssh-agent -StartupType Automatic
Start-Service ssh-agent
ssh-add $env:USERPROFILE\.ssh\id_ed25519
```

**Add the key to GitHub:**

Copy your public key to your clipboard:
```bash
# Mac
cat ~/.ssh/id_ed25519.pub | pbcopy

# Windows
Get-Content $env:USERPROFILE\.ssh\id_ed25519.pub | Set-Clipboard
```

Go to [github.com/settings/ssh/new](https://github.com/settings/ssh/new), give it a name like "My MacBook", paste, and click **Add SSH key**.

---

### Install GitHub CLI and connect your account

The GitHub CLI handles day-to-day GitHub tasks from the terminal.

**macOS:**
```bash
brew install gh
```

**Windows:**
```powershell
winget install --id GitHub.cli -e --source winget
```

Then connect:
```
gh auth login
```

Choose **GitHub.com** → **HTTPS** → follow the browser prompt. After this, `git push` works without credential prompts.

---

## ✅ STEP 8: Verify Everything Works

Open a fresh terminal and run these commands one by one. Each should show a version number, not an error:

**macOS:**
```bash
brew --version
git --version
node --version
npm --version
python3 --version
gh --version
```

**Windows:**
```powershell
git --version
node --version
npm --version
python --version
gh --version
```

If **any** of these give you "command not found", go back to the relevant section and re-do that install step. Common fixes:

- Close your terminal and open a new one (installs often need a fresh terminal)
- On Windows: restart your computer after installing

---

## 🎉 You're Ready

Once all checks pass, head to:

- **[CURSOR_ONBOARDING.md](../CURSOR_ONBOARDING.md)** — Get your Cursor credits and account set up
- **[PYTHON_SETUP.md](PYTHON_SETUP.md)** — Start a Python project
- **[JS_TS_SETUP.md](JS_TS_SETUP.md)** — Start a JavaScript/TypeScript project

Or just run the bootstrap script and it handles steps 2–8 automatically:

**Mac:** `bash <(curl -fsSL https://raw.githubusercontent.com/TomCruiseTorpedo/calgary-cursor-meetup-seed4noobs/main/scripts/bootstrap-mac.sh)`

**Windows:** Download and run `scripts/bootstrap-windows.ps1` as Administrator.

---

## 🆘 Troubleshooting Common Issues

### "command not found" after installing something

- Close your terminal completely, open a fresh one, and try again
- On Mac: make sure Homebrew updated your shell profile (it shows instructions at the end of install)

### Permission errors on Mac

Don't use `sudo` with Homebrew. If you get permission errors, check: <https://docs.brew.sh/FAQ>

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
