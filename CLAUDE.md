# Claude Skills

A collection of Claude Code skills for daily use.

## Skills

- `commit` — Conventional Commits-style git commits
- `dialectic` — Dialectical reasoning: thesis, antithesis, synthesis
- `roast` — Brutally honest feedback on code, ideas, or designs

## Dev notes

- Skills live in `skills/<name>/`
- Each skill has a `skill.md` prompt file
- New skills go in their own directory under `skills/`
- After adding a new skill, register it in `.claude-plugin/marketplace.json` under `plugins[0].skills`, bump the plugin version, and list it in `README.md` — do this before committing
