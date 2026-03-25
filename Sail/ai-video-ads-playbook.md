# AI Video Ads Playbook — Sail Solutions
*Compiled Mar 24, 2026 | Source: AI Video Bootcamp framework + industry research*

---

## 🎯 Goal
Produce premium short-form video ads (15-30s) for Sail clients and our own marketing at near-zero cost using AI video tools.

---

## 📋 Production Workflow (7 Steps)

### Step 1: Input
- Product image/screenshot + name + 1-line description
- Target audience (who's watching?)
- Platform (Reels / TikTok / YouTube Shorts)

### Step 2: AI Image Analysis + Persona
- Feed product image to vision model (Nano Banana Pro or GPT-4o)
- Generate ideal **influencer persona** (age, style, setting, vibe)
- Example: "28-year-old Saudi entrepreneur in modern office, confident, tech-savvy"

### Step 3: Script + Storyboard
Use this template:

| Scene # | Duration | Visual | Audio/Script | Notes |
|---------|----------|--------|-------------|-------|
| 1 | 3s | Hook — problem statement, close-up | "Managing invoices manually?" | Pain point, grab attention |
| 2 | 5s | Product demo — screen recording or AI gen | "Meet Muhasib — your AI accountant" | Show the magic |
| 3 | 4s | Result — transformation moment | "Done in 10 seconds, not 10 minutes" | Satisfaction shot |
| 4 | 3s | CTA + logo + end screen | "Try it free — link in bio" | Brand lockup |

### Step 4: Prompt Engineering

**Universal Prompt Structure:**
```
[Subject/Persona]: [Detailed description]
[Action/Scene]: [Pose, interaction, camera angle]
[Dialogue]: "[Natural testimonial script]"
[Style]: [UGC selfie / cinematic / product shot], [lighting], [aspect ratio 9:16], [duration 10-15s]
[Variations]: [music, text overlays, lip-sync]
```

### Step 5: Generate Video
Choose tool based on need (see Tool Matrix below)

### Step 6: Polish
- Add voiceover (Fish Audio / ElevenLabs)
- Text overlays + captions (CapCut)
- Music (royalty-free or AI-generated)
- End screen with CTA

### Step 7: Export & Post
- 9:16 vertical, 1080x1920
- Generate 5+ variations per concept
- A/B test on platform

---

## 🛠 Tool Matrix

| Tool | Best For | Cost | Our Access |
|------|----------|------|------------|
| **Veo 3.1** | Cinematic, natural scenes, 60s, 4K, native audio | Google API | ✅ |
| **Kling 2.6** | Most realistic short clips, UGC style | Per gen | ✅ |
| **Runway Gen-4.5** | Smooth motion, editing tools, presets | Subscription | Test |
| **Nano Banana Pro** | Text rendering, infographics, bento grids | API | ✅ |
| **Fish Audio** | Arabic/English voiceover, cloned voices | API key set | ✅ |
| **ElevenLabs** | Premium voice, lip-sync | Subscription | ✅ (sag) |
| **HeyGen** | AI avatars, talking head videos | Subscription | Evaluate |
| **MakeUGC** | $1 UGC-style videos, reference rebuild | Per video | Evaluate |
| **CapCut** | Editing, captions, effects | Free | ✅ |

---

## 📝 Copy-Paste Prompt Library

### Category 1: Product Reveal / Transformation

**Particle Brand Reveal (Runway/Veo):**
```
Cinematic shot of a dark, textured backdrop illuminated by cool directional lighting. The [BRAND] logo hovers midair, glowing faintly. It pulses with energy, shatters into thousands of tiny particles that swirl rapidly and form a [PRODUCT] midair—assembling piece by piece in precise, fluid motion. The [PRODUCT] descends gently with a soft echo, then fades to black. Fixed wide angle, moody cool-toned lighting, abstract studio. 9:16, 10s.
```

**Smoke Transformation (Veo/Kling):**
```
Photorealistic slow-motion video of a transparent glass container with '[BRAND]' branding on a minimalist surface. A vortex of [COLOR] smoke swirls inside magically, solidifying into a glossy [COLOR] [PRODUCT]. Minimalist white background, studio lighting, high detail. 9:16, 8s.
```

**Futuristic Reveal (Runway):**
```
Slow-motion cinematic reveal: A swirl of shimmering [COLOR] particles on a black void backdrop, condensing into a sleek [BRAND] [PRODUCT] that rotates 360 degrees under dramatic spotlights. Photorealistic, moody industrial lighting, subtle particle effects. 9:16, 10s.
```

### Category 2: UGC-Style Testimonial

**Casual Testimonial (Kling 2.6):**
```
[PERSONA] sitting in [SETTING], holding phone showing [PRODUCT]. Natural selfie angle, warm indoor lighting. Speaking directly to camera with genuine excitement: "[DIALOGUE]". UGC style, natural skin texture, slight camera movement. 9:16, 15s.
```

**Before/After (Kling/Veo):**
```
Split screen transformation: Left side shows [PAIN POINT visual — messy desk, manual paperwork]. Right side reveals [SOLUTION — clean dashboard, automated process]. Smooth morph transition at 5s mark. Modern office setting, natural lighting. 9:16, 12s.
```

### Category 3: SaaS / Tech Demo

**Dashboard Reveal:**
```
Close-up of hands typing on laptop in modern office. Camera pulls back to reveal sleek dashboard with Arabic UI showing real-time data flowing in. Numbers animate, charts build. Satisfied user leans back with confident expression. Cinematic lighting, shallow depth of field. 9:16, 12s.
```

**WhatsApp Agent Demo:**
```
Phone screen recording style: WhatsApp chat opens, user sends voice message in Arabic. AI agent responds instantly with formatted invoice summary. Camera zooms out to show impressed business owner. Natural office lighting, UGC feel. 9:16, 15s.
```

### Category 4: Sail-Specific

**Muhasib (Accounting Agent):**
```
Saudi business owner receives stack of paper invoices. Frustrated expression. Opens WhatsApp, sends photo of invoice to Muhasib. AI processes in 3 seconds — shows extracted data, auto-created Zoho entry. Owner smiles, drinks coffee. Text overlay: "من ١٠ دقائق إلى ١٠ ثواني". Arabic, modern office, warm lighting. 9:16, 15s.
```

**Sail Brand Intro:**
```
Cinematic: Multiple screens showing different AI agents working simultaneously — one processing invoices, one answering WhatsApp, one generating reports. Camera pulls out to reveal Sail Solutions logo forming from connected data streams. Cool blue + white palette, tech-forward, professional. "وكلاء ذكاء اصطناعي لأعمالك". 9:16, 12s.
```

---

## 📐 Storyboard Templates

### Template A: Problem → Solution → CTA (15s)
| Sec | Visual | Audio | Text Overlay |
|-----|--------|-------|-------------|
| 0-3 | Pain point (frustration, manual work) | Tense music | "Still doing [X] manually?" |
| 3-8 | Product demo / transformation | Music builds | "[Product] handles it in seconds" |
| 8-12 | Result / happy user | Music resolves | Stats or testimonial |
| 12-15 | Logo + CTA | Voiceover CTA | "Try free — link in bio" |

### Template B: Hook → Demo → Social Proof (20s)
| Sec | Visual | Audio | Text Overlay |
|-----|--------|-------|-------------|
| 0-3 | Bold hook statement | Direct voiceover | "This AI replaced my accountant" |
| 3-10 | Screen recording / product walkthrough | Narration | Step-by-step captions |
| 10-15 | Results / metrics | Music builds | "50+ businesses using it" |
| 15-20 | Testimonial clip + CTA | Customer voice | Logo + link |

### Template C: Day-in-Life UGC (15s)
| Sec | Visual | Audio | Text Overlay |
|-----|--------|-------|-------------|
| 0-5 | Morning routine, check phone | Casual talk | "My morning just got easier" |
| 5-10 | Open app/WhatsApp, show AI working | Natural audio | Feature highlights |
| 10-15 | Satisfied reaction, recommend | Direct to camera | CTA |

---

## 🏭 Batch Production System (n8n Automation)

**Automated Pipeline:**
1. Input: Product image + brief → n8n webhook
2. AI analyzes image → generates persona + 3 scripts
3. Scripts → storyboard templates (auto-filled)
4. Prompts → Kling/Veo API → generate 5 variations each
5. Best clips → CapCut assembly (manual for now)
6. Output: 3-5 ready-to-post videos per product

**Cost per ad:** ~$2 (vs $500 traditional UGC)
**Time per batch:** ~30 min (vs days)
**Target:** 10+ videos/week for Sail + clients

---

## 📚 Learning Path (Based on AI Video Bootcamp 9-Phase Curriculum)

| Phase | Focus | Our Priority |
|-------|-------|-------------|
| 1. Initiate | Tool setup, community | ✅ Done (tools ready) |
| 2. AI Images | Midjourney, DALL-E, prompting | ✅ Have Nano Banana |
| 3. AI Videos | Kling, Runway, image-to-video | 🔥 HIGH — master this |
| 4. Sound + Editing | ElevenLabs, CapCut, music | 🔥 HIGH — Fish Audio ready |
| 5. Character Consistency | Consistent faces, styles | ⚡ MEDIUM — for brand |
| 6. AI Video Ads | UGC ads, product campaigns | 🔥 HIGH — this is Sail's edge |
| 7. Social Media Content | Platform optimization, algorithms | 🔥 HIGH — Go's domain |
| 8. AI Filmmaking | Cinematic, storytelling | ⚡ MEDIUM — for demos |
| 9. Cloning + Automation | Face/voice clone, scaling | ⚡ LATER — after basics |

**Our fast track: Phases 3 → 6 → 7 → 4 (in that order)**

---

## ⚡ Quick Reference: Prompt Tips

1. **Prompt like a director**, not a storyteller — "medium shot of..." not "once upon a time..."
2. **Structure:** Subject + Action + Style + Tone + Camera/Lighting
3. **Always specify:** aspect ratio (9:16), duration (10-15s), lighting style
4. **Budget 3-10 attempts** per usable clip — that's normal
5. **Arabic text:** Use Nano Banana Pro (best text rendering)
6. **Vertical always** for social (9:16, 1080x1920)
7. **Hook in first 2 seconds** or lose them
8. **Natural > polished** for UGC style (slight camera shake, real lighting)

---

*Next: Go + Hunter start producing test batch. Radar evaluates MakeUGC + HeyGen pricing.*
