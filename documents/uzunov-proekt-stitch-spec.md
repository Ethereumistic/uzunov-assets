# STITCH DESIGN SPEC — UZUNOV PROEKT LTD
## Architectural & Interior Design Company Website
**Language:** Bulgarian  
**Location:** Габрово, България  
**Style Direction:** Minimal Glassmorphism — Image-Forward, Architectural Luxury

---

## 🎯 BRIEF FOR STITCH

Design a modern, minimal glassmorphism website for **"УЗУНОВ ПРОЕКТ" ЕООД** — a reputable architectural and interior design firm based in Gabrovo, Bulgaria. The design must feel like a **luxury architecture portfolio**: dark, refined, image-led, with frosted glass UI elements floating over full-bleed photography of real buildings and interiors.

**Core aesthetic:**  
Dark backgrounds (deep charcoal/near-black) with frosted glass cards, crisp white typography, and selective use of warm golden/brass accent tones. Every section should feel like the UI is barely there — just glass and light over powerful architectural imagery.

**Font direction:** Use a refined, architectural serif for headings (e.g. *Cormorant Garamond*, *Playfair Display*, or *DM Serif Display*) paired with a clean geometric sans for body (e.g. *DM Sans*, *Outfit*, or *Geist*). Avoid Inter, Roboto, Arial.

---

## 🗂️ SITE STRUCTURE & NAVIGATION

### Navbar (Floating Glassmorphic)
- Fixed/sticky, floating 20–30px from top, centered or full-width with padding
- Background: `rgba(10, 10, 10, 0.45)` with `backdrop-filter: blur(18px)`
- Thin border: `1px solid rgba(255,255,255,0.08)`
- Logo left: **УЗУНОВ ПРОЕКТ** in serif font, small subtitle "АРХИТЕКТУРНО СТУДИО" in tracked uppercase sans
- Nav links center or right: **За нас / Проекти / Контакти**
- Links: white, subtle underline-on-hover with a thin brass/gold line
- Mobile: hamburger with full-screen glass overlay menu

---

## 📄 PAGE 1 — НАЧАЛНА СТРАНИЦА (Landing Page)

### SECTION 1 — Hero (Full Screen Image Slider)

**Layout:** Full-viewport-height image slider. UI elements float ON TOP as glass layers.

**Content:**
- Background: Auto-playing slider cycling through **real photographs** of the company's landmark completed buildings. Priority images to find:
  - **МОЛ ГАБРОВО** — large shopping mall, Gabrovo (search: "Мол Габрово", "Mall Gabrovo exterior")
  - **Дом за възрастни хора „СВ. ВАСИЛИЙ ВЕЛИКИ"** — award-winning care home 2021 (search: "Дом Св. Василий Велики Габрово")
  - **МБАЛ „СВ. ИВАН RILSKI"** — hospital building Gabrovo (search: "МБАЛ Габрово Иван Рилски")
  - **Търговско-административен комплекс „СИЕНТИА"** — multi-building commercial complex (search: "Сиентиа Габрово")
  - **Фасада НТС Габрово** — Schüco photovoltaic facade (search: "НТС Габрово фасада фотоволтаична")
  - Use high-quality architectural photography of Gabrovo modern buildings as fallback if specific images aren't found

- Slider transition: slow crossfade (3–4s) or Ken Burns pan effect. NO hard cuts.
- Dark overlay gradient on images: `linear-gradient(to bottom, rgba(0,0,0,0.3) 0%, rgba(0,0,0,0.65) 100%)`

**Glass Hero Card (centered or bottom-left positioned):**
```
┌─────────────────────────────────────────────────┐
│  [frosted glass panel]                           │
│                                                  │
│  АРХИТЕКТУРА                                     │  ← Large serif heading
│  С ХАРАКТЕР                                      │
│                                                  │
│  Проектираме пространства, които вдъхновяват.    │  ← Subtitle
│  Габрово, България — от 1995 до днес.            │
│                                                  │
│  [ РАЗГЛЕДАЙТЕ ПРОЕКТИТЕ ]  [ ЗА НАС ]          │  ← CTA buttons (glass + outlined)
└─────────────────────────────────────────────────┘
```

