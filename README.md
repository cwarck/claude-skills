# cwarck-claude-skills

My daily-driver collection of Claude Code skills.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=for-the-badge)](LICENSE)

## Skills

| Skill | What it does |
|-------|-------------|
| `dialectic` | Dialectical reasoning — thesis, antithesis, synthesis. Stress-test positions, compare approaches, and argue both sides before committing. |

## Install

**Claude Code (marketplace):**
```shell
/plugin marketplace add cwarck/claude-skills
/plugin install thinking@cwarck-claude-skills
```

**Manual:**
```bash
git clone --depth 1 https://github.com/cwarck/claude-skills.git /tmp/cwarck-claude-skills
cp -r /tmp/cwarck-claude-skills/skills/dialectic ~/.claude/skills/dialectic
rm -rf /tmp/cwarck-claude-skills
```

## Usage

The skills activate automatically based on your prompt. Examples:

```
> dialectic: we should adopt a monorepo for all our microservices
> pros and cons of PostgreSQL vs MongoDB for user-generated content
> poke holes in this design
```

## Structure

```
skills/
└── dialectic/
    └── SKILL.md       ← dialectical analysis with parallel subagents
```

## License

MIT
