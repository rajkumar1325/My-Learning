<div align="center">

<!-- Animated Banner SVG -->
<svg width="800" height="180" viewBox="0 0 800 180" xmlns="http://www.w3.org/2000/svg">
  <defs>
    <linearGradient id="bg" x1="0%" y1="0%" x2="100%" y2="100%">
      <stop offset="0%" style="stop-color:#0f0c29"/>
      <stop offset="50%" style="stop-color:#302b63"/>
      <stop offset="100%" style="stop-color:#24243e"/>
    </linearGradient>
    <linearGradient id="text-grad" x1="0%" y1="0%" x2="100%" y2="0%">
      <stop offset="0%" style="stop-color:#56CCF2"/>
      <stop offset="100%" style="stop-color:#2F80ED"/>
    </linearGradient>
    <filter id="glow">
      <feGaussianBlur stdDeviation="3" result="coloredBlur"/>
      <feMerge><feMergeNode in="coloredBlur"/><feMergeNode in="SourceGraphic"/></feMerge>
    </filter>
  </defs>

  <!-- Background -->
  <rect width="800" height="180" fill="url(#bg)" rx="16"/>

  <!-- Decorative circles -->
  <circle cx="720" cy="30" r="60" fill="none" stroke="#2F80ED" stroke-width="1" opacity="0.3"/>
  <circle cx="720" cy="30" r="40" fill="none" stroke="#56CCF2" stroke-width="1" opacity="0.2"/>
  <circle cx="80" cy="150" r="50" fill="none" stroke="#2F80ED" stroke-width="1" opacity="0.2"/>

  <!-- Dots pattern -->
  <circle cx="650" cy="140" r="2" fill="#56CCF2" opacity="0.6"/>
  <circle cx="670" cy="120" r="2" fill="#56CCF2" opacity="0.4"/>
  <circle cx="690" cy="145" r="2" fill="#2F80ED" opacity="0.6"/>
  <circle cx="710" cy="115" r="2" fill="#56CCF2" opacity="0.5"/>

  <!-- Icon -->
  <text x="60" y="100" font-size="52" text-anchor="middle" filter="url(#glow)">🗞️</text>

  <!-- Title -->
  <text x="400" y="75" font-family="Georgia, serif" font-size="36" font-weight="bold"
        fill="url(#text-grad)" text-anchor="middle" filter="url(#glow)">
    Daily News Digest
  </text>

  <!-- Subtitle -->
  <text x="400" y="110" font-family="monospace" font-size="14"
        fill="#a0aec0" text-anchor="middle">
    AI-Powered Morning Automation · Built with n8n + Groq
  </text>

  <!-- Tagline -->
  <text x="400" y="145" font-family="monospace" font-size="11"
        fill="#56CCF2" text-anchor="middle" opacity="0.8">
    ⚡ Fetches · Summarizes · Delivers — Every Morning at 8 AM
  </text>
</svg>

<br/>

