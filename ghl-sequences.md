# KingsleyAI — GHL SMS/WhatsApp Follow-Up Sequences

**Funnel:** Free Claude Code Course → $47 Strategy Call → Standard $1.5K/mo
**Channel:** GHL SMS/WhatsApp
**Merge tag:** `{{contact.first_name}}`
**Voice:** Direct, no-BS, casual, punchy. Short texts. No corporate speak.

---

## SEQUENCE A: $47 Call Bookers — Pre-Call Warm-Up

**Trigger:** Contact pays $47 and books a strategy call
**GHL automation notes:**
- Add tag: `call-booked`
- Add tag: `sequence-a-active`
- Remove from Sequence B if running (Skool nurture)
- Pause sequence if reply received at any message — move to manual follow-up

---

**Message 1 — Immediately after booking**
*Send timing: Trigger-based, fires within 5 minutes of booking confirmation*

```
Hey {{contact.first_name}}, booking confirmed — looking forward to the call. Come ready with two things: your current monthly revenue and your #1 bottleneck right now. The more specific you are, the more we can do in 45 minutes.
```

**GHL notes:**
- Trigger: appointment booked + payment confirmed
- Add tag: `pre-call-msg-1-sent`
- If reply received: pause sequence, notify Kingsley

---

**Message 2 — 24 hours before the call**
*Send timing: 24 hours before appointment start time*

```
Hey {{contact.first_name}}, call's tomorrow — quick one before we talk: if you could fix ONE thing in your business in the next 30 days, what would it be? Think on it. That's where we'll start.
```

**GHL notes:**
- Trigger: 24 hours before appointment datetime
- Add tag: `pre-call-msg-2-sent`
- If reply received: pause sequence, log response in contact notes

---

**Message 3 — 1 hour before the call**
*Send timing: 60 minutes before appointment start time*

```
Hey {{contact.first_name}}, we're on in an hour — here's your link: {{appointment.join_url}}. See you there.
```

**GHL notes:**
- Trigger: 60 minutes before appointment datetime
- Add tag: `pre-call-msg-3-sent`
- Replace `{{appointment.join_url}}` with GHL calendar join link merge tag
- If no-show: trigger Sequence C after 30-minute window

---

## SEQUENCE B: Skool Joiners — 5-Day Nurture (Haven't Booked the Call)

**Trigger:** Contact joins free Skool community AND does NOT have tag `call-booked`
**GHL automation notes:**
- Add tag: `sequence-b-active`
- Stop sequence immediately if tag `call-booked` is added at any point
- Stop sequence if reply received — move to manual
- Goal: qualify and convert to $47 call booking by Day 5

---

**Day 1 — 1 hour after joining Skool**
*Send timing: 1 hour after trigger fires*

```
Hey {{contact.first_name}}, welcome to the community — glad you're here. First thing to do: run the Claude Code install command in the pinned post. Takes 2 minutes and it's where everything starts.
```

**GHL notes:**
- Add tag: `sequence-b-day1-sent`
- No CTA to book yet — pure quick win
- If reply received: pause sequence, respond manually

---

**Day 2**
*Send timing: 24 hours after Day 1 message*

```
Hey {{contact.first_name}}, one of our members set up his entire client follow-up system using Claude Code in a single afternoon — went from manually chasing leads to fully automated in 4 hours. Not magic, just the right setup. More of that inside the community this week.
```

**GHL notes:**
- Add tag: `sequence-b-day2-sent`
- No pitch, no CTA — pure social proof
- If reply received: pause sequence, respond manually

---

**Day 3**
*Send timing: 48 hours after Day 1 message*

```
Hey {{contact.first_name}}, quick question — are you currently running a B2B business? And roughly what's your monthly revenue right now? Just want to know who I'm talking to so I can point you to the right stuff.
```

**GHL notes:**
- Add tag: `sequence-b-day3-sent`
- This is a soft qualify — log reply in contact custom fields (`b2b_status`, `monthly_revenue_range`)
- If they reply with revenue >$20K/mo: add tag `hot-lead`, prioritize manual follow-up
- If reply received: pause sequence, respond manually

---

**Day 4**
*Send timing: 72 hours after Day 1 message*

```
Hey {{contact.first_name}}, the thing I hear most from agency owners and coaches: "I know I should be following up more, I just don't have time." That's not a time problem — that's a system problem. Just acknowledging it because it's real and it costs people a lot of money.
```

**GHL notes:**
- Add tag: `sequence-b-day4-sent`
- Pain acknowledgment only — no pitch, no link
- If reply received: pause sequence, respond manually

---

**Day 5 — The Pitch**
*Send timing: 96 hours after Day 1 message*

```
Hey {{contact.first_name}}, if you're running a B2B business doing over $250K/yr and you want to see exactly how to build an AI sales system that runs without you — I do a $47 strategy call where we map it out together. Book here if that's you: [BOOKING LINK]. If you're not there yet revenue-wise, no stress — keep engaging in the community, there's a lot in there for free.
```

