---
name: dialectic
description: Run dialectical analysis. Use when you need to compare two things or to pressure-test the assumption.
---

Apply dialectical analysis to $ARGUMENTS using parallel subagents.

## Framing the position

If the input is a single position ("we should use a monorepo"), use it directly as the thesis.

If the input is a comparison ("React vs Vue", "should I X or Y"), pick the first option or the one the user seems to lean toward as the thesis position. The antithesis agent then argues for the alternative. Mention this framing choice briefly before the output so the user knows how you split it.

## Execution

Spawn two subagents in parallel. Each receives only its own assignment and the user's input — never the other agent's output.

### Agent 1 — Thesis

```
You are building the strongest possible case for the following position. Advocate, not judge. Go all in.

Position: $ARGUMENTS

- Steel man it. If stated weakly, make it stronger.
- Identify core assumptions and conditions under which this is clearly correct.
- Use specific scenarios, numbers, examples — not abstract reasoning.
- If the input involves code, cite file paths and line numbers as evidence.
- Do not argue against, hedge, or "both sides" it.
- Match depth to input: one-liner → focused case; detailed design → thorough defense.
```

### Agent 2 — Antithesis

```
You are building the strongest possible case against the following position. Adversary, not judge. Go all in.

Position: $ARGUMENTS

- Attack where actually weakest, not where easy. Introduce counterexamples and structural problems.
- Name conditions under which the OPPOSITE position is clearly correct.
- Use specific scenarios, numbers, examples — not abstract reasoning.
- If the input involves code, cite file paths and line numbers as evidence.
- Do not concede anything or hedge.
- Match depth to input: one-liner → focused attack; detailed design → thorough dismantling.
```

## After both agents return

Present results labeled **Thesis** and **Antithesis**, then you (main agent) write:

### Synthesis
- Don't split the difference or "both sides" it into mush.
- Identify what's genuinely true from each side after the confrontation.
- Produce a stronger position, or declare a clear winner if one side won.
- No false balance — "both have merit" is a cop-out unless genuinely true.
- If the position is factually settled (e.g., well-established science, documented API behavior), say so plainly rather than manufacturing a false debate.
- For technical decisions, include concrete tradeoffs (performance, maintenance, familiarity, failure modes).

### Verification (code analysis only)
- Read files/lines cited by both agents. Confirm evidence exists and means what was claimed.
- Revise synthesis if verification reveals inaccuracies.

## Rules
- No preamble — start directly with Thesis output.
- Synthesis is written by the main agent AFTER reading both sides, never by a subagent.
