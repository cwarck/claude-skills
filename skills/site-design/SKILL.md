---
name: site-design
description: Use to design or audit a site or a frontend app.
---

Design $ARGUMENTS against the rules below. No target: audit the repository.

## Gate every rule on surface type

- **Brand surfaces** (marketing, landing, editorial): judge on distinctiveness and voice. Require personality.
- **Product surfaces** (app, dashboard, data-dense): judge on legibility, density, state clarity. Don't over-personalize (decorative hero, bounce motion, serif accents) — that's its own slop.

On conflict, surface goal wins.

## Method

1. Output tokens first: brand color ramp, one display + one body typeface (different faces, picked for the voice), a radius scale, one shadow language, a spacing rhythm. Per element commit to shadow OR border, never both. Wire into Tailwind config / CSS vars; treat per-component literals as a defect.
2. No brand yet? Invent it in three lines before any CSS: an adjective pair plus its opposite (precise, not playful); a real-world reference the domain evokes (lab instrument, transit signage, receipt paper — never a UI library) to set color and type tone; one anchor color (hex) tied to those. Those three lines are the brand.
3. Vary deliberately: card size by importance, spacing tight-within-groups and loose-between, radius for hierarchy. Sameness is the tell.
4. Real assets only: product screenshots, real numbers, real copy. Ship no placeholders live.

## Banned

Visual:
- Purple/violet→blue "blurple" or indigo-500 gradient as primary accent or hero background without a brand reason.
- Side-tab or thick colored accent border on a card, worst at large radius where the stripe fights the corner. Drop the border or the radius.
- Rounded-square icon tile above a heading, repeated in a uniform 3-column card grid. Put the icon inline, or vary the cards. Brand surfaces only; on product a uniform card grid is legitimate.
- Hairline border plus a wide soft ~0.1-opacity shadow on the same card. Commit to one.
- Gradient text (`background-clip:text`) on headings or metric numbers.
- Tracked-uppercase eyebrow/pill chip above an oversized H1, or `01/02/03` markers on non-sequential sections: fake editorial scaffolding. Fold into the headline; number only real sequences.
- Cards nested in cards 3+ deep, each with its own border, padding, shadow. Flatten with whitespace, type, dividers.

Accessibility (contrast is a hard CI gate; the rest are strong automated flags that still need a human intent check):
- Decorative or auto-playing motion with no `@media (prefers-reduced-motion: reduce)` guard. Ship the guard (vestibular harm). (WCAG 2.2.2 Pause/Stop/Hide Level A for auto-play; 2.3.3 AAA for interaction-triggered.)
- Mid-gray body token (`gray-500`/`slate-500` ~#6B7280) on a colored or gradient surface, dropping below 4.5:1 (WCAG 1.4.3). Derive text color per surface (black/white at opacity); check contrast at the gradient's worst stop.

Copy:
- Buzzword salad with no concrete referent: supercharge, empower, streamline, revolutionize, world-class, enterprise-grade, next-generation, "unlock the power of", "build the future".
- "Happy talk" heroes that survive a logo swap: "Welcome to X", "Your all-in-one solution for…". If you can hear "blah blah blah", rewrite to name the specific job and outcome.
- Redundant UX microcopy: label, sublabel, helper, placeholder all restating the same thing. Say it once.

## Avoid

- Default fonts: Inter, Geist, Space Grotesk, Instrument-Serif-italic accent, Bricolage, Satoshi. Not banned, should be justified.
- Serif-italic accent word in an otherwise-sans hero ("we make *beautiful* software").
- Glassmorphism or frosted translucency. Keep for true overlay layers (modal, nav over media); slop as decoration or glass-on-glass. Verify contrast over the blur.
- Aurora or mesh-gradient hero; dark-mode neon glow box-shadows. Avoid as animated decorative filler; a static, off-palette, low-contrast field can be intentional.
- Cream/beige warm-minimalist palette; dark + mono + green terminal hero. Current escape hatches, already converging into the next default. Derive from brand instead.
- Bento grid as the reflexive "show all features" layout. Keep when tiles genuinely differ in weight; slop as uniform equal-weight tiles.
- Extreme or uniform border-radius (24px+ on small cards; the same radius on everything). Use radius variation as a hierarchy tool.
- Off-the-shelf effect components dropped in unchanged: Aceternity or Magic UI bento, Sparkles, Border Beam, Aurora; Lucide "AI magic" icons (Sparkles, Wand2, Bot). Restyle or replace.
- Bounce, elastic, or overshoot easing; fade-in on everything. Motion must communicate state or causality; delete any that loses no meaning when removed. Otherwise keep it fast, ease-out, physically plausible.
- AI stock imagery: 3D abstract blobs, neon orbs in space, golden-hour gradient photos, generic isometric illustrations. Use real assets.
- Unfinished defaults shipped live: lorem ipsum, default favicon, default OG image, default page `<title>`, placeholder avatars.
- Cookie-cutter section rhythm: every section the same height and scroll-depth, three blurbs of identical length. Vary section weight; let one feature go deep and others a line.
- Copy cadence tics: em-dash overuse (corroborating signal, never a verdict — humans use them; flag more than two per block used as a clause-splice crutch); contrastive negation ("not X, but Y"; "it's not just X, it's Y"; "stops being X, starts being Y"); manufactured-contrast section-closers ("It's not a tool. It's a teammate."); rule-of-three ("fast, simple, powerful"); round unattributed metrics ("10M+ users", "99.9% uptime"). Lead with what the thing is; use real, specific, attributable numbers.

## Reviewing for slop

- Run `npx impeccable detect <path|url>` first, triage its flags, then do the manual pass below. Catalog: impeccable.style/slop. Alt gate: Hallmark (github.com/nutlope/hallmark).
- Corroborate, don't single-fire. One shared trait isn't slop — good designers use serifs, gradients, em-dashes on purpose, so any single tell carries a real false-positive rate. Flag a cluster, then check intent.
- Give atomic fixes, not commentary. Map each finding to the exact change: "remove the left-border or the radius", "derive text color per surface", "name the job in the headline".
