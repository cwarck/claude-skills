---
name: site-design
description: Build or audit websites that don't look AI-generated. Use when creating or reviewing web pages, landing pages, or UI.
---

Design or audit $ARGUMENTS against the rules below. No target: the page or UI in this conversation. Read the files first.

## The one test that doesn't rot

Cover the logo and the brand color. If the page could be any other product, it's slop. (Romaniuk Distinctive Brand Assets, Ehrenberg-Bass: strip branding, see if the asset alone names the brand.)

Add constraints. AI returns the statistical center of its training data — it averages. Derive color, type, and layout from the actual brand and content. Never swap a default for the trendy anti-default; escape hatches homogenize within one cycle (purple → cream, Inter → Geist), because everyone flees to the same exit.

## Gate every rule on surface type

- **Brand surfaces** (marketing, landing, editorial): judge on distinctiveness and voice. Require personality. Cover-the-logo applies hardest here.
- **Product surfaces** (app, dashboard, data-dense): judge on legibility, density, state clarity. Don't over-personalize (decorative hero, bounce motion, serif accents) — that's its own slop.

On conflict, surface goal wins: legibility/density/state on product, distinctiveness/voice on brand. Apply untagged rules to both.

## Method

1. Output tokens first as real config, not a note: brand color ramp, one display + one body typeface (different faces, picked for the voice), a radius scale, one shadow language, a spacing rhythm. Per element commit to shadow OR border, never both. Wire into Tailwind config / CSS vars; treat per-component literals as a defect.
2. No brand yet? Invent it in three lines before any CSS: an adjective pair plus its opposite (precise, not playful); a real-world reference the domain evokes (lab instrument, transit signage, receipt paper — never a UI library) to set color and type tone; one anchor color (hex) tied to those. Those three lines are the brand.
3. Vary deliberately: card size by importance, spacing tight-within-groups and loose-between, radius for hierarchy. Sameness is the tell.
4. Real assets only: product screenshots, real numbers, real copy. Ship no placeholders live.

## Banned

Reads machine-made on sight. Holds on both surfaces unless a split is noted inline.

Visual:
- Purple/violet→blue "blurple" or indigo-500 gradient as primary accent or hero background without a brand reason. (`bg-indigo-500` Tailwind demo default seeded it; Wathan 2025.)
- Side-tab or thick colored accent border on a card, worst at large radius where the stripe fights the corner. Drop the border or the radius.
- Rounded-square icon tile above a heading, repeated in a uniform 3-column card grid: the universal AI feature-card template. Put the icon inline, or vary the cards. (Brand surfaces only; on product a uniform card grid is legitimate — the tell is the rounded-square-icon-above-heading, not the grid.)
- Hairline border plus a wide soft ~0.1-opacity shadow on the same card. Commit to one.
- Gradient text (`background-clip:text`) on headings or metric numbers. A tell, and usually a contrast bug.
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

Slop when reflexive, legitimate when the brand earns it. A tell when it's the un-chosen default.

- Default fonts reached for by reflex: Inter, Geist, Space Grotesk, Instrument-Serif-italic accent, Bricolage, Satoshi. The tell is the default, not the glyph; any can be brand-correct. **Never ship a banned-font list.** Pick type for the voice, pair two distinct faces, justify the choice.
- Serif-italic accent word in an otherwise-sans hero ("we make *beautiful* software"). Strong empirical tell. A real type system can earn one expressive face; the lone cosmetic-italic word can't.
- Glassmorphism or frosted translucency. Keep for true overlay layers (modal, nav over media); slop as decoration or glass-on-glass. Verify contrast over the blur.
- Aurora or mesh-gradient hero; dark-mode neon glow box-shadows. Avoid as animated decorative filler; a static, off-palette, low-contrast field can be intentional.
- Cream/beige warm-minimalist palette; dark + mono + green terminal hero. Current escape hatches, already converging into the next default. Derive from brand instead.
- Bento grid as the reflexive "show all features" layout. Keep when tiles genuinely differ in weight; slop as uniform equal-weight tiles.
- Extreme or uniform border-radius (24px+ on small cards; the same radius on everything). Use radius variation as a hierarchy tool.
- Off-the-shelf effect components dropped in unchanged: Aceternity or Magic UI bento, Sparkles, Border Beam, Aurora; Lucide "AI magic" icons (Sparkles, Wand2, Bot). Restyle or replace.
- Bounce, elastic, or overshoot easing; fade-in on everything. Motion must communicate state or causality; delete any that loses no meaning when removed. Otherwise keep it fast, ease-out, physically plausible.
- AI stock imagery: 3D abstract blobs, neon orbs in space, golden-hour gradient photos, generic isometric illustrations. Use real assets.
- Unfinished defaults shipped live: lorem ipsum, default favicon, default OG image, default page `<title>`, placeholder avatars. A loud generated-vs-human signal.
- Cookie-cutter section rhythm: every section the same height and scroll-depth, three blurbs of identical length. Vary section weight; let one feature go deep and others a line.
- Copy cadence tics: em-dash overuse (corroborating signal, never a verdict — humans use them; flag more than two per block used as a clause-splice crutch); contrastive negation ("not X, but Y"; "it's not just X, it's Y"; "stops being X, starts being Y"); manufactured-contrast section-closers ("It's not a tool. It's a teammate."); rule-of-three ("fast, simple, powerful"); round unattributed metrics ("10M+ users", "99.9% uptime"). Lead with what the thing is; use real, specific, attributable numbers.

## Reviewing for slop

- Run `npx impeccable detect <path|url>` first (deterministic, CI exit codes); triage its flags, then do the manual pass below. Catalog: impeccable.style/slop. Alt gate: Hallmark (github.com/nutlope/hallmark).
- Corroborate, don't single-fire. One shared trait isn't slop — good designers use serifs, gradients, em-dashes on purpose, so any single tell carries a real false-positive rate. Flag a cluster, then check intent.
- Give atomic fixes, not commentary. Map each finding to the exact change: "remove the left-border or the radius", "derive text color per surface", "name the job in the headline".
- Re-verify the tells as defaults shift; the lists are perishable, the cover-the-logo test is not (snapshot: mid-2026).

## References

Cite a named, cross-surface exemplar as the target when justifying voice, type, or layout:
- Stripe Press (stripe.press): editorial craft, bespoke 3D.
- Teenage Engineering (teenage.engineering): industrial, Rams-lineage voice.
- GOV.UK Design Principles (gov.uk/guidance/government-design-principles): constraint-driven doctrine.
- Are.na (are.na), Cosmos (cosmos.so): indie restraint.
- Bloomberg Businessweek (Turley era): editorial point of view.

Source fresh examples from SiteInspire / Awwwards / Minimal.gallery; galleries date fast, so steal structure, never copy.
