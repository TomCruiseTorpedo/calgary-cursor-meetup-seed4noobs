# Vibe Coding Starter Pack — Beginner Friendly, Agentic First

A starter repo for people with zero coding experience who want to get up and running with vibe coding. Built for the [Calgary Cursor Meetup](https://www.meetup.com/calgary-cursor/) — also shared with tech-curious friends who want to try vibe coding for the first time.

---

## 👋 New here? Do these three things.

**Step 1 — Get a free AI coding tool**

Pick one — both are free to start:

| Tool | How to get it |
|---|---|
| **Cursor** | Download at [cursor.com](https://www.cursor.com) → install like any app → sign up |
| **VS Code + Copilot** | Download [VS Code](https://code.visualstudio.com) → install the [GitHub Copilot](https://marketplace.visualstudio.com/items?itemName=GitHub.copilot) extension → sign in with a GitHub account |

> **At a Calgary Cursor Meetup?** You were handed a card with a QR code worth $20 USD — that's one free month of Cursor Pro. See [CURSOR_ONBOARDING.md](CURSOR_ONBOARDING.md) to activate it.

**Step 2 — Paste this repo URL into the chat**

```
https://github.com/TomCruiseTorpedo/calgary-cursor-meetup-seed4noobs
```

**Step 3 — Send this message**

```
I'm brand new to coding. Please ingest this repo and walk me through
setting up my development environment step by step. Ask me which OS
I'm on (Mac or Windows) before starting.
```

That's it. Your AI coding tool reads this repo and guides you from there — telling you exactly what to type and when.

---

## 📓 For the AI Coding Tool (Harness Instructions)

When this repo is ingested, the harness should read these files first, in order:

1. `ai/ai_behaviour_policy.md` — tone, pacing, interaction style for novice users
2. `ai/ai_instructions.json` — structured roadmap and success metrics
3. `ai/tasks.yaml` — task list with dependencies
4. `ai/cursor_onboarding_prompts.md` — prompt bank for each phase

The harness must not proceed with setup until it has confirmed the user's OS (Mac or Windows) and acknowledged the behaviour policy.

---

## 🧠 What This Repo Contains

| Folder / File | What it's for |
|---|---|
| `docs/` | Human-friendly step-by-step guides |
| `ai/` | Structured instructions optimized for harness ingestion |
| `templates/` | Python (Flask) and JS/TS starter projects |
| `configs/` | Drop-in linting and formatting configs |
| `scripts/` | Bootstrap scripts for Mac and Windows (self-serve alternative to harness guidance) |
| `CHEAT_SHEET.md` | One-page command reference |
| `CURSOR_ONBOARDING.md` | Cursor account setup (meetup QR code + home free-tier paths) |

---

## 🚀 Calgary Cursor Meetup Workflow

1. Scan the QR code on your card → claim Cursor credits
2. Sign up / log in at [cursor.com](https://www.cursor.com) → activate Pro (no charge yet — QR covers it)
3. Paste this repo URL into Cursor chat → send the prompt above
4. Follow along — Cursor tells you what to paste into your terminal and when

Full Cursor account setup: [CURSOR_ONBOARDING.md](CURSOR_ONBOARDING.md)

---

## 💡 Tips for Success

**Be specific with your AI tool:**

> "Build a simple todo list app — text input, add button, list output. JavaScript + HTML/CSS. Run locally first, no deployment yet."

**Break it down:**

> "Split this into subtasks: UI first, then the logic, then connecting them."

**Ask for plain English any time:**

> "Explain what that command does before I run it."

**Token strategy:** Use the cheaper/faster model for setup and explanations. Switch to the more powerful model when you're stuck on logic.

---

## ❤️ Thank You

Built to help complete beginners get hands-on with vibe coding. If anything is unclear — ask your AI coding tool, or find a volunteer at the meetup.
