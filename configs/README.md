# Configs — Drop-In Project Settings

Ready-to-use config files. Copy whichever ones apply into your project root.

| File | What it does | Copy to |
|---|---|---|
| `editorconfig` | Consistent indentation/line endings across editors | `.editorconfig` in project root |
| `eslint.json` | ESLint rules for JS/TS projects | `.eslintrc.json` in project root |
| `prettier.json` | Prettier formatting rules | `.prettierrc.json` in project root |
| `mypy.ini` | Python type-checking config (mypy) | `mypy.ini` in project root |

## How to use

**Mac/Linux:**
```bash
cp configs/editorconfig myproject/.editorconfig
cp configs/eslint.json myproject/.eslintrc.json
```

**Windows:**
```powershell
Copy-Item configs\editorconfig myproject\.editorconfig
Copy-Item configs\eslint.json myproject\.eslintrc.json
```

You don't need all of them. For a quick JS/TS project, `editorconfig` + `eslint.json` + `prettier.json` is a solid baseline. For Python, `editorconfig` + `mypy.ini`.
