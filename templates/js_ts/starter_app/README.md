# JavaScript/TypeScript Starter App

This is a minimal starter project that lets you write
TypeScript, compile it to JavaScript, and run code in a browser.

It includes the bare minimum to get you started.

    Requires Node **v22.22.0**.

---

## 📁 What’s Inside

- `index.html` — main HTML page
- `src/main.ts` — TypeScript source file
- `tsconfig.json` — TypeScript compiler config
- `package.json` — npm project config

---

## 🚀 How to Run

1) Open your terminal (PowerShell on Windows or Zsh on macOS).

2) Navigate to this folder:

   `cd templates/js_ts/starter_app`

3) Install dependencies:

   `npm install`

4) Compile TypeScript to JavaScript:

   `npx tsc`

   This will generate compiled JS under `dist/main.js`.

5) Open `index.html` in a browser:

   - You can simply double-click the file,
   - Or use a simple static server such as:

     `npx serve .`

6) In your browser, you should see:

   “Hello from JS/TS Starter App!”

---

## 🧠 Notes

- TypeScript helps catch errors early and improves editor tooling.
- You can add frameworks, styles, and logic as you grow your project.
- For guidance on setup and best practices, refer to:

  - `docs/JS_TS_SETUP.md`
  - `docs/BEST_PRACTICES.md`

Happy coding! 🎉
