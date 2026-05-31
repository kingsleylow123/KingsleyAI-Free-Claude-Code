# Claude Code Cheat Sheet
### KingsleyAI Free Course — Quick Reference

---

## Essential Commands

| Command | What it does |
|---------|-------------|
| `claude` | Start Claude Code in your current folder |
| `/help` | List all available commands and skills |
| `/clear` | Clear the conversation and start fresh |
| `/mcp` | Check which MCP servers are connected |
| `Ctrl+C` | Stop the current task immediately |
| `Ctrl+D` or `exit` | Close Claude Code |

---

## Skill Commands (KingsleyAI Course)

| Command | What it does |
|---------|-------------|
| `/kingsleyai:summarize` | Summarize any content — paste text or URL |
| `/kingsleyai:repurpose` | Repurpose content to any platform natively |
| `/kingsleyai:mcp-builder` | Connect any app to Claude Code |
| `/kingsleyai:skill-builder` | Build a custom skill for any task |

---

## Power Prompts That Always Work

**Force personalization from your CLAUDE.md:**
```
Read my CLAUDE.md and then [task]
```

**Run multiple tasks simultaneously:**
```
Do all three of these simultaneously using separate agents: [task 1], [task 2], [task 3]
```

**Live research:**
```
Search the web for [topic] and give me a summary of the top findings
```

**Instant visual output:**
```
Build this and open it in my browser: [describe what you want]
```

**MCP-powered automation:**
```
Connect to my [app] and [action — e.g. "find all leads, students, or records from the last 7 days"]
```

**Match your voice:**
```
Write this in my voice. Here's an example of how I write: [paste example]. Now write [task].
```

---

## CLAUDE.md Tips

Your CLAUDE.md is Claude's brain for your business. The more specific it is, the better every output.

**What to put in it:**
- Your name, business name, and what you do
- Your target avatar (specific — not "entrepreneurs")
- Your offer name, price, and core promise
- Your voice and tone rules (e.g. "direct, no fluff, Malaysian casual")
- Words and phrases you always use / never use
- Your best-performing scripts, hooks, or templates
- Your typical workflow (e.g. "I run Meta ads → landing page → GHL → Zoom call")
- Your tools (GHL, Meta, WhatsApp, etc.)

**How it works:**
Claude reads CLAUDE.md at the start of every conversation. It's like giving Claude a briefing before every meeting — they already know your business, your voice, and your goals.

**Location:**
`~/Documents/Projects/[your-project]/CLAUDE.md`
Or in whatever folder you run Claude Code from.

---

## When to Use Agents

| Use agents | Don't use agents |
|-----------|-----------------|
| Multiple independent tasks running at the same time | Tasks that depend on each other (do step 2 after step 1) |
| Same task across multiple people (one agent per client/lead) | Simple one-step tasks |
| Research + writing + formatting simultaneously | When you need to review output before the next step |
| Content repurposing to multiple platforms | When you're iterating in a conversation |

**Agent trigger phrase:**
```
Run [X] agents simultaneously. Agent 1: [task]. Agent 2: [task]. Agent 3: [task].
```

---

## MCP Quick Reference

MCPs are what let Claude Code connect to your tools. Once connected, you can ask Claude to DO things in those apps — not just write about them.

| App | How to connect |
|-----|---------------|
| Meta Ads | `meta-ads-mcp` on npm |
| Google Workspace (Gmail, Sheets, Docs) | `google-workspace-mcp` |
| Airtable | Official MCP in modelcontextprotocol/servers |
| Notion | Official Notion MCP |
| Slack | Official Slack MCP |
| GHL (GoHighLevel) | Build from their REST API (use `/kingsleyai:mcp-builder`) |
| ManyChat | Build from their API (use `/kingsleyai:mcp-builder`) |

Once connected, example prompts:
- "Pull all leads, students, or records from GHL who booked in the last 7 days and write a follow-up for each"
- "Check my Meta Ads account and tell me which ad sets have a CPL over $50"
- "Find this contact in ManyChat and trigger the nurture sequence"

---

## Pro Tips

**Multiple windows = multiple Claudes**
Open 2–3 terminal windows and run Claude Code in each. They run independently — use this for parallel work.

**Skills grow with you**
Your skill files (`.md` files in `~/.claude/commands/`) are just text. Edit them anytime to improve the output. The better the instructions, the better the skill.

**If output is off — show an example**
```
This isn't quite right. Here's an example of what I want: [paste example]. 
Now rewrite it to match this style.
```

**Token tip**
Claude Max ($100/month) pays for itself the moment it replaces one $500/month tool, one VA hour a day, or one agency retainer.

**The CLAUDE.md multiplier**
Every skill and workflow works better when your CLAUDE.md is detailed. Spend 30 minutes building a solid CLAUDE.md once — it improves every single output for every session after that.

**When things go wrong**
- `/clear` to start fresh
- Read the error — Claude usually tells you exactly what's missing
- If a skill isn't working, open the `.md` file and check your instructions

---

> KingsleyAI Free Claude Code Course — kingsleylow.ai
