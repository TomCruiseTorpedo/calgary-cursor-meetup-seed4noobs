# Terminal Basics (Unified for macOS & Windows)

This guide covers the essentials of using a terminal (command line) for beginners.  
By the end, you’ll understand basic commands, how to run them, and optional tools you might explore later.

---

## What Is a Terminal?

A **terminal** is a text-based interface where you type instructions instead of clicking buttons.

- On **macOS**, you’ll use **Zsh** (the "Brain") inside **Terminal** (the "Container").
- On **Windows**, you’ll use **PowerShell** (the "Brain") inside **Windows Terminal** (the "Container").
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

1. Press the **Windows key (⊞)**
2. Type `PowerShell` → Enter

You’ll see something like:

    PS C:\Users\Username>

---

## Parallel Comparison Summary

The relationship between the Window (Terminal) and the Shell (Brain) is identical on modern macOS and Windows 11.

| Feature | macOS (Default) | Windows 11 (Default) | Windows 10 (Default) |
|---------|-----------------|----------------------|----------------------|
| **The "Container"** | Terminal.app (Modern, tabs) | Windows Terminal (Modern, tabs) | Console Host (Basic, no tabs) |
| **The "Brain"** | Zsh | PowerShell | PowerShell or CMD |
| **Rendering** | GPU (Fast, smooth text) | GPU (Fast, smooth text) | CPU (Slower text) |
| **Customisation** | High (Themes, Plugins) | High (JSON, Shaders) | Very limited |

---

## The "PowerShell Advantage"

PowerShell is the modern command engine for Windows. It is more powerful than the old Command Prompt (CMD) for several reasons:

- **Object-Oriented**: It passes actual data (objects) between commands instead of just "dumb text."
- **Modern Logic**: It uses a clear Verb-Noun system (e.g., `Get-Service`) that is easier to learn than cryptic codes.
- **Cross-Platform**: PowerShell Core now runs on Mac and Linux, making it a universal skill.

---

## Basic Commands (Unified)

| Task | macOS (Zsh) | Windows (PowerShell) |
|------|-------------|-----------------------|
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

## macOS: iTerm2 + Oh My Zsh (Recommended Upgrade)

The built-in Terminal app works fine, but **iTerm2** is a free drop-in replacement with tabs, split panes, better colours, and search. **Oh My Zsh** adds git branch info in your prompt, command autosuggestions, and syntax highlighting. Together they're the standard Mac dev setup.

### Install iTerm2

```bash
brew install --cask iterm2
```

Once installed, open it from your Applications folder and use it instead of the built-in Terminal from now on. Everything else works exactly the same — same commands, same shell.

### Install Oh My Zsh

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

When it finishes, close and reopen iTerm2. Your prompt will now show the current Git branch and have colour-coded commands.

---

## Quick Summary

- Terminal lets you run text commands.
- Use **Zsh (+ Oh My Zsh)** on macOS.
- Use **PowerShell (+ Windows Terminal)** on Windows.
- Commands are mostly the same across platforms.

---

## Next Steps

After this:

1. **Install Python** and/or **Node/npm** — whichever your project needs
2. **Git & GitHub setup** — account, SSH key, gh CLI
3. **Paste the seed4noobs repo URL** into your AI coding tool’s chat and let it guide you from there

Stay curious! 🚀
