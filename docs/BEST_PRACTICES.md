# Development Best Practices (JavaScript/TypeScript & Python)

This guide introduces friendly and practical best practices for people new to coding. The goal is to help you write code that is easier to read, understand, and maintain — especially when working with an AI assistant like Cursor.

---

## Why Best Practices Matter

Using consistent practices will help you:

- Avoid unnecessary errors
- Write code that others (and AI agents) can understand
- Set up healthier projects that scale
- Collaborate more easily

These notes apply whether you write Python, JavaScript, or TypeScript.

---

## 1) Naming Conventions

Good names make your code self-documenting.

### Python

- Use **snake_case** for variables and functions:

  example_variable = 5  
  def calculate_total(): …

- Use **PascalCase** for class names:

  class ShoppingCart:

### JavaScript/TypeScript

- Use **camelCase** for variables and functions:

  let totalPrice = 0  
  function addItem() { … }

- Use **PascalCase** for React components or classes:

  function TodoList() { … }  
  class UserProfile { … }

---

## 2) Comments & Docstrings

Write comments only when necessary to explain *why* something is done, not *what* it does.

### Python Docstrings

Use triple-quoted docstrings for functions and modules:

    """Calculate the total price including tax."""

### JavaScript/TypeScript Comments

Use `//` for single-line comments and `/* … */` for multi-line when needed.

Example:

```
// Adds two numbers  
```

```
/*  
  This function is used in the main checkout flow  
*/
```

---

## 3) Typing & Linting

Typing and linting tools help catch mistakes early and keep your code consistent.

---

### TypeScript

- Always type function arguments and return values when practical.
- For example:

```
function add(a: number, b: number): number {
return a + b
}
```

- Avoid using `any` unless absolutely necessary.

---

### Python

- Use type hints:

```
def calculate_total(prices: list[int]) -> float:
```

- Consider using a linter like **flake8** or a formatter like **black**.

---

## 4) Keep Files Small & Focused

Each file should do *one main thing*.

Example:

- `auth.py` → only authentication logic
- `utils.py` → helper functions
- `main.py` → entry point

In JS/TS projects:

- `src/`
  ├─ `api/`
  ├─ `components/`
  ├─ `utils/`
  └─ `index.ts`

---

## 5) Use Version Control Branches

Always create branches for features and fixes:

```
git checkout -b feature/user-signup
```

Branch names should be:

- short
- descriptive
- lowercased with hyphens

Example:

feature/add-login

---

## 6) Meaningful Commit Messages

Your commit messages tell the story of your project.

Good format examples:

```
Add user login form
Fix API response handling error
Update README with setup instructions
```

Bad examples:

```
Stuff
Fix bug
Update
```

---

## 7) Use a Task Runner or Scripts

In JavaScript projects, add helpful scripts to `package.json`:

```
"scripts": {
"start": "node index.js",
"lint": "eslint .",
"build": "tsc"
}
```

In Python projects, consider using a `Makefile` or scripts to automate common tasks.

---

## 8) Keep Dependencies Up to Date

Install libraries with package managers:

- JS/TS → `npm install <pkg>`  
- Python → `pip install <pkg>`

Check for outdated packages regularly:

- JS/TS → `npm outdated`  
- Python → `pip list --outdated`

---

## 9) Document Your Project

Include a top-level `README.md` with:

- What your project does
- How to set up the environment
- How to run the project
- How to contribute

This helps humans *and AI agents* understand your context quickly.

---

## 10) Break Down Tasks Before Asking AI

When interacting with an AI assistant (like Cursor), ask it to break down complex tasks into subtasks. For example:

    Help me split user login flow into:

    1. UI form
    2. API endpoint
    3. Validation
    4. Deployment

This gives clearer checkpoints and more reliable results.

---

## 11) Test Early & Often

Even simple tests help catch bugs.

Examples:

Python:

```
assert calculate_total([1,2,3]) == 6
```

JavaScript:

```
test('adds two numbers', () => {
expect(add(2,3)).toBe(5)
})
```

You can add test runners later once you’re comfortable.

---

## 12) Ask For Clarification From AI

If you ever get a confusing instruction back from the AI agent, ask it to *explain in simple language*.

Example:

```
Explain what this function does in plain English.
```

---

## Summary

Best practices make your code:

- More readable
- More consistent
- Easier to debug
- Easier to collaborate

Whether you write Python, JavaScript, or TypeScript, following these simple habits will make your work smoother and more enjoyable.

---

End of Best Practices Guide.