**GHL notes:**
- Add tag: `sequence-b-day5-sent`
- Replace `[BOOKING LINK]` with GHL calendar link
- If they book: add tag `call-booked`, remove tag `sequence-b-active`, trigger Sequence A
- After Day 5 fires: remove tag `sequence-b-active` — sequence ends regardless of reply
- If reply received before booking: pause sequence, respond manually

---

## SEQUENCE C: No-Show Re-Book

**Trigger:** Contact had a booked $47 call AND did not attend (no-show confirmed 30 minutes after appointment start)
**GHL automation notes:**
- Add tag: `no-show`
- Remove tag: `sequence-a-active`
- Add tag: `sequence-c-active`
- Stop sequence if reply received — move to manual
- Stop sequence if tag `call-rebooked` is added

---

**Message 1 — 30 minutes after missed call**
*Send timing: 30 minutes after appointment start time, if no-show confirmed*

```
Hey {{contact.first_name}}, looks like something came up — no stress, happens to everyone. Want to find another time that works? I've got a couple of slots this week still open.
```

**GHL notes:**
- Add tag: `sequence-c-msg1-sent`
- Include rebooking link in follow-up if possible: `[REBOOKING LINK]`
- If reply received: pause sequence, rebook manually, add tag `call-rebooked`

---

**Message 2 — 24 hours later (if no response to Message 1)**
*Send timing: 24 hours after Message 1, only if no reply received*

```
Hey {{contact.first_name}}, last nudge from me — I only keep a few call spots open each week and they fill fast. If you want to reschedule, grab a slot here: [REBOOKING LINK]. If timing's not right, no worries at all.
```

**GHL notes:**
- Add tag: `sequence-c-msg2-sent`
- Replace `[REBOOKING LINK]` with GHL calendar link
- After this message fires: remove tag `sequence-c-active` — sequence ends
- If no reply after Message 2: add tag `no-show-cold`, remove from active follow-up
- If they rebook: add tag `call-rebooked`, trigger Sequence A from Message 2

---

## SEQUENCE D: Post-Call — Didn't Close

**Trigger:** $47 strategy call completed AND contact did NOT convert to Standard ($1.5K/mo)
**GHL automation notes:**
- Add tag: `post-call-no-close`
- Add tag: `sequence-d-active`
- Kingsley must fill in `{{call_notes}}` manually in contact record before evening send
- Stop sequence if reply received — move to manual
- Stop sequence if tag `closed-standard` is added at any point
- Remove from sequence after Message 3 regardless of outcome

---

**Message 1 — Same day after call (evening)**
*Send timing: Manual trigger by Kingsley, same evening as call — after filling in call notes*

```
Hey {{contact.first_name}}, good chat today. {{call_notes}} No pressure at all — just wanted to leave the door open if you want to revisit.
```

**GHL notes:**
- `{{call_notes}}` = Kingsley fills this manually per contact, e.g. "You mentioned your biggest issue is follow-up dropping off after the first touch — that's literally the first thing the Standard program fixes."
- Add tag: `sequence-d-msg1-sent`
- If reply received: pause sequence, respond manually

---

**Message 2 — 3 days after call**
*Send timing: 72 hours after Message 1*

```
Hey {{contact.first_name}}, something relevant to what we talked about — most coaches I work with lose 30–40% of their pipeline just from slow follow-up. One member fixed it with a single Claude Code workflow and recovered two deals in the first week. Just thought that was worth sharing.
```

**GHL notes:**
- Add tag: `sequence-d-msg2-sent`
- No pitch — pure value/proof drop
- If reply received: pause sequence, respond manually

---

**Message 3 — 7 days after call**
*Send timing: 7 days after Message 1*

```
Hey {{contact.first_name}}, just checking in — where are you at with everything we discussed? Happy to hear a yes, a no, or a "not yet" — all good from my end, just want to close the loop.
```

**GHL notes:**
- Add tag: `sequence-d-msg3-sent`
- After this message fires: remove tag `sequence-d-active` — sequence ends
- If no reply: add tag `long-term-nurture`, move to quarterly check-in cadence
- If they say yes: add tag `closed-standard`, begin onboarding
- If they say no/not yet: log reason in contact notes, add tag `long-term-nurture`

---

## GHL Tag Reference

| Tag | Meaning |
|-----|---------|
| `call-booked` | Paid $47 and has a confirmed call |
| `sequence-a-active` | In pre-call warm-up sequence |
| `sequence-b-active` | In Skool nurture sequence |
| `sequence-c-active` | In no-show re-book sequence |
| `sequence-d-active` | In post-call no-close sequence |
| `no-show` | Missed their booked call |
| `no-show-cold` | No-show, didn't respond to re-book attempts |
| `call-rebooked` | Rebooked after no-show |
| `post-call-no-close` | Completed call, didn't convert |
| `closed-standard` | Converted to Standard $1.5K/mo |
| `hot-lead` | Replied to Day 3 qualify with strong revenue signal |
| `long-term-nurture` | Cold/dead for now, check in quarterly |

---

*Last updated: 2026-05-04*
