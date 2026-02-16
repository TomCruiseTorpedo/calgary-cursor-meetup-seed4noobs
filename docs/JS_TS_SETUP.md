# JavaScript & TypeScript Setup (Unified for macOS & Windows)

This guide walks beginners through installing Node.js, using nvm, initializing a project, and configuring TypeScript. These steps are unified for both Windows (PowerShell) and macOS (Zsh).

    This guide assumes Node v22.22.0 as the default version throughout.

---

## 1) What You Need

You will install:

- nvm — Node Version Manager
- Node.js — JavaScript runtime
- npm — Node package manager (comes with Node.js)
- (Optional) TypeScript — typed superset of JavaScript

---

## 2) Install nvm (Node Version Manager)

### Why nvm?

nvm lets you install and switch between multiple versions of Node.js safely without polluting your system.

### macOS

In your Terminal (Zsh), run:

`curl -o-https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.4/install.sh | bash`

After the installer runs, reload your shell with:

`export NVM_DIR="$HOME/.nvm"`

`[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"`

---

### Windows (PowerShell + nvm-Windows)

Download and install **nvm-Windows** from:

<https://github.com/coreybutler/nvm-win/releases>

After installing:

Open a new PowerShell window and run:

`nvm version`

to verify installation.

---

## 3) Install Node.js Using nvm

Choose a stable Node.js version (LTS), for example version 22:

`nvm install 22.22.0`

`nvm use 22.22.0`

Verify Node and npm:

`node --version`

`npm --version`

---

## 4) Initialize a JavaScript Project

Create a folder for your project:

`mkdir my_js_project`

`cd my_js_project`

Initialize a project (this creates package.json):

`npm init -y`

---

## 5) Install Development Tools

### Install a Linter (ESLint)

Install ESLint:

`npm install --save-dev eslint`

Initialize ESLint with recommended defaults:

`npx eslint --init`

Follow the prompts — choose:

- JavaScript or TypeScript
- Browser + Node
- Recommended style

---

## 6) Add TypeScript (Optional but Recommended)

Install TypeScript and type definitions:

`npm install --save-dev typescript @types/node`

Initialize TypeScript configuration:

`npx tsc --init`

This creates a `tsconfig.json` file which controls how TypeScript is compiled.

---

## 7) Example Folder Structure

Here is a simple layout:

```
my_js_project/
├── package.json
├── tsconfig.json
├── src/
│   └── main.ts
└── .eslintrc.json
```

- **src/** — your source code
- **tsconfig.json** — TypeScript config
- **.eslintrc.json** — linter rules

---

## 8) Running Code Locally

### JavaScript Example

Create a file named `index.js`:

`console.log("Hello, JavaScript!");`

Run it with:

`node index.js`

---

### TypeScript Example

In `src/main.ts`:

`console.log("Hello, TypeScript!");`

Compile TypeScript:

`npx tsc`

This creates compiled JavaScript in the `dist/` folder.

Run the compiled file like:

`node dist/main.js`

---

## 9) Common Commands You Will Use

Task — Command

Install packages:

`npm install <pkg>`

Install dev tools:

`npm install --save-dev <pkg>`

Run linter:

`npx eslint .`

Compile TypeScript:

`npx tsc`

---

## 10) Troubleshooting Tips

If a command isn’t found, make sure:

- nvm is loaded properly (macOS)
- You opened a **new** terminal after installing tools
- On Windows PowerShell, if permission errors occur, run PowerShell as Administrator and, if needed:

`Set-ExecutionPolicy RemoteSigned`

---

## 11) Brief Explanations

**nvm vs Node:**  
nvm manages which Node.js version is active on your machine.

**npm:**  
Node’s package manager — installs libraries like React, Express, TypeScript.

**TypeScript:**  
A typed superset of JavaScript that helps catch bugs earlier and improves editor tooling.

---

## You Are Ready

You now have:

- Node.js and npm installed
- A starter project initialized
- ESLint configured
- Optional TypeScript support added

---

End of JavaScript & TypeScript Setup Guide.
