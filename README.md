# shoyo-hostable

**shoyo-hostable** is the self-hostable version of [shoyo.work](https://shoyo.work), a Linktr.ee-style SaaS tailored for developers, creators, and professionals to showcase their projects, portfolios, and work history.

This project provides a minimal **Docker-based solution** to deploy a fully functional, public-facing portfolio page based on data stored on the main Shoyo platform. It renders a customizable frontend using only two required environment variables.

---

## 🚀 Features

- ✅ Self-hostable Docker container  
- 🎨 Custom theme templating support (WIP)  
- 🔐 Securely displays only your public portfolio data  
- ⚡ Instant deploy with just two variables  
- 🌍 Great for developer sites, resumes, landing pages, or personal branding  

---

## 📦 Requirements

- Docker installed  
- A valid Shoyo `PAGE_UID` and `PUBLIC_KEY`  

You can get these from your [Shoyo Dashboard](https://shoyo.work).

---

## 🛠️ Environment Variables

| Variable      | Description                                                        |
|---------------|--------------------------------------------------------------------|
| `PAGE_UID`    | Your unique Shoyo page identifier (public-facing)                 |
| `PUBLIC_KEY`  | The public key used to verify and fetch public data securely      |

---

## 🐳 Usage (Docker)

### 🔧 Step 1: Create `.env`

```env
PAGE_UID=your_page_uid_here
PUBLIC_KEY=your_public_key_here
````

### 📦 Step 2: Run Docker

```bash
docker run -d \
  -e PAGE_UID=your_page_uid_here \
  -e PUBLIC_KEY=your_public_key_here \
  -p 3000:3000 \
  ghcr.io/shoyo/shoyo-hostable:latest
```

Or using a `docker-compose.yml`:

```yaml
version: "3"

services:
  shoyo:
    image: ghcr.io/shoyo/shoyo-hostable:latest
    restart: always
    ports:
      - "3000:3000"
    environment:
      PAGE_UID: your_page_uid_here
      PUBLIC_KEY: your_public_key_here
```

Then run:

```bash
docker-compose up -d
```

---

## 🌐 Access Your Page

After deployment, visit:
👉 `http://localhost:3000` (or your server IP/domain)
to view your portfolio.

---

## 📁 Customization

This project supports basic theming and templating in future versions. You'll be able to:

* Customize layout and colors
* Host assets (images, icons) locally
* Switch between pre-defined templates

Stay tuned for upcoming updates!

---

## 🤖 LLM Support

To enhance automatic documentation generation and improve onboarding for tools like ChatGPT or GitHub Copilot, this project includes:

* **[`_llm_summary.md`](./_llm_summary.md)**: A metadata file describing the project structure, usage expectations, and LLM-guided goals.
* **`project_structure.md`**: Auto-generated tree and context for LLMs and human readers.

These files can be used to build accurate AI-generated READMEs, contribution guides, and code summaries.

---

## ❤️ Powered by Shoyo

This project fetches and renders public portfolio data via [shoyo.work](https://shoyo.work). To create your portfolio, visit the official platform and generate your `PAGE_UID` and `PUBLIC_KEY`.

---

## 📄 License

MIT License – Use, modify, and self-host freely.

---

## ✨ Example Use Cases

* Personal developer portfolio
* Project showcase site
* Resume landing page
* GitHub bio link page
* Startup or team presentation

---

## 🤝 Contributions

Have ideas or want to contribute custom themes or render logic?
PRs welcome, or contact us at [shoyo.work](https://shoyo.work).

Join the community: [Discord](https://discord.gg/Vbq4zGdaVs)