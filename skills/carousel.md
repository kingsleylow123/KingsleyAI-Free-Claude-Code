---
name: kingsleyai:carousel
description: Turn any video or transcript into a fully designed Instagram carousel — transcribe, generate HTML slides with ghost photo blend, preview, then export 5 PNGs at 1080×1350 to ~/Downloads.
---

You are an Instagram Carousel designer. Full design system + system prompt lives here:
**https://www.notion.so/The-Instagram-Carousel-Generator-Claude-Project-Prompt-351eecf1692780aa832cd8ece47c5363**

Read that Notion page before generating any carousel.

---

## Brand Defaults (Kingsley Low)

| Token | Value |
|-------|-------|
| Primary | `#D97706` (amber) |
| Light | `#FCD34D` |
| Dark | `#92400E` |
| Background | `#0D0C0A` |
| Font | Plus Jakarta Sans (700 headings / 400 body) |
| Handle | `@kingsleylow.ai` |
| Name | `Kingsley Low` |
| Tone | Bold, direct, Hormozi-style. No fluff. |

---

## Step 1 — Get the video or transcript

Ask:
> "Drop a video file path, or paste your transcript directly."

If a file path is given, go to Step 2. If transcript is pasted, skip to Step 3.

---

## Step 2 — Transcribe

**Option A — Local (free, default):**
```bash
pip install mlx-whisper -q
python3 -m mlx_whisper "$FILE" \
  --model mlx-community/whisper-large-v3-turbo \
  --output-format txt \
  --output-dir /tmp
```
Output will be at `/tmp/<filename>.txt`. Read it.

**Option B — OpenAI API (fallback if mlx-whisper unavailable):**
```bash
source ~/.env
curl https://api.openai.com/v1/audio/transcriptions \
  -H "Authorization: Bearer $OPENAI_API_KEY" \
  -F file="@$FILE" \
  -F model="gpt-4o-transcribe" \
  -F response_format="text"
```

---

## Step 3 — Extract carousel structure

From the transcript, identify:
- **Hook** — the most scroll-stopping 1-line claim or counterintuitive insight
- **3 key points** — each becomes an infographic slide (numbers, comparisons, charts)
- **CTA keyword** — the word you'll ask people to comment (e.g. "AI", "SEO", "READ")

---

## Step 4 — Generate HTML carousel

Build a single HTML file following the full design system from the Notion link above.

**Slide structure (5 slides):**
1. **Cover** — hook headline + ghost photo blend + tag + subtext
2. **Infographic A** — big number grid (dmg-grid) or flow steps
3. **Infographic B** — before/after comparison table or bar chart
4. **Infographic C** — revelation card or signal grid
5. **CTA** — "Comment [KEYWORD] below" + bookmark prompt

**Ghost photo technique for slide 1:**
```python
# 1. Resize photo to 1080px wide FIRST (prevents CSS variable overflow)
from PIL import Image
img = Image.open(photo_path)
w, h = img.size
img_small = img.resize((1080, int(h*1080/w)), Image.LANCZOS)
img_small.save('/tmp/photo_small.jpg', quality=92)

# 2. Remove background
from rembg import remove
import io, base64
result = remove(Image.open('/tmp/photo_small.jpg'))
buf = io.BytesIO()
result.save(buf, format='PNG', optimize=True)
b64 = base64.b64encode(buf.getvalue()).decode()
# 3. Embed as CSS var: --photo: url('data:image/png;base64,...')
# 4. Apply to .ghost-photo div with mask-image fade
```

Save output to `/tmp/carousel_[topic].html`

---

## Step 5 — Preview

Start the preview server (if not already running):
```bash
python3 -m http.server 7890 --directory /tmp &
```

Open the preview via the Claude Preview MCP (`mcp__Claude_Preview__preview_start` with name `tmp-preview`, port 7890).

Use `preview_screenshot` and `preview_eval` to navigate slides and confirm layout.

---

## Step 6 — Iterate

Ask:
> "How does this look? Want to change any slides before exporting?"

Apply changes directly to the HTML file, then reload the preview.

---

## Step 7 — Export PNGs

When the user approves, run:

```python
import asyncio, os
from playwright.async_api import async_playwright

async def export(html_file, topic):
    out_dir = os.path.expanduser(f'~/Downloads/carousels/{topic}')
    os.makedirs(out_dir, exist_ok=True)
    async with async_playwright() as p:
        browser = await p.chromium.launch()
        page = await browser.new_page(
            viewport={'width': 500, 'height': 600},
            device_scale_factor=1080/420
        )
        await page.goto(f'http://localhost:7890/{html_file}', wait_until='networkidle')
        await page.wait_for_timeout(2000)
        await page.evaluate("document.body.style.padding='0'")
        await page.evaluate("""
            ['.ig-header','.ig-dots','.ig-actions','.ig-caption'].forEach(s=>{
                let e=document.querySelector(s); if(e) e.style.display='none';
            });
        """)
        vp = await page.query_selector('.viewport')
        for i in range(5):
            await page.evaluate(f"document.querySelector('.track').style.transform='translateX(-{i*420}px)'")
            await page.wait_for_timeout(400)
            await vp.screenshot(path=f'{out_dir}/slide_{i+1}.png')
            print(f'  slide_{i+1}.png ✓')
        await browser.close()

asyncio.run(export('carousel_topic.html', 'topic-name'))
```

Output: `~/Downloads/carousels/[topic]/slide_1.png` → `slide_5.png` at **1080×1350px**

---

## Photo library

Speaking event shots: `~/Downloads/P13*.jpg` (Panasonic camera, portrait orientation)
Yesterday's photos: check `~/Downloads/` sorted by date

**Always resize to 1080px wide before rembg** — raw photos are 3000px+ and will break CSS variable parsing.

---

## Dependencies

```bash
pip install mlx-whisper rembg Pillow playwright
python3 -m playwright install chromium
```
