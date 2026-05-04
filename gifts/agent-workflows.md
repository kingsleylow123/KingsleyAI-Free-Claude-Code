# Agent Workflow Templates
### 5 pre-built multi-agent workflows for high-ticket sales businesses

---

These are copy-paste prompts that spin up multiple Claude agents running simultaneously. Each workflow handles a job that would normally take you 1–2 hours — done in minutes.

> **How to use:** Copy the full prompt block, paste into Claude Code, fill in the [brackets], hit enter. Claude will spin up the agents and run them in parallel.

---

## Workflow 1: Lead Qualification Blast

**What it does:** Scores every lead in your pipeline and writes a personalized follow-up for each one — all at once.

**When to use:** After a webinar, event, or ad campaign drops a batch of new leads. Or when your pipeline has gone stale.

```
I need you to spin up one agent per lead and run them all simultaneously.

Here are my leads:
[Paste lead list — name, company, what they said/did, where they came from]

My ICP criteria:
- Avatar: [e.g. "coach or consultant doing $5K–$20K/month"]
- Buying signals: [e.g. "asked about price, said they're ready to start, booked and showed"]
- Red flags: [e.g. "looking for free advice, no budget, just starting out"]

For each lead, each agent should:
1. Score them: Hot (book a call ASAP), Warm (nurture), or Cold (archive)
2. Write a personalized follow-up message that matches their score
3. Flag any Hot leads with [HOT - CALL TODAY] at the top

Return all results in a clean table: Name | Score | Reasoning | Follow-up Message

Run all agents simultaneously.
```

---

## Workflow 2: Content Repurposing Engine

**What it does:** Takes one piece of content (video transcript, blog post, voice note) and turns it into platform-native content for 4+ channels — simultaneously.

**When to use:** Every time you create a piece of content. Film once, post everywhere.

```
I have a piece of content I want to repurpose. Run 3 agents simultaneously:

Content to repurpose:
[Paste transcript, blog post, or voice note here]

My voice: [describe: e.g. "direct, no-BS, Malaysian, Hormozi-style"]
My offer: [offer]
My avatar: [avatar]

Agent 1 — Short-form video:
Turn this into an Instagram caption (hook above fold, CTA at top) AND a TikTok script (hook 0-3s, story 3-45s, CTA last).

Agent 2 — Long-form social:
Turn this into a LinkedIn post (insight-led, paragraph breaks, 150-250 words) AND a Twitter/X thread (each tweet standalone, numbered).

Agent 3 — Direct channels:
Turn this into a WhatsApp broadcast (under 150 words, conversational, one CTA) AND an email newsletter (subject line + preview text + body + PS line).

Return each platform version clearly labeled. Run all 3 agents at the same time.
```

---

## Workflow 3: Client Monthly Report

**What it does:** Generates a formatted progress report for each client — simultaneously, one agent per client.

**When to use:** End of every month. Never spend 2 hours writing reports again.

```
I need monthly reports for each of my clients. Spin up one agent per client and run them simultaneously.

[For each client, provide:]
Client 1:
- Name: [name]
- Service: [what you do for them]
- Period: [month/year]
- Key metrics: [e.g. "12 calls booked, 3 closed, $9K revenue"]
- Wins: [e.g. "best month yet, new ad creative is performing"]
- Challenges: [e.g. "show-up rate dropped to 60%"]
- Next focus: [e.g. "fix no-show rate, test new hook"]

Client 2: [same format]
Client 3: [same format]

For each client, each agent should:
1. Write a formatted progress report (professional but not stiff)
2. Highlight 2–3 wins specifically
3. Flag 1–2 areas to improve (honest, not harsh)
4. Draft a 3-sentence message I can send alongside the report

Return each report clearly labeled with the client's name. Run all agents simultaneously.
```

---

## Workflow 4: Ad Creation Sprint

**What it does:** Produces 9 ad variations simultaneously — 3 hooks, 3 body copy variations, and 3 headline/CTA combos — ready to test.

**When to use:** Launching a new campaign, or when your current ads are fatiguing.

```
I need a full batch of ad creative for testing. Run 3 agents simultaneously:

My offer: [offer]
My avatar: [avatar: e.g. "agency owners doing $5K–$20K/month who want to scale past $50K"]
Main pain point: [pain: e.g. "can't get consistent leads without referrals"]
Desired outcome: [outcome: e.g. "15 qualified sales calls booked per month on autopilot"]
Price point: [price]

Agent 1 — Hooks (pattern interrupt style):
Write 3 scroll-stopping ad hooks. Each hook should: call out the avatar directly OR challenge a belief they hold OR make a specific bold claim. Each hook max 2 lines.

Agent 2 — Body copy (pain → solution → CTA):
Write 3 body copy variations. Each follows: pain (call out the problem), solution (what's different about my approach), CTA (one action). 3–5 sentences each.

Agent 3 — Headlines and CTAs:
Write 3 headline + CTA combinations. Headlines: specific, outcome-focused, no hype words. CTAs: one clear action (Book a call, DM me "READY", Apply now). Match each headline to a CTA.

Return all 9 pieces clearly labeled. Run all 3 agents simultaneously.
```

---

## Workflow 5: Pipeline Health Audit

**What it does:** Scans your entire pipeline for stuck leads and writes personalized follow-ups for each one — two agents running at the same time.

**When to use:** Every Monday morning. Takes 5 minutes instead of 45.

```
I need a pipeline health audit. Run 2 agents simultaneously:

My pipeline stages and current leads:
[Paste your pipeline — stage name, lead name, last contact date, last action taken]

My offer: [offer]
My typical follow-up cadence: [e.g. "follow up every 3 days until they say yes or no"]

Agent 1 — Pipeline audit:
Review every lead in my pipeline. Flag any lead that:
- Has been in the same stage for more than 3 days without contact
- Has a follow-up that's overdue
- Shows signs of going cold (no engagement in 5+ days)

Return a table: Lead Name | Stage | Days Stuck | Risk Level (High/Medium/Low) | Recommended Next Action

Agent 2 — Follow-up message writer:
For every lead flagged as High or Medium risk by Agent 1, write a personalized follow-up message. Each message should:
- Reference something specific about their situation (use what I provided)
- Not mention that they've gone quiet
- Move toward a clear next step (call, reply, decision)
- Feel like it came from a real person

Run both agents simultaneously. Agent 2 should write messages for everything Agent 1 flags.
```

---

> **Next level:** Save any of these as a CLAUDE.md instruction so Claude runs the workflow automatically every time you start a session. Example: add "Every Monday morning, remind me to run the Pipeline Health Audit workflow" to your CLAUDE.md.
