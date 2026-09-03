# Claude Tool Cheat Sheet

A decision framework for choosing between **Claude.ai**, **Claude Code**, and **Cowork** — the three main ways to work with Claude.

Companion script: run `./which-claude.sh` for a quick interactive recommendation.

---

## TL;DR

| Tool | Best for | Lives in |
|---|---|---|
| **Claude.ai** | Exploring data, asking questions, visual output (charts, Artifacts) | Browser chat |
| **Claude Code** | Writing and building software, working with a local repo | Terminal / IDE |
| **Cowork** | Organizing files, renaming, hands-off/background tasks | Filesystem / desktop |

---

## 1. Claude.ai

**What it's for:** Conversational exploration, research, and generating visual or shareable output without touching a codebase.

**Strengths:**
- Upload files (PDFs, spreadsheets, images) and ask questions about them directly in chat.
- Generates **Artifacts** — rendered HTML, React components, charts, and documents you can view and share immediately.
- Best tool for **visual charts and dashboards** — data visualization, plots, and interactive graphics render inline without any local setup.
- No environment or terminal required — just a browser tab.
- Great for one-off analysis, brainstorming, drafting documents, or turning a dataset into a chart you can screenshot or share.

**When to use it:**
- You have a question about a document, dataset, or image and want an answer now.
- You want to see a chart or visualization without writing plotting code yourself.
- You're exploring an idea before deciding whether it's worth building.
- You want a shareable Artifact (report, mockup, small interactive demo) with a link.

**When *not* to use it:**
- You need to read/write many files in an existing codebase.
- The task requires running code against a real project, tests, or a terminal.
- You need changes committed to a git repository.

---

## 2. Claude Code

**What it's for:** Writing, reading, and modifying code in a real project — the tool for actual software development.

**Strengths:**
- Direct access to your local (or remote) filesystem and terminal — reads files, runs commands, executes tests.
- Best tool for **building local HTML/CSS/JS** (or any language) — it edits real files in your project, not just a chat window.
- Understands and navigates existing codebases: multi-file edits, refactors, debugging, dependency management.
- Integrates with git — branches, commits, pushes, PRs.
- Can run and verify its own work (linters, test suites, builds) before handing it back to you.

**When to use it:**
- You're building or maintaining an actual project (a script, app, dashboard, website).
- You need multi-file, multi-step changes with real file I/O.
- You want changes tracked in git and eventually shipped as a PR.
- You need to run/debug code, not just talk about it.

**When *not* to use it:**
- You just want a quick visual chart or a one-off answer — Claude.ai is faster and needs no project setup.
- The task is purely about tidying files/folders with no code involved — Cowork is a better fit.

---

## 3. Cowork

**What it's for:** Hands-off, background tasks around files and folders — the "operations" layer rather than the "build" layer.

**Strengths:**
- Best tool for **file organization** — renaming, sorting, moving, and cleaning up files/folders in bulk.
- Designed for automation of repetitive, low-judgment tasks you'd rather not do by hand.
- Works in the background/hands-off, so you can hand off a task and check back later rather than staying in an interactive loop.
- Good at broad sweeps across a filesystem (e.g., "rename all these files consistently," "sort these downloads into folders").

**When to use it:**
- You have a messy folder of files that needs structure (renaming, sorting, deduplicating).
- The task is repetitive and mechanical rather than creative or code-heavy.
- You want to kick off a task and walk away, rather than iterate conversationally.

**When *not* to use it:**
- The task requires writing or understanding code logic — use Claude Code.
- You need an immediate, interactive answer or a visual — use Claude.ai.

---

## Decision Framework

Ask these questions in order:

1. **Am I working with a real codebase/project that needs code changes?**
   → Yes: **Claude Code**
   → No: continue

2. **Do I just want to ask a question, explore a file, or see a chart/visualization?**
   → Yes: **Claude.ai**
   → No: continue

3. **Is this about organizing, renaming, or cleaning up files with little to no code involved, and can it run hands-off?**
   → Yes: **Cowork**

---

## Scenario Map

| Scenario | Tool | Why |
|---|---|---|
| "What's the trend in this sales CSV?" | Claude.ai | Quick analysis + chart, no project needed |
| "Build me a landing page with HTML/CSS/JS" | Claude Code | Real files, local project, needs to be saved/run |
| "Clean up and rename 200 files in my Downloads folder" | Cowork | Bulk file ops, hands-off |
| "Fix this bug in my repo and open a PR" | Claude Code | Needs git, terminal, multi-file edits |
| "Summarize this PDF and make a chart of the numbers in it" | Claude.ai | Upload + visual Artifact, no code needed |
| "Sort my project's screenshots into dated subfolders" | Cowork | File organization, low judgment, background task |
| "Refactor this function across 5 files" | Claude Code | Multi-file code change, needs repo access |
| "Give me a mockup of a dashboard UI to look at" | Claude.ai | Artifact preview, no build/deploy needed |
| "Automate renaming exported reports every week" | Cowork | Repetitive, rule-based, hands-off automation |
| "Debug why my build is failing" | Claude Code | Needs to run commands and read real error output |

---

## Rule of Thumb

- **Talking and looking → Claude.ai**
- **Building and shipping → Claude Code**
- **Tidying and automating → Cowork**