<!-- Badges -->
![n8n](https://img.shields.io/badge/Built%20with-n8n-orange?style=for-the-badge&logo=n8n)
![Groq](https://img.shields.io/badge/AI-Groq%20LLaMA%203.3-blue?style=for-the-badge)
![NewsAPI](https://img.shields.io/badge/News-NewsAPI-green?style=for-the-badge)
![Gmail](https://img.shields.io/badge/Delivery-Gmail-red?style=for-the-badge&logo=gmail)
![Free](https://img.shields.io/badge/Cost-100%25%20Free-brightgreen?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Active-success?style=for-the-badge)

</div>

---

## 🚀 What Is This?

> **My first n8n automation** — built as a student with zero prior automation experience.

Every morning at **8:00 AM**, this workflow:

1. 📡 **Fetches** top Tech & AI + Business headlines via NewsAPI
2. 🤖 **Summarizes** them using Groq's LLaMA 3.3 70B model
3. 📧 **Delivers** a beautiful HTML email digest straight to your inbox

**Zero manual effort. Zero cost. Fully automated.**

---

## 🔄 Workflow Architecture

<!-- Workflow SVG Diagram -->
<div align="center">
<svg width="780" height="140" viewBox="0 0 780 140" xmlns="http://www.w3.org/2000/svg">
  <defs>
    <linearGradient id="node-grad" x1="0%" y1="0%" x2="0%" y2="100%">
      <stop offset="0%" style="stop-color:#1a1a2e"/>
      <stop offset="100%" style="stop-color:#16213e"/>
    </linearGradient>
    <marker id="arrow" markerWidth="8" markerHeight="8" refX="6" refY="3" orient="auto">
      <path d="M0,0 L0,6 L8,3 z" fill="#56CCF2"/>
    </marker>
    <filter id="shadow">
      <feDropShadow dx="0" dy="2" stdDeviation="3" flood-color="#56CCF2" flood-opacity="0.3"/>
    </filter>
  </defs>

  <!-- Background -->
  <rect width="780" height="140" fill="#0d1117" rx="12"/>

  <!-- Node 1: Schedule -->
  <rect x="20" y="35" width="120" height="70" rx="10" fill="url(#node-grad)"
        stroke="#2F80ED" stroke-width="2" filter="url(#shadow)"/>
  <text x="80" y="62" font-size="22" text-anchor="middle">⏰</text>
  <text x="80" y="82" font-family="monospace" font-size="10" fill="#56CCF2" text-anchor="middle">Schedule</text>
  <text x="80" y="96" font-family="monospace" font-size="9" fill="#a0aec0" text-anchor="middle">8 AM Daily</text>

  <!-- Arrow 1 -->
  <line x1="142" y1="70" x2="168" y2="70" stroke="#56CCF2" stroke-width="2" marker-end="url(#arrow)"/>
  <text x="155" y="63" font-family="monospace" font-size="8" fill="#56CCF2" text-anchor="middle">trigger</text>

  <!-- Node 2: NewsAPI -->
  <rect x="170" y="35" width="120" height="70" rx="10" fill="url(#node-grad)"
        stroke="#27ae60" stroke-width="2" filter="url(#shadow)"/>
  <text x="230" y="62" font-size="22" text-anchor="middle">🌐</text>
  <text x="230" y="82" font-family="monospace" font-size="10" fill="#27ae60" text-anchor="middle">NewsAPI</text>
  <text x="230" y="96" font-family="monospace" font-size="9" fill="#a0aec0" text-anchor="middle">35 articles</text>

  <!-- Arrow 2 -->
  <line x1="292" y1="70" x2="318" y2="70" stroke="#56CCF2" stroke-width="2" marker-end="url(#arrow)"/>
  <text x="305" y="63" font-family="monospace" font-size="8" fill="#56CCF2" text-anchor="middle">fetch</text>

  <!-- Node 3: LLM Chain -->
  <rect x="320" y="35" width="120" height="70" rx="10" fill="url(#node-grad)"
        stroke="#8e44ad" stroke-width="2" filter="url(#shadow)"/>
  <text x="380" y="62" font-size="22" text-anchor="middle">🔗</text>
  <text x="380" y="82" font-family="monospace" font-size="10" fill="#8e44ad" text-anchor="middle">LLM Chain</text>
  <text x="380" y="96" font-family="monospace" font-size="9" fill="#a0aec0" text-anchor="middle">+ Groq AI</text>

  <!-- Arrow 3 -->
  <line x1="442" y1="70" x2="468" y2="70" stroke="#56CCF2" stroke-width="2" marker-end="url(#arrow)"/>
  <text x="455" y="63" font-family="monospace" font-size="8" fill="#56CCF2" text-anchor="middle">summarize</text>

  <!-- Node 4: Gmail -->
  <rect x="470" y="35" width="120" height="70" rx="10" fill="url(#node-grad)"
        stroke="#e74c3c" stroke-width="2" filter="url(#shadow)"/>
  <text x="530" y="62" font-size="22" text-anchor="middle">📧</text>
  <text x="530" y="82" font-family="monospace" font-size="10" fill="#e74c3c" text-anchor="middle">Gmail</text>
  <text x="530" y="96" font-family="monospace" font-size="9" fill="#a0aec0" text-anchor="middle">HTML Digest</text>

  <!-- Arrow 4 -->
  <line x1="592" y1="70" x2="618" y2="70" stroke="#56CCF2" stroke-width="2" marker-end="url(#arrow)"/>
  <text x="605" y="63" font-family="monospace" font-size="8" fill="#56CCF2" text-anchor="middle">send</text>

  <!-- Node 5: Inbox -->
  <rect x="620" y="35" width="120" height="70" rx="10" fill="url(#node-grad)"
        stroke="#f39c12" stroke-width="2" filter="url(#shadow)"/>
  <text x="680" y="62" font-size="22" text-anchor="middle">✅</text>
  <text x="680" y="82" font-family="monospace" font-size="10" fill="#f39c12" text-anchor="middle">Your Inbox</text>
  <text x="680" y="96" font-family="monospace" font-size="9" fill="#a0aec0" text-anchor="middle">Done!</text>
</svg>
</div>

---

## 🛠️ Tech Stack

<!-- Tech Stack SVG -->
<div align="center">
<svg width="680" height="100" viewBox="0 0 680 100" xmlns="http://www.w3.org/2000/svg">
  <rect width="680" height="100" fill="#0d1117" rx="12"/>

  <!-- n8n -->
  <rect x="20" y="20" width="140" height="60" rx="8" fill="#1a1a2e" stroke="#FF6D00" stroke-width="1.5"/>
  <text x="90" y="48" font-family="monospace" font-size="11" fill="#FF6D00" text-anchor="middle" font-weight="bold">n8n</text>
  <text x="90" y="66" font-family="monospace" font-size="9" fill="#a0aec0" text-anchor="middle">Automation Engine</text>

  <!-- Groq -->
  <rect x="180" y="20" width="140" height="60" rx="8" fill="#1a1a2e" stroke="#56CCF2" stroke-width="1.5"/>
  <text x="250" y="48" font-family="monospace" font-size="11" fill="#56CCF2" text-anchor="middle" font-weight="bold">Groq + LLaMA 3.3</text>
  <text x="250" y="66" font-family="monospace" font-size="9" fill="#a0aec0" text-anchor="middle">AI Summarization</text>

  <!-- NewsAPI -->
  <rect x="340" y="20" width="140" height="60" rx="8" fill="#1a1a2e" stroke="#27ae60" stroke-width="1.5"/>
  <text x="410" y="48" font-family="monospace" font-size="11" fill="#27ae60" text-anchor="middle" font-weight="bold">NewsAPI</text>
  <text x="410" y="66" font-family="monospace" font-size="9" fill="#a0aec0" text-anchor="middle">News Fetching</text>

  <!-- Gmail -->
  <rect x="500" y="20" width="160" height="60" rx="8" fill="#1a1a2e" stroke="#e74c3c" stroke-width="1.5"/>
  <text x="580" y="48" font-family="monospace" font-size="11" fill="#e74c3c" text-anchor="middle" font-weight="bold">Gmail OAuth2</text>
  <text x="580" y="66" font-family="monospace" font-size="9" fill="#a0aec0" text-anchor="middle">Email Delivery</text>
</svg>
</div>

---

## ✨ Output Preview

The workflow sends a clean, card-style HTML email like this every morning:

```
┌─────────────────────────────────────────┐
│  🗞️  Daily News Digest — 19 Apr 2026    │
│  ─────────────────────────────────────  │
│  │ 📌 Story Title Here                  │
│  │ 2-3 line AI summary of the story...  │
│                                         │
│  │ 📌 Another Top Story                 │
│  │ Clean, concise summary here...       │
│                                         │
│         Powered by n8n automation       │
└─────────────────────────────────────────┘
```

---

## ⚙️ Setup Guide

### Prerequisites

| Tool | Version | Why |
|------|---------|-----|
| Node.js | v20 (via nvm) | Required by n8n |
| n8n | Latest | Automation platform |
| NewsAPI Key | Free tier | Fetch headlines |
| Groq API Key | Free tier | AI summarization |
| Google Cloud | Free | Gmail OAuth |

### Quick Start

**1. Install n8n**
```bash
# Install nvm first
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash

# Install Node 20 & n8n
nvm install 20
nvm use 20
npm install -g n8n

# Start n8n
n8n start
# Open: http://localhost:5678
```

**2. Get API Keys**
```
NewsAPI  → newsapi.org          (free account → copy API key)
Groq     → console.groq.com    (free account → API Keys → Create)
```

**3. Gmail OAuth Setup**
```
1. console.cloud.google.com → New Project "n8n-gmail"
2. APIs & Services → Enable Gmail API
3. OAuth Consent Screen → External → add your email
4. Credentials → Create OAuth Client ID (Web App)
   - JS Origin:    http://localhost:5678
   - Redirect URI: http://localhost:5678/rest/oauth2-credential/callback
5. Copy Client ID + Secret → paste in n8n Gmail node
```

**4. Import & Configure Workflow**
```
1. Download the workflow JSON from this repo
2. n8n → Import Workflow → paste JSON
3. Add your API keys to each node
4. Click Publish → Done! ✅
```

> 📄 **Full step-by-step PDF guide** available in this repo!

---

## 📁 Repo Structure

```
📦 daily-news-digest-n8n
 ┣ 📜 workflow.json          ← Import this into n8n
 ┣ 📄 setup-guide.pdf        ← Detailed setup PDF
 ┗ 📖 README.md              ← You are here
```

---

## 💡 How It Works — In Detail

```
Every day at 8 AM
        │
        ▼
  Schedule Trigger fires
        │
        ▼
  HTTP GET → newsapi.org
  ?categories=technology,business
  &language=en
  → Returns 35 articles
        │
        ▼
  Basic LLM Chain
  + Groq (llama-3.3-70b-versatile)
  → Picks Top 5 stories
  → Generates HTML digest
        │
        ▼
  Gmail Node
  → Sends to your inbox
  → Subject: "Daily News Digest - [date]"
        │
        ▼
    📬 Done!
```

---

## 🔒 Security Note

> When you import `workflow.json`, **no API keys are included** — n8n never exports credentials. You'll need to connect your own accounts. Your keys stay on your local machine only.

---

## 🗺️ What's Next

- [ ] Add Telegram/Discord delivery option
- [ ] Filter news by custom keywords
- [ ] Weekly summary report
- [ ] Multi-language support
- [ ] Add source links in email

---

## 🙋‍♂️ About

<div align="center">

**Built by Rajkumar** — Student & Automation Enthusiast

*This is my first n8n automation, built from scratch with zero prior experience.*
*If it helped you, drop a ⭐ on this repo!*

[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-blue?style=flat-square&logo=linkedin)](https://linkedin.com)
[![GitHub](https://img.shields.io/badge/GitHub-Follow-black?style=flat-square&logo=github)](https://github.com)

</div>

---

<div align="center">
<sub>Made with ❤️ using n8n · Groq · NewsAPI · Gmail</sub>
</div>
