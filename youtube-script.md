# YouTube Script — KingsleyAI Free Claude Code Course
**Target length:** 15–20 minutes spoken
**Format:** Conversational, screen-recorded walkthrough. Use [ACTION: ...] for screen cues. **BOLD** for energy spikes.

---

## INTRO [~0:00]

[ACTION: Fade in on terminal screen, cursor blinking]

Okay so — in this video, I'm gonna take you from having zero experience with Claude Code, to having a **fully working AI sales system** running inside your terminal.

No coding experience needed. No tech background. Nothing.

And we're doing it in six lessons. All free. All inside this thing called Claude Code.

Here's what we're covering:

**Lesson 1 — Your AI Sales Brain.** We set up Claude Code and build a personalized AI that actually knows your business. Your niche, your voice, your tools.

**Lesson 2 — Build Your First Skill.** We create custom slash commands — like, you type one word and a full sales playbook runs. That's not an exaggeration.

**Lesson 3 — Connect Your Apps with MCP.** This is where we link Claude to GHL, Meta Ads, WhatsApp, Airtable — your actual tools. Claude stops just talking and starts *doing*.

**Lesson 4 — Parallel AI Agents.** What if you could run five Claudes simultaneously? All working on different tasks at the same time? We do that.

**Lesson 5 — Build Something Real.** We take everything and actually ship something — a dashboard, a landing page, a lead qualifier app. Built live, on screen, in minutes.

**Lesson 6 — The Finale.** Victory lap. We recap what you built, show how it all connects into one system, and talk about what's next.

Okay, uh, real quick — if you're new here. My name's Kingsley Low. I help coaches, consultants, agency owners, and insurance directors build AI-powered sales systems. High-ticket stuff, $2K to $10K+ offers, using tools like GHL, Meta Ads, WhatsApp. That's my world.

This course is **fully interactive** — it runs right inside your terminal, and it customises itself to you. Your business, your niche, your voice. It's not some generic tech tutorial. It's built for business owners.

The GitHub link is in the description, the free Skool community is in the description — all the instructions are there. I'll keep reminding you throughout.

Alright. Let's get right into it.

---

## INSTALLATION [~1:30]

[ACTION: Open a fresh terminal window — clean, blank]

First thing — open up a fresh terminal.

If you've never used a terminal before — don't panic lah. The terminal is basically just a text interface to your computer. Instead of clicking icons, you type commands. Think of it like sending a text message to your computer and it does exactly what you say. That's it.

On Mac, hit Command + Space, type "Terminal", hit enter. On Windows, search for "Command Prompt" or install Windows Terminal from the Microsoft Store.

Okay so, first we need to install Claude Code itself. Type this:

[ACTION: Type into terminal]

```
npm install -g @anthropic-ai/claude-code
```

[ACTION: Show it running, packages installing]

Um, this is gonna take about 30 seconds. It's just downloading and installing the Claude Code package globally on your machine. Super normal, nothing sketchy.

Okay, once that's done — now we install the actual course. Head to the description, grab the one-line install command from the GitHub repo or from the free Skool community. It looks something like this:

[ACTION: Show the curl/bash install command being pasted]

Paste that in, hit enter.

[ACTION: Show course files being pulled down]

And boom — **the course is fully installed.** All six lessons, all the gifts, everything.

Now, to actually start the course, you just type:

[ACTION: Type into terminal]

```
claude
```

Then once Claude Code opens up, type:

```
/kingsleyai:start
```

Hit enter. And you're in.

[ACTION: Course splash screen appears in terminal with KingsleyAI logo]

**That's insane** because — look at that. That's a full interactive course running inside a terminal. No browser, no login, no separate platform. Just you and Claude, right there.

---

## EARLY CTA [~2:45]

Real quick — before we jump into Lesson 1.

If you're running a B2B business, you're doing over $250K a year, and you want to actually implement this stuff *with* me — not just watch a video — I have a $47 strategy call.

It's 45 minutes. We look at your specific business, figure out which AI systems are gonna move the needle first, and map out exactly how to build them.

It's $47 so I don't get ghosted. Link's in the description.

If that's not you right now — no worries at all. Stick around, go through the free course, join the Skool community. It's all free. Join the community, there's other business owners building the same stuff, it's a good vibe.

Alright. Lesson 1.

---

## LESSON 1 WALKTHROUGH [~3:30]

[ACTION: Type /kingsleyai:lesson-1 and hit enter, watch it load]

So Lesson 1 is called **Your AI Sales Brain.**

And the first thing it's going to do is ask you five questions.

[ACTION: First question appears on screen]

The first question is basically — what's your name and what does your business do?

And I'm gonna answer this as myself so you can see how it works. I'd type something like: "Kingsley Low. I run a high-ticket sales coaching business. I help coaches, consultants, and agency owners build AI-powered sales systems so they can close more high-ticket deals without burning out."