**Slider dots/controls:** Minimal, bottom-center, thin lines not circles. Active = gold/brass.

**Scroll indicator:** Thin animated arrow or line at bottom center pointing down.

---

### SECTION 2 — Избрани Проекти (Featured Projects)

**Layout:** Full-width section, dark background (`#0d0d0d` or `#111`). Grid of project cards.

**Heading:** `ИЗБРАНИ ПРОЕКТИ` — centered, large serif, with a thin horizontal brass rule underneath.

**Grid:** 3-column on desktop, 2 on tablet, 1 on mobile. Cards are tall portrait-ratio (3:4).

**Each Card (Glassmorphic):**
- Full-bleed background image of the building (real photo if found by Stitch)
- On hover: image brightens slightly, glass info panel slides up from bottom
- Glass panel: `rgba(0,0,0,0.55)` + `backdrop-filter: blur(12px)` + top border `1px solid rgba(255,255,255,0.1)`
- Info: Project name (serif), category tag (sans, uppercase, small), RZP if notable

**Featured Projects to display (use real building photos where possible):**

1. **МОЛ ГАБРОВО**
   - Категория: Търговски обекти
   - РЗП: 16 600 м²
   - Отличие: *Специална награда „Сграда на годината" 2010*
   - Search hint: "Mall Gabrovo Bulgaria exterior"

2. **Дом „СВ. ВАСИЛИЙ ВЕЛИКИ"**
   - Категория: Социални дейности
   - РЗП: 4 247 м²
   - Отличие: *Носител „Сграда на годината" 2021*
   - Search hint: "Дом за възрастни хора Св Василий Велики Габрово"

3. **Комплекс „СИЕНТИА"**
   - Категория: Офис сгради
   - РЗП: 4 × сгради, до 3 650 м² всяка
   - Search hint: "Сиентиа комплекс Габрово офис"

4. **МБАЛ „СВ. ИВАН РИЛСКИ"**
   - Категория: Здравеопазване
   - РЗП: 3 600 м²
   - Search hint: "МБАЛ Св Иван Рилски Габрово"

5. **Офис сграда „БИЛБЕСТ"**
   - Категория: Офис сгради
   - РЗП: 2 700 м²
   - Отличие: *Номинация „Сграда на годината" 2013*
   - Search hint: "Билбест офис сграда Габрово"

6. **Фабрика КОЛТЕК**
   - Категория: Промишлени сгради
   - РЗП: 9 000 м²
   - Search hint: "Колтек фабрика Габрово производствена сграда"

**CTA below grid:** Centered text link — `→ ВСИЧКИ ПРОЕКТИ` in small tracked uppercase with a thin underline.

---

### SECTION 3 — За Нас (Minimal About Component)

**Layout:** Two-column split. Left: large architectural image (Gabrovo skyline, or one of their buildings). Right: text content.

**Image side:** Full-bleed tall image, slight warm color grade. Small glass badge overlay: *"30+ години опит"* or *"Основана 1995"*.

**Text side (dark bg, generous padding):**
```
ЗА НАС
────────────────

УЗУНОВ ПРОЕКТ ЕООД е водеща архитектурна 
компания в Габрово с над три десетилетия 
реализирани проекти.

Специализираме в проектиране на офис сгради, 
търговски комплекси, здравни заведения, 
промишлени обекти и обществени сгради с 
отличено качество и множество награди.

[ НАУЧЕТЕ ПОВЕЧЕ ]   ← ghost/glass button
```

**Awards strip** (below text, horizontal scrolling on mobile):
- `🏆 Сграда на годината 2021 — Дом Св. Василий Велики`
- `🏆 Специална награда 2010 — МОЛ Габрово`
- `🏆 Номинация 2013 — Офис сграда Билбест`
- `🌿 Специална награда Зелени инвестиции — НТС Габрово`

Style: Small glass chips/pills, white text on dark semi-transparent bg, gold/brass icon.

---

### SECTION 4 — Услуги (Featured Services)

**Layout:** Full-width, dark section. Large background image (abstract architectural detail — concrete texture, glass facade, geometric building detail). Glass cards grid floating over it.

**Heading:** `НАШИТЕ УСЛУГИ` centered serif.

**Cards (3 or 4 in a row):**

