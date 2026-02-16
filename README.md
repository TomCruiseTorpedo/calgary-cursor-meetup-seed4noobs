# Vibe Coding Onboarding Guide (AI-First, Beginner Friendly)

Welcome! This repository is designed for **absolute beginners** and for **AI agents** (like Cursor) to ingest *wholesale via this URL* and guide users through setting up a development environment, learning core concepts, and building a simple prototype during a 1.5 ~ 2 hour vibe coding hackathon/build session.

---

## AI BEHAVIOR POLICY

1. When the agent ingests this repo, it should first read:
   - ai/ai_behavior_policy.md
   - ai/ai_instructions.json
   - ai/tasks.yaml
   - ai/cursor_onboarding_prompts.md

2. The policy defines *tone, pacing, and interaction style* expected for novice Users.

3. The agent should not proceed with setup or task execution until it has acknowledged
   it has read and understood this policy.

4. If the User requests deeper conceptual explanations, the agent should ask:
   “Do you want a short explanation (1–2 sentences) or an expanded explanation?”

5. The agent should always ask clarifying questions before offering commands.

6. Use inline backticks only; avoid over-explaining unless explicitly asked.

End of Policy Usage Notes

---

## 🧠 What This Is

This repo is both:

1. **Human-friendly onboarding documentation**
2. **AI-friendly structured instructions** (for agents to parse, interpret, and act on)

The goal is to help *people with no coding experience* get up and running with:

- Terminals/command line basics
- Git & GitHub
- Python and JavaScript/TypeScript workflows
- Running code locally
- Deploying a simple web app (e.g., Vercel)

---

## ⚡ AI First: How This Works with Cursor

Cursor (or another agentic coding harness) can read this repo via its URL. The structured instructions here are meant for AI agents to:

- Understand your current environment
- Lay out step-by-step setup instructions
- Ask follow-up questions when needed
- Provide output you can manually act upon

> IMPORTANT: Cursor by default runs commands in a Sandbox environment for safety and **cannot execute shell commands directly on your machine** — so the agent will guide you to run commands yourself.

---

## 📍 How to Use This Repo

1. **Open Cursor IDE** (or chosen agent interface)
2. Paste the URL of this repo into the Cursor chat
3. Ask Cursor to: Ingest this repo and walk me through setting up my environment step by step.
4. Follow the steps it outputs — *copy/paste commands into your Terminal when instructed.*

---

## 🚀 Hackathon Workflow (High Level)

1. **Scan the QR code** you were handed to claim Cursor credits
2. **Create / sign into Cursor**
3. **Activate Pro subscription**

- You *must* add a credit card
- This activates the plan so the credits can be applied
- *You will not be charged immediately*

1. **Use Cursor + this repo** to prepare:

- Install tools
- Learn basics
- Build a mini prototype

---

## 📌 Tips for Success

### 🧩 Be Clear With Goals

Tell Cursor:

- What you do want to build
- What you don’t want to build
- How you want it to behave

Example prompt:

    Build a simple todo list app with a text input, add button, and list output.
    I want it in JavaScript + HTML/CSS.
    I want it to run locally first. 
    I don't want to deploy to Vercel right away.

### 🧠 Break It Down

Divide work into:

- Setup
- UI
- Logic
- Testing
- Deployment

Cursor can help you define these subtasks.

---

## 💡 Token Strategy (for AI Agents)

Cursor may let you choose between models (e.g., cheaper vs. powerful). Use:

- **Cheap tokens** for routine tasks (setup, basic scaffolding, explanations)
- **Powerful models** for complex logic or planning

---

## 📘 What’s Next in This Repo

- `docs/` — Human-focused walkthroughs
- `ai/` — Structured instructions for AI ingestion
- `templates/` — Python + JS starter projects
- `configs/` — Linting & best practices configs

---

## ❤️ Thank You

This repo was built to help *complete beginners* get hands-on with coding using the power of AI. If anything is unclear — ask your AI tool or the Volunteers!

Happy building! 🎉
