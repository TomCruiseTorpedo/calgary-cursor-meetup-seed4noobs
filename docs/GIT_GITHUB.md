# Git & GitHub Basics (Unified for macOS & Windows)

This guide helps you — as a complete beginner — understand the essentials of **Git** (local version control) and **GitHub** (cloud hosting for Git).  

Git and GitHub are tools that track your changes, help you collaborate, and let you share code with others online.

---

## What Are Git and GitHub?

### 🧠 What is Git?

**Git** is a *version control system* — a tool that keeps track of changes to your files and code over time.  
You can:

- Save *snapshots* of your work (called *commits*)
- Go back to older versions
- Try things without fear of losing progress  
It works *locally* — right on your own computer.

---

### ☁️ What is GitHub?

**GitHub** is an *online platform* where you store your Git projects in the cloud.  
It lets you:

- Back up your code
- Share your projects publicly
- Collaborate with others  
Think of GitHub as a “cloud storage + showcase + collaboration hub” for your Git projects.

> **Important:** Git works on your local machine; GitHub is a place your Git projects are stored online.

---

## 📌 How Git + GitHub Work Together

1. You **create a Git repository** locally on your computer.
2. You make changes and **commit** them with messages.
3. You **link** your local repository to a **remote repository** on GitHub.
4. You **push** your commits to GitHub so they are stored online.
5. You can **pull** changes back down from GitHub later.

---

## 🛠 Step-by-Step Beginner Workflow

### 1) Install Git

**Check if Git is already installed:**

```bash
git --version
```

If you see a version like git version 2.x.x, Git is installed.

If not:

- macOS: Git usually installs with Xcode tools; follow installer prompts

- Windows: Install from <https://git-scm.com/download/win>

(Level-up: You can also use GitHub Desktop a visual tool that simplifies these steps — see <https://desktop.github.com/>)

### 2) Configure Git (One-Time Setup)

Tell Git who you are:

```bash
git config --global user.name "Your Name"
git config --global user.email "<your.email@example.com>"
```

This ensures your commits are tagged with your identity.

### 3) Create a Project Locally

Go to your project folder:

```bash
cd path/to/myproject
git init
```

This turns the folder into a Git repository.

### 4) Track and Commit Changes

Check status:

```bash
git status
```

Stage changes:

```bash
git add .
```

Commit with a message:

```bash
git commit -m "first commit"
```

### 5) Create a GitHub Repository

1. Go to <https://github.com> and log in
2. Click **New repository**
3. Give it a name and choose *Public*
4. Do NOT initialize with a README here if you already did locally

### 6) Authenticate with GitHub (one-time setup)

GitHub removed password authentication in 2021. The easiest way to authenticate is the GitHub CLI:

```bash
gh auth login
```

Choose **GitHub.com** → **HTTPS** → follow the browser prompt. Once done, `git push` will work without ever entering a password.

> If you don't have `gh` installed, see [SETUP_FROM_SCRATCH.md](SETUP_FROM_SCRATCH.md) Step 7.

### 7) Link Local to Remote and Push

Copy the remote link from GitHub, then:

```bash
git remote add origin https://github.com/yourusername/repo-name.git
git push -u origin main
```

Now your code is live on GitHub.

---

## 🔄 Common Git Commands (Quick Reference)

| Task              | Command                   |
| ----------------- | ------------------------- |
| Check status      | `git status`              |
| Stage all changes | `git add .`               |
| Commit            | `git commit -m "message"` |
| Push to GitHub    | `git push`                |
| Pull from GitHub  | `git pull`                |
| Clone a repo      | `git clone <url>`         |

---

## 🧠 Beginner Tips

- Use meaningful commit messages like “Add feature X.”
- Commit early and often — small commits are easier to undo.
- If you get stuck, ask Cursor for help:

    Explain what `git push` does in plain English

---

## 🎯 What You’ve Learned

- Git is a tool that tracks changes to your project.
- GitHub is where your Git projects live online.
- Together, they help you track, share, and collaborate on code.

Great job! Next up is Python setup if you want to use Python in your project.