Each card: glassmorphic (`rgba(255,255,255,0.06)` + `backdrop-filter: blur(16px)` + `border: 1px solid rgba(255,255,255,0.1)`) with hover lift effect.

```
┌──────────────────────┐
│    [thin line icon]  │
│                      │
│  АРХИТЕКТУРНО        │
│  ПРОЕКТИРАНЕ         │
│                      │
│  Офис сгради,        │
│  търговски обекти,   │
│  промишлени сгради   │
└──────────────────────┘
```

**Services to include:**
1. **Архитектурно проектиране** — Офис, търговски, промишлени и обществени сгради
2. **Здравни и социални обекти** — Болници, домове за грижи, специализирани съоръжения
3. **Интериорен дизайн** — Лоби, ресторанти, корпоративни пространства
4. **Фасадни решения** — Включително фотоволтаични и енергийно ефективни системи
5. **Инвестиционни проекти** — Консултации и пълно управление на строителния процес

Icons: Ultra-thin line architectural icons (not filled). Gold/brass color.

---

## 📄 PAGE 2 — ПРОЕКТИ (Projects Page)

**Layout:** Full portfolio grid with filter tabs.

**Filter tabs (glass pill buttons):**
`Всички | Офис сгради | Здравеопазване | Търговски | Промишлени | Обществени`

**Grid:** Masonry or uniform 3-col grid. Same card style as Featured Projects section.

**Full project list from portfolio (all entries from the markdown):**

### Офис сгради
- Офис сграда — Габрово (РЗП 2 500 м², инв. КРЕМИ ООД)
- Офис сграда — Габрово (РЗП 2 700 м², инв. БИЛБЕСТ АД) ★ Номинация 2013
- Търговско-административен комплекс СИЕНТИА — Габрово (4 сгради, инв. СИЕНТИА ООД)

### Здравеопазване и Социални дейности
- МБАЛ „СВ. ИВАН РИЛСКИ" — Габрово (РЗП 3 600 м², инв. МДМ ИНВЕСТ АД)
- Дом „СВ. ВАСИЛИЙ ВЕЛИКИ" — Габрово (РЗП 4 247 м², инв. РАМУС МЕДИКАЛ) ★ Сграда на годината 2021

### Търговски обекти и Обществени сгради
- МОЛ ГАБРОВО (РЗП 16 600 м², инв. МОЛ ГАБРОВО ООД) ★ Специална награда 2010
- Търговски комплекс МАРИНА — Габрово (търговска 5 000 м² + складова 3 600 м²)
- Зала 300 — Севлиево (РЗП 170 м², инв. Община Севлиево)
- Ресторант и лоби бар — Севлиево (инв. Хотел СЕВЛИЕВО ПЛАЗА)
- Обновяване фасада НТС — Габрово (Schüco фотоволтаична система) ★ Зелени инвестиции

### Промишлени сгради
- Фабрика КОЛТЕК — Габрово (РЗП 9 000 м², българо-швейцарско дружество)
- Цех за термична обработка — Габрово (РЗП 4 606 м², инв. ПЛАНЗЕЕ ООД)
- Фабрика за телфери — Габрово (РЗП 2 700 м², инв. ТИЛЛ ИНДУСТРИАЛ ГАБРОВО)
- Производствена сграда — Дряново (РЗП 2 900 м², инв. ТИСИКОН ЕООД)
- Фабрика за металообработване — Габрово (инв. ВИВЕТ ЕООД)
- Фабрика за електроника — Габрово (инв. ВИВЕТ ЕООД)

---

## 📄 PAGE 3 — ЗА НАС (About Page)

**Layout:** Editorial full-page layout.

**Sections:**
1. **Hero banner** — large architectural image with glass title overlay: *"Архитектура с характер — от 1995 до днес"*
2. **Studio story** — 2-col: text left, image right. Brief company history, philosophy, Gabrovo roots.
3. **Awards & Recognition** — timeline or card grid of all awards
4. **Stats strip** — `30+ Години | 25+ Проекта | 100 000+ м² РЗП | 4 Национални награди`
5. **Team section** (optional placeholder) — glass cards for team members

---

## 📄 PAGE 4 — КОНТАКТИ (Contact Page)

