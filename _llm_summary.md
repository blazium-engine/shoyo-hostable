# LLM Project Summary: shoyo-hostable

## 🔹 Project Overview

**shoyo-hostable** is a self-hostable version of the [shoyo.work](https://shoyo.work) service — a developer-focused portfolio platform akin to Linktr.ee. This project allows developers to deploy their portfolio using Docker, showcasing their work with just two variables:

- `PAGE_UID` — Identifier for the page to display
- `PUBLIC_KEY` — Key used to validate or display page content

This app renders a React-based frontend and pulls developer profile and link data from the Shoyo API using the above values.

- **GitHub:** https://github.com/blazium-engine/shoyo-hostable  
- **Discord (Community & Support):** https://discord.gg/Vbq4zGdaVs  

---

## 🧱 Project Structure

Generated: 2025-07-25 19:38:54  
Total Files: 68  
Total Folders: 44  
Total Size: 0.06 MB  

```text
.github/
    workflows/
        docker-publish.yml         - GitHub Action for Docker publishing
public/
    index.html                     - Precompiled HTML output (SPA entry)
scripts/                           - Build/utility scripts
src/
    index.jsx                      - Main React source
.babelrc                           - Babel config
.gitignore
CODE_OF_CONDUCT.md
CONTRIBUTING.md
Dockerfile                         - Self-hostable container build
example.env                        - Example environment config
LICENSE
package.json                       - npm dependencies and scripts
project_structure.md               - Auto-generated file structure summary
README.md                          - Overview and usage instructions
````

---

## 📚 Documentation Expectations

LLM tooling should look for and optionally generate the following documentation sections:

* `README.md`: Project overview, installation, variables, deployment
* `Dockerfile`: Self-hosting usage, exposed ports, runtime details
* `src/`: Component-level documentation for React (e.g. props, lifecycle)
* `scripts/`: DevOps or deployment automation
* `public/`: Static entry point (single-page app bootstrapping)
* `.github/workflows/`: CI/CD integration for DockerHub
* `.env` or `example.env`: Required environment variables

---

## 🧠 LLM Metadata & Goals

**Goal for LLMs:**

* Help generate accurate developer docs
* Assist in writing contribution guides
* Build or suggest tests based on component and deployment logic
* Summarize CI/CD logic from workflows
* Identify where environment configuration is used (`process.env`)
* Classify and explain role of each file/folder for onboarding

---

## 🚦 Environment Variables

LLMs should reference `example.env` and document:

* `PAGE_UID` — required
* `PUBLIC_KEY` — required

These are read by the React app via `process.env` and injected at build/runtime.

---

## 🧪 Potential LLM Tasks

* Summarize all components under `src/`
* Generate flow diagrams (API → React → Render)
* Extract all used environment variables
* Document how to deploy using Docker
* Suggest validations for input fields in UI
* Recommend test cases for `src/index.jsx`
* Propose auto-documentation from `package.json` scripts
* Help generate JSON schema for configuration

---

## 📢 External Links

* **Production Site**: [https://shoyo.work](https://shoyo.work)
* **Community Discord**: [https://discord.gg/Vbq4zGdaVs](https://discord.gg/Vbq4zGdaVs)
* **GitHub Repo**: [https://github.com/blazium-engine/shoyo-hostable](https://github.com/blazium-engine/shoyo-hostable)