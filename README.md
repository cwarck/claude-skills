# agents

Single repo for all my agentic stuff — skills, plugins, configs, and whatever else fits the agent workflow.

## What lives here

| Directory | Purpose |
|-----------|---------|
| `skills/` | Skills (see below). |
| `.claude-plugin/` | Plugin marketplace manifest. |

More categories (agents, prompts, MCP configs, etc.) get their own top-level directory as they show up.

## Skills

| Skill | What it does |
|-------|-------------|
| `dialectic` | Dialectical reasoning — thesis, antithesis, synthesis. Stress-test positions, compare approaches, and argue both sides before committing. |
| `grug` | Grug-lens simplicity audit — flags complexity, premature abstraction, over-engineering. No-bullshit filter for code, architecture, or ideas. |
| `roast` | Brutally honest, no-nonsense feedback on anything — code, ideas, designs, architecture, writing, plans. |
| `site-design` | Build or audit websites that don't look AI-generated — banned + avoid anti-patterns and actionable rules to kill the LLM-default look. |

## Install

**Claude Code (marketplace):**
```shell
/plugin marketplace add cwarck/agents
/plugin install skills@cwarck-claude-skills
```

**Manual:**
```bash
git clone --depth 1 https://github.com/cwarck/agents.git /tmp/cwarck-agents
cp -r /tmp/cwarck-agents/skills/commit ~/.claude/skills/commit
cp -r /tmp/cwarck-agents/skills/dialectic ~/.claude/skills/dialectic
cp -r /tmp/cwarck-agents/skills/roast ~/.claude/skills/roast
rm -rf /tmp/cwarck-agents
```