**Layout:** Split screen. Left: full-height map or atmospheric Gabrovo image. Right: glass contact form panel.

**Contact info:**
- 📍 гр. Габрово, бул. Априлов №46, ет. 7, офис 18
- Company: "УЗУНОВ ПРОЕКТ" ЕООД

**Form fields (glass inputs):**
- Имe
- Имейл
- Телефон
- Съобщение (textarea)
- Бутон: `ИЗПРАТЕТЕ ЗАПИТВАНЕ` (glass button with gold border on hover)

---

## 🔻 FOOTER

**Style:** Dark charcoal (`#0a0a0a`), minimal, architectural. Thin top border in brass/gold.

**Layout (3 columns):**

```
УЗУНОВ ПРОЕКТ                    НАВИГАЦИЯ              КОНТАКТИ
АРХИТЕКТУРНО СТУДИО              За нас                 гр. Габрово
                                 Проекти                бул. Априлов №46
Проектираме пространства         Контакти               ет. 7, офис 18
с трайна стойност и
архитектурен характер.           ОТЛИЧИЯ
                                 ★ Сграда на годината 2021
                                 ★ Специална награда 2010
                                 ★ Зелени инвестиции
```

**Bottom bar:** thin separator line, then: `© 2025 Узунов Проект ЕООД — Габрово, България` left-aligned, `Изработка: [Studio]` right-aligned. All in tiny tracked uppercase sans.

---

## 🎨 DESIGN TOKENS

```css
/* Colors */
--bg-primary: #0a0a0a;
--bg-secondary: #111111;
--text-primary: #f5f0eb;
--text-muted: rgba(245, 240, 235, 0.55);
--accent-gold: #c9a96e;
--accent-gold-light: #e8c98a;
--glass-bg: rgba(255, 255, 255, 0.05);
--glass-border: rgba(255, 255, 255, 0.09);
--glass-blur: blur(18px);

/* Typography */
--font-heading: 'Cormorant Garamond', 'Playfair Display', serif;
--font-body: 'DM Sans', 'Outfit', sans-serif;

/* Spacing */
--section-padding: 120px 5vw;
--card-radius: 12px;
```

---

## 📸 IMAGE SOURCING INSTRUCTIONS FOR STITCH

Stitch should search for and use **real photographs** of the following real-world buildings and locations. All buildings are in or near **Gabrovo, Bulgaria**.

| Project | Search Query |
|---|---|
| МОЛ Габрово | "Mall Gabrovo Bulgaria" OR "Мол Габрово" |
| Дом Св. Василий Велики | "Дом за възрастни хора Св Василий Велики Габрово" |
| МБАЛ Св. Иван Рилски Габрово | "МБАЛ Габрово Св Иван Рилски болница" |
| Комплекс Сиентиа Габрово | "Сиентиа Габрово офис комплекс" |
| НТС Габрово фасада | "НТС Габрово Schuco фасада" |
| Офис сграда Билбест | "Билбест офис Габрово" |
| Габрово архитектура general | "Gabrovo Bulgaria modern architecture" |
| Габрово панорама / skyline | "Gabrovo Bulgaria city aerial" |

For any images not found: use **high-quality stock architectural photography** matching the building category (modern Bulgarian commercial, healthcare facility, industrial building). Maintain the dark, editorial, refined mood in all images. Prefer overcast/dramatic sky photos for maximum visual impact.

---

## ✅ IMPLEMENTATION CHECKLIST FOR STITCH

- [ ] Bulgarian language throughout all UI, labels, and copy
- [ ] Floating glassmorphic navbar with blur backdrop
- [ ] Hero full-screen image slider (crossfade) with glass card overlay
- [ ] Featured Projects grid (6 cards, real project images)
- [ ] About Us split-section with awards strip
- [ ] Services section with glass cards over image background
- [ ] Full Projects page with category filter tabs
- [ ] About page with editorial layout and stats strip
- [ ] Contact page split with glass form panel
- [ ] Architectural serif + geometric sans font pairing
- [ ] Dark theme, brass/gold accents throughout
- [ ] Consistent glass morphism treatment on all interactive elements
- [ ] Mobile responsive (glass navbar collapses to hamburger)
- [ ] Footer with 3-col layout and awards callouts
