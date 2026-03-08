# 🍺 Homebrew — Mac Package Manager Setup

**This guide is for macOS only.** If you're on Windows or Linux, skip this file.

Homebrew is the most popular package manager for Mac. Think of it like an App Store, but for developer tools — it installs things like Python, Node.js, Git, and hundreds of other tools with a single command.

---

## Why Homebrew?

Without Homebrew, installing developer tools on a Mac usually means:
- Finding a website
- Downloading a file
- Running an installer
- Hoping it works

With Homebrew, it's just one command. Example:
```
brew install python
```

That's it. No websites. No downloads. No installers.

---

## Step 1: Check if Homebrew is Already Installed

Open your terminal (Cmd + Space → type "Terminal" → Enter) and run:

```
brew --version
```

**If you see something like `Homebrew 4.x.x`** → You already have it! You're done. Skip to the bottom of this file.

**If you see `command not found: brew`** → Continue to Step 2.

---

## Step 2: Install Homebrew

Paste this entire command into your terminal and press Enter:

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

This command downloads and runs the official Homebrew installer. Here's what will happen:

1. It will show you what it's about to install and ask you to press **Return** (Enter) to continue
2. It will ask for your **Mac password** — this is the password you use to log into your Mac
   - ⚠️ When you type your password, **nothing will appear on screen** — that's normal and intentional (security feature). Just type it and press Enter.
3. It will download and install Homebrew. This can take **5–15 minutes** depending on your internet speed.
4. It will show a lot of output text — that's normal.

---

## Step 3: Read the "Next Steps" Output Carefully

When the installer finishes, scroll up and look for a section that says:

```
==> Next steps:
```

It will usually show you **two commands** to run. They look something like this (your username will be different):

```
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/YOURNAME/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```

**You MUST run these two commands**, otherwise Homebrew won't work in new terminal windows.

Copy them from your terminal output and run them one at a time.

> **Why?** These commands tell your terminal where to find Homebrew. Without them, you'd have to set this up every time you open a new terminal window.

---

## Step 4: Verify Homebrew Works

Close your terminal completely, open a new one, and run:

```
brew --version
```

You should see something like:
```
Homebrew 4.x.x
```

If you see that — congratulations, Homebrew is installed!

---

## Step 5: Run Homebrew's Health Check (Optional but Recommended)

```
brew doctor
```

This checks for any issues with your Homebrew installation. It's like running a diagnostic. If it says `Your system is ready to brew.` — you're in great shape.

If it shows warnings, they're usually harmless. Only worry about things marked as **errors**.

---

## Using Homebrew: The Basics

Once Homebrew is installed, here are the commands you'll use most:

| What you want to do | Command |
|---------------------|---------|
| Install something | `brew install <name>` |
| Update Homebrew itself | `brew update` |
| Update all installed packages | `brew upgrade` |
| Search for something | `brew search <name>` |
| See what's installed | `brew list` |
| Remove something | `brew uninstall <name>` |

**Examples:**
```
brew install git
brew install python
brew install node
```

---

## Common Issues & Fixes

### "Permission denied" errors

Do **not** use `sudo brew install ...`. Homebrew is designed to work without sudo. If you get permission errors, it usually means the `/usr/local` or `/opt/homebrew` directory has wrong ownership. Visit https://docs.brew.sh/FAQ for fixes.

### Homebrew is slow

Homebrew downloads files from the internet. Slow internet = slow installs. This is normal.

### "Already installed" message

```
Warning: formula-name x.x already installed
```

This just means you already have that tool. It's not an error — you're good.

### Command still not found after installing with Homebrew

1. Close your terminal completely
2. Open a new terminal
3. Try again

If it still doesn't work, run:
```
eval "$(/opt/homebrew/bin/brew shellenv)"
```

Then try your command again.

---

## Next Steps

Now that Homebrew is installed, you can install developer tools easily:

- **Install Python:** `brew install python`
- **Install Node.js via nvm:** See [JS_TS_SETUP.md](JS_TS_SETUP.md)
- **Install Git:** `brew install git`

Or return to the main setup guide: [SETUP_FROM_SCRATCH.md](SETUP_FROM_SCRATCH.md)
