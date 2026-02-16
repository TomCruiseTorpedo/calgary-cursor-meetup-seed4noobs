# Cursor Onboarding Prompts (Plan Mode + Agent Mode)

This prompt pack is designed for onboarding absolute beginners using Cursor in a 1.5 ~ 2 hour vibe coding hackathon/build session.  
Encourage users to start in **Plan Mode** to map a roadmap, then switch to **Agent Mode** for step-by-step execution.

---

## Phase 0 — Repo Ingestion & Context

Prompt:
“Please ingest the contents of this GitHub repo URL and produce an overall plan for helping a beginner set up their local environment, understand key concepts, and build a simple MVP within 1.5 ~ 2 hours. Include high-level phases and estimated time for each.”

Prompt:
“Summarize the purpose of each folder in this repository. Specifically identify which docs are human-facing guides versus AI-structured tasks, and note any dependencies between them.”

Prompt:
“Extract the success criteria from the structured AI content (tasks.yaml) and rewrite them in plain English ordered by phase.”

---

## Phase 1 — Plan Mode (Before Execution)

Prompt:
“Using the repo’s AI tasks.yaml and human docs, create a detailed setup checklist for a beginner. Break it into steps such as terminal basics, Git/GitHub onboarding, Python environment, and Node/TS setup. For each step, list:

- What the user should learn
- What commands they might run
- What success looks like”

Prompt:
“Give me a prioritized list of setup tasks for a beginner, with estimated times for each task (e.g., 5 min, 10 min). Identify any tasks that could be skipped or simplified if time is limited.”

Prompt:
“Generate a simple glossary of terms that beginners in this hackathon should know (e.g., terminal, CLI, Git, commit, branch, virtual environment, npm, TypeScript). Use plain language and examples.”

---

## Phase 2 — Agent Mode: Setup Guidance

### Terminal & Shell

Prompt:
“Walk the user through opening their terminal or PowerShell. Ask which OS they are on. Then teach basic commands: pwd/ls/cd/mkdir, with copy-paste examples. Confirm each step before moving on.”

### Node & nvm

Prompt:
“Now help the user install nvm and Node v22.22.0. Detect the OS automatically and provide the exact commands. Explain what each command does in plain English.”

### Python Environment

Prompt:
“Help the user install Python 3.12.12 (Windows/macOS). Guide them to create and activate a virtual environment, then install Flask from the template. Provide copy-paste commands and confirm success.”

### Git & GitHub

Prompt:
“Walk the user through setting up Git in PowerShell or macOS terminal. Configure user.name and user.email, show how to initialize a local repo from the template, and then link/push to GitHub.”

---

## Phase 3 — Best Practices & Using Templates

Prompt:
“Teach the user basic best practices for Python and JS/TS (typing, linting, file structure). Ask if they want to enable those tools now or skip for speed.”

Prompt:
“Show the user how to use the Python starter template. Provide guidance on where to paste code, how to run `app.py`, and how to verify it works in the browser.”

Prompt:
“Show the user how to use the JavaScript/TypeScript starter template. Include npm install, compile with tsc, and open the HTML in a browser.”

---

## Phase 4 — MVP Prototyping

Prompt:
“Help the user define a simple MVP (e.g., todo list app) by breaking it into subtasks: UI, behavior, and deployable endpoint. List clear evaluation criteria for each subtask.”

Prompt:
“Now generate skeleton code for the first subtask (e.g., HTML UI with a text input and button), and explain each part.”

Prompt:
“Iteratively ask for user decisions (styles, features) and update the prototype code accordingly.”

---

## Phase 5 — Deployment (Optional)

Prompt:
“Guide the user through deploying the app to Vercel. Provide step-by-step instructions including linking GitHub, selecting a project, and triggering the first deploy.”

Prompt:
“If deployment fails, diagnose common errors and give clear directions to fix them (e.g., missing build script, wrong Node version).”

---

## Human Clarification Prompts

Prompt:
“Ask the user what operating system they are using: macOS or Windows.”

Prompt:
“Ask the user what they want their MVP to *do* in a single sentence (e.g., ‘I want a todo list where I can add and check off items’).”

Prompt:
“When giving a command, ask: ‘Are you ready for me to paste this into your terminal? If not, explain what you’re stuck on.’”

---

## Fallback & Recovery Prompts

Prompt:
“I didn’t understand that. Can you rephrase in simpler terms?”

Prompt:
“This step requires knowing your current working directory and operating system. Can you tell me what prompt you see and which OS you are on?”

Prompt:
“You can skip this optional step if you want to focus on building your MVP. Just say ‘skip this step’.”

---

## Optional Learning Reinforcement Prompts

Prompt:
“Explain in plain English: what is a virtual environment and why we use it.”

Prompt:
“Explain what ESLint does and why linting is useful for code quality.”

---

## Usage Notes

- Use **Plan Mode first** to sketch the roadmap.
- Then **switch to Agent Mode** for step-by-step guidance.
- Ask for clarification when uncertain.
- Confirm each step before executing commands.