[ACTION: Type the answer, hit enter]

See how specific that is? That matters. Because the more specific your answer, the more personalised everything becomes later.

Now — the reason this matters. This whole thing is built around something called a **CLAUDE.md file.**

Think of it like... a cheat sheet that Claude reads every single time you open Claude Code. Before it does anything. Before it answers anything. It reads this file first.

[ACTION: Show the CLAUDE.md concept on screen]

So instead of having to explain your business every single session — you write it once, it lives in this file, and Claude already knows who you are before you even type a word.

**And THAT is insane because** — imagine hiring a world-class strategist. Alex Hormozi-level. And every single morning he wakes up and he already knows your business inside and out. Your offer, your avatar, your voice, your goals. You don't have to brief him. He just *knows*. That's what CLAUDE.md is.

[ACTION: Questions 2 and 3 appear — who do you serve, what's your voice]

Question 2 — who do you serve? I'd say: "Coaches, consultants, and agency owners doing $10K to $50K per month who want to automate their client acquisition."

Question 3 — what's your communication style? Mine is: "Direct and no-BS. Casual, punchy. Malaysian energy. I write like I'm texting, not presenting."

[ACTION: Questions 4 and 5 appear — tools, and the dream]

Question 4 — what tools do you use in your business? "GHL for CRM, Meta Ads for paid traffic, WhatsApp and ManyChat for follow-up."

Question 5 — this is my favourite one. It asks: *What's the dream? If you could automate one thing in your business, what would it be?*

And I'd type: "Automate my entire client acquisition — from lead coming in to booked call — without me touching it."

[ACTION: Hit enter, watch Claude generate the personalised output]

Now watch what happens.

[ACTION: Claude generates a custom CLAUDE.md, personalized to Kingsley's answers]

**Oh. Bro.**

Look at that. **Claude just built your entire business brain.** Right there. Based on five questions.

It's got your name, your offer, your avatar, your voice, your tools — formatted into a CLAUDE.md file that lives on your machine.

**And THAT is insane because** — every lesson from here, every skill you build, every agent you run — it's all pulling from this. Everything is personalised. Not a template. *Your* business.

[ACTION: Gift unlock animation appears — 30 prompts]

Oh wait — there's a gift. Claude just unlocked **30 prompts that close deals.** Thirty prompts, specific to coaches, consultants, and agency owners. DM follow-ups, proposal generators, objection handlers. All inside the gift file.

**Lesson 1 complete.** And again, if you guys want all the instructions, and the gift files, they're in my free community in the description below.

Let's go to Lesson 2.

---

## LESSON 2 WALKTHROUGH [~8:00]

[ACTION: Type /kingsleyai:lesson-2 and hit enter]

Lesson 2 — **Build Your First Skill.**

And okay here's the thing — this one has a little meta moment that I love.

[ACTION: Lesson 2 opens with the intro on screen]

The lesson starts by asking: "Wait, how did you get to this lesson?" And the answer is — you typed `/kingsleyai:lesson-2`. Which is... a skill. You've been using skills this whole time lah, you just didn't know it.

**That's actually insane.** The course teaches itself using the exact thing it's teaching you. Like, the lesson *is* the demo.

So what is a skill? In Claude Code, a skill is a slash command — you type `/something` and Claude runs a full set of instructions. Instead of typing a long prompt every time you want to qualify a lead or write an ad, you just type `/qualify` and it goes.

[ACTION: Show the skill file structure on screen]

Every skill has three parts.

**Part one: frontmatter.** This is just metadata — the name of the skill, a short description. Claude reads this to know what the skill is called.

**Part two: instructions.** This is the actual brain of the skill. You write out exactly what you want Claude to do when someone runs this command. Step by step.

**Part three: rules.** Hard constraints. Things Claude must or must not do. "Always ask for the prospect's monthly revenue before qualifying." That kind of thing.

[ACTION: Claude walks through building a /my-qualifier skill live]

Now we're gonna build one. The lesson walks you through creating `/my-qualifier` — a lead qualification skill specific to your business. Based on your CLAUDE.md, Claude knows your offer and your avatar, so it writes the qualifier to match.

[ACTION: Skill file being generated line by line]

Watch this build in real time.

[ACTION: Finished skill file appears]

Okay it's done. Now I type:

```
/my-qualifier
```

[ACTION: Run the skill, show it prompting and qualifying]

**Dude.** One word. Full qualifier. Asking the right questions, in my voice, for my offer. That's not a chatbot. That's a playbook running on command.

[ACTION: Gift unlock — skill builder template]

And there's the gift — the **skill builder template.** So you can build as many of these as you want. /proposal, /followup, /audit — all yours to create.

Lesson 2 done. Let's go.

---

## LESSON 3 WALKTHROUGH [~11:30]

[ACTION: Type /kingsleyai:lesson-3 and hit enter]

Lesson 3. This is the one.

**Connect Your Apps with MCP.**

So everything in Lessons 1 and 2 — Claude was working with text and files. It was all on your machine, inside a box.

MCP blows the box open.

[ACTION: Show the "Claude locked in a room" concept on screen]

Here's how to think about it. Imagine Claude is a genius locked in a room with just a laptop. They can read files. Write content. Build skills. All incredible. But they can't leave the room.

**MCP gives Claude a phone and the keys to all your apps.**

Same brain. Way more power.

[ACTION: Claude does a live web search — looks up GHL + Claude Code integration]

Watch this. I'm asking Claude to research GHL and what's possible with MCP.

[ACTION: Claude pulls up real information about GoHighLevel MCP integrations]

**No way.** It's pulling real, live information. Not from its training data — from the actual web. Right now.

[ACTION: Show three use case examples on screen]

And here's what this actually means for your business. Three examples:

**Example one.** Your GHL pipeline is stale. Leads sitting there for two weeks with no follow-up. Claude reads your pipeline, identifies every stale contact, writes a personalized WhatsApp follow-up for each one, and sends them. One command. Done.

**Example two.** Your Meta ads are running. One campaign is tanking. Claude reads your ad performance, identifies the worst-performing ad sets, pauses them, and reallocates the budget to what's working. You didn't touch a thing.

**Example three.** Monday morning audit. You wake up, type one command. Claude checks your GHL pipeline, your Meta ads, your WhatsApp replies, and gives you a full business health report in 60 seconds. That's your Monday morning sorted.

**And THAT is insane because** — this is what it means to run an AI-powered business. Claude isn't just answering questions. It's connected to your actual stack and it's taking action.

[ACTION: Gift unlock — mcp-builder]

Gift unlocked — the **MCP builder guide.** Step by step, how to connect Claude to your specific tools. GHL, Meta Ads, WhatsApp, Airtable — all in there.

And again, all the instructions are in the free community in the description.

Lesson 3. Let's go to 4.

---

## LESSON 4 WALKTHROUGH [~15:00]

[ACTION: Type /kingsleyai:lesson-4 and hit enter]

Lesson 4 — **Parallel AI Agents.**

So up until now, you've been talking to one Claude. One task at a time. Sequential.

What if you could hire five? Not five tabs. Not five different chats. **Five Claudes working simultaneously on different tasks.**

That's agents.

[ACTION: Show the "solopreneur grind" concept on screen]

Think about what this means. As a coach or agency owner, you're writing proposals, creating content, following up with leads, managing clients — all at the same time. Every day. It's an unsustainable grind unless you have a team.

Most people can't afford a full team. But you can build one inside Claude Code. Right now. For free.

[ACTION: Show three agents launching simultaneously]

Watch this. I'm spinning up three agents at the same time.

Agent 1 — writing a client proposal. Personalized to my offer, my avatar, my pricing.

Agent 2 — writing three ad copy variations. Hook, promise, proof, CTA. Pain-based, outcome-based, social proof-based.

Agent 3 — writing a five-day email nurture sequence for cold leads.

[ACTION: All three running at once, progress showing]

They're all running simultaneously. Right now.

[ACTION: All three complete, results showing on screen]

**Dude. Look at that.**

Three complete deliverables. At the same time. In the time it took me to explain what was happening.

**And THAT is insane because** — that's three hours of manual work. Gone. And it's not generic ChatGPT output. It's built from your CLAUDE.md, your business, your voice.

[ACTION: Gift unlock — 5 agent workflows]

Gift — **five agent workflows.** Five pre-built agent setups for coaches, agency owners, and insurance directors. Ready to run.

Lesson 4. Let's finish strong.

---

## LESSON 5 WALKTHROUGH [~17:30]

[ACTION: Type /kingsleyai:lesson-5 and hit enter]

Okay. **This is the part I've been waiting for.**

Lesson 5 — **Build Something Real.**

This is where we stop demoing and actually ship something. A real, working tool. Not a mockup. Not a template. Something you open in your browser and it works.

[ACTION: Lesson 5 opens, shows the callback from Lesson 1]

And look — it's pulling from Lesson 1. It's showing me what I said my dream was. "Automate my entire client acquisition." That's what we're building toward.

[ACTION: Three build options appear on screen]

Claude gives me three options:

Option 1 — Sales Pipeline Dashboard. Visual tracker for leads, pipeline stages, conversion rates, monthly revenue.

Option 2 — High-Ticket Landing Page. A full sales page for my offer, written in my voice, for my avatar.

Option 3 — Lead Qualifier App. Prospect fills out a form. Claude scores them automatically. Generates a personalized follow-up.

I'm going with Option 1. The sales pipeline dashboard. That's actually something I'd use.

[ACTION: Type "1" and hit enter]

[ACTION: Claude starts building the dashboard — HTML, CSS appearing in the terminal]

It's generating.

[ACTION: Show code streaming live]

Live. Right now. It's writing the whole thing.

[ACTION: It finishes, opens in the browser automatically]

**Oh. Look at that.**

[ACTION: Clean, professional sales pipeline dashboard in the browser]

A **fully working sales pipeline dashboard** just opened in my browser. Built from scratch. In about 60 seconds.

It's got pipeline stages, lead tracking, conversion rate widgets, monthly revenue. All of it. And it's not generic — it's got my business name, my terminology, my colours.

**And THAT is insane because** — that would've taken a developer two, three days minimum. Or $500 on Fiverr. We just built it with one command.

Watch this — let me tweak it.

[ACTION: Type a one-sentence instruction to Claude — "Change the colour scheme to dark mode and add a WhatsApp follow-up tracker column"]

[ACTION: Dashboard updates live in the browser]

One sentence. It updated. In real time.

**That's the power.** You don't need to know how to code. You just need to know what you want.

[ACTION: Gift unlock — business in a box]

Gift — **Business in a Box.** A full package of templates, landing pages, and dashboards for different business types. Coaches, agency owners, insurance directors — all in there.

Lesson 5. One more.

---

## LESSON 6 / FINALE [~20:00]

[ACTION: Type /kingsleyai:lesson-6 and hit enter]

Lesson 6. The finale.

[ACTION: Victory lap graphic appears in terminal]

Look at what you actually built.

Not watched. Not followed along with. **Built.**

CLAUDE.md — your AI business brain. ✅

Custom skill — `/my-qualifier` running your sales playbook. ✅

MCP — Claude connected to your actual tools. ✅

Parallel agents — a full AI team working simultaneously. ✅

Real build — a dashboard or landing page or app, live in your browser right now. ✅

Five gifts — 30 prompts, skill builder, MCP guide, agent workflows, business in a box. ✅

[ACTION: Show the "one system" diagram on screen]

Here's what most people miss. These aren't five separate things. **They're one system.**

CLAUDE.md is the brain — it knows who you are before anything starts.

Skills are the commands — one word runs your whole playbook.

MCP is the arms — Claude stops just talking and starts doing.

Agents are the team — you're not a solopreneur anymore, you've got a team that ships in parallel.

The build is the proof — you didn't just learn theory, you have something on your screen right now.

Most people are out there copy-pasting into ChatGPT getting the same generic response as everyone else. Same hooks. Same emails. Same ads as every other coach and agency owner in their niche.

You just built something completely different. A system. **That's the whole game lah.**

---

## END CTA [~21:30]

Alright. You just finished the course.

Here's where to go next. Two paths.

**Path one.** You're running a B2B business, you're doing over $250K a year, and you want to actually build this stuff together with me — not just figure it out alone. Book the $47 strategy call. Link's in the description. We sit down, we look at your specific business, we map out the exact AI stack that's going to grow it. Forty-seven bucks. Forty-five minutes. That's the move.

**Path two.** You're not there yet revenue-wise, or you just want to keep building on your own — join the free Skool community. Also in the description. It's free, there's other business owners doing the same thing, and honestly it's a good place to be.

One more thing — there's a referral program inside the community. You refer someone who books a strategy call and ends up working with me — you get **$200 USD cash**. No hoops. No fine print. Two hundred bucks.

That's it. Go build something.

I'll see you inside.

[ACTION: Outro music, social handle @kingsleylow.ai on screen]

---

## PRODUCTION NOTES

**Timestamps to fill in after recording:**
- 0:00 — Intro + course overview
- ~1:30 — Installation walkthrough
- ~2:45 — Early CTA (30 sec)
- ~3:30 — Lesson 1: Your AI Sales Brain
- ~8:00 — Lesson 2: Build Your First Skill
- ~11:30 — Lesson 3: Connect Your Apps with MCP
- ~15:00 — Lesson 4: Parallel AI Agents
- ~17:30 — Lesson 5: Build Something Real
- ~20:00 — Lesson 6: The Finale
- ~21:30 — End CTA

**Screen setup:** Dark terminal, font size bumped up, OBS or Loom capture.

**Key screen moments to nail:**
1. Course splash loading after `/kingsleyai:start` — hold on it, react
2. CLAUDE.md generating from the 5 answers — zoom in, let it run
3. `/my-qualifier` running for the first time — hold for reaction
4. Three agents launching simultaneously — show the progress, call it out
5. Dashboard opening in browser — genuine reaction, tweak it live

**Links to drop in before publishing:**
- https://www.skool.com/kingsley-low-free-claude-ai-9271 → free community
- https://kingsleylow.ai → $47 strategy call
