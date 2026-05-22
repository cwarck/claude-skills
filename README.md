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
| `roast` | Brutally honest, no-nonsense feedback on anything — code, ideas, designs, architecture, writing, plans. |

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
