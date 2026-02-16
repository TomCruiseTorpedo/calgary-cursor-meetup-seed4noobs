# Terminal Basics (Unified for macOS & Windows)

This guide covers the essentials of using a terminal (command line) for beginners.  
By the end, you’ll understand basic commands, how to run them, and optional tools you might explore later.

---

## What Is a Terminal?

A **terminal** is a text-based interface where you type instructions instead of clicking buttons.

- On **Windows**, you’ll use **PowerShell**.
- On **macOS**, you’ll use **Zsh** (with optional upgrades).
- Most development tools you’ll install run here.

---

## Why Learn the Terminal?

You will use the terminal to:

1. Run installation commands
2. Navigate folders
3. Run scripts
4. Start development servers
5. Version control (Git)

---

## Opening the Terminal

### macOS

1. Press `Cmd + Space` (Spotlight)
2. Type `Terminal` → Enter

You’ll see something like this:

    your-macbook:~ username$

---

### Windows (PowerShell)

1. Press `Win` key
2. Type `PowerShell` → Enter

You’ll see something like:

    PS C:\Users\Username>

---

## Basic Commands (Unified)

| Task | macOS | Windows (PowerShell) |
|------|-------|-----------------------|
| Print working directory | `pwd` | `pwd` |
| List files/folders | `ls` | `ls` |
| Change directory | `cd foldername` | `cd foldername` |
| Make directory | `mkdir newfolder` | `mkdir newfolder` |
| Clear screen | `clear` | `cls` |
| Exit terminal | `exit` | `exit` |

**Tip:** You can copy/paste commands from Cursor into the terminal.

---

## Moving Around (Example)

Navigate into a folder called `myproject`:

    cd myproject

Go back up one directory:

    cd ..

---

## Running Commands

To run a command:

1. Type it
2. Press **Enter**
3. Read the output
4. Proceed to the next step

---

## macOS: Zsh + Oh My Zsh (Beginner Recommended)

macOS uses **Zsh** by default.  
**Oh My Zsh** is a friendly framework that makes your prompt prettier and more helpful.

### Install Oh My Zsh (Optional)

In your terminal:

    sh -c "$(curl -fsSL <https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh>)"

This gives you:

- Helpful git info in your prompt
- Command suggestions
- Easier customizations

---

## Quick Summary

- Terminal lets you run text commands.
- Use **PowerShell** on Windows.
- Use **Zsh (+ Oh My Zsh)** on macOS.
- Commands are mostly the same across platforms.
- Ghostty is a nice optional terminal to explore later.

---

## Next Steps

After this:

1. You’ll learn **Git & GitHub basics**
2. Then **Install Python**
3. Then **Install Node/npm**
4. Start using Cursor with this repo

Stay curious! 🚀
