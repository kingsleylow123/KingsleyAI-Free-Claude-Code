# Kingsley Low AI — Workshop Run Guide

Everything for running the course in **Claude Code** + checking who built what.

---

## PART 1 — What participants do (send them this)

### Step 1 — Install Claude Code (one time)
Download the Claude Code app → **claude.ai/download** → install like any app → sign in.

### Step 2 — Install the course (one command)

**Mac:** open **Terminal**, paste:
```bash
curl -fsSL https://raw.githubusercontent.com/kingsleylow123/KingsleyAI-Free-Claude-Code/main/install.sh | bash
```

**Windows:** open **PowerShell**, paste:
```powershell
irm https://raw.githubusercontent.com/kingsleylow123/KingsleyAI-Free-Claude-Code/main/install.ps1 | iex
```

*(No Git, no Homebrew needed — it just downloads the lesson files.)*

### Step 3 — Start the course
Open Claude Code → type:
```
/kingsleyai:start
```
Then follow along. Type `/kingsleyai:lesson-1` … through `/kingsleyai:lesson-6`.

### Step 4 — Submit their build (end of Lesson 6)
Lesson 6 sends them to **claudemalaysia.com/workshop** to paste:
- Name + WhatsApp
- Their AI Brain (Lesson 1)
- What they built + full code (Lesson 5)

That's how you get their data.

---

## WhatsApp message to send the night before

```
Tomorrow's workshop — 2 quick installs before you come:

1. Claude Code app → claude.ai/download (install + sign in)

That's it. We do the rest together. See you 🔥
```

---

## PART 2 — How YOU check who built what + match phones

**Important:** Participant data does NOT go to GitHub anymore.
The old GitHub "student backup" was removed (it needed Git + a token and only worked for ~nobody). 
**All data now lands in your own dashboard** — cleaner, has phone numbers, sortable.

### Where to check
1. Go to **claudemalaysia.com/admin/workshop**
2. Enter your admin password (the `ADMIN_PASSWORD` set on the claudemalaysia Vercel project)
3. You'll see a table — one row per participant:

| Column | What it gives you |
|--------|-------------------|
| **Name** | who they are |
| **WhatsApp** | clickable — opens a chat with them directly |
| **What they do** | their world / segment |
| **AI Brain** | their full business context (great for upsell prep) |
| **Build** | one-liner + a **Preview ↗** button that opens their actual built page |

### Match phone / find someone
- The **WhatsApp** column IS the phone number — click it to message them on wa.me
- Click **Export CSV** (top right) → open in Sheets → sort/filter by phone, by "what they do", or by who actually built something

### Best upsell signal
Anyone whose **Preview** shows a real, polished build = serious. Message those first.

---

## PART 3 — Backup / verification (one-time setup on your end)

Before the workshop, make sure these are live:

1. **Run the SQL** — in Supabase → SQL Editor → run the `workshop_leads` block from `claudemalaysia/supabase-migration.sql`. (Without it, submissions fail.)
2. **Confirm `ADMIN_PASSWORD`** is set on the claudemalaysia Vercel project (the admin page needs it).
3. **Test it:** open `claudemalaysia.com/workshop` → submit a fake entry → check `claudemalaysia.com/admin/workshop` → confirm the row + Preview works.

If all 3 pass, you're live.
