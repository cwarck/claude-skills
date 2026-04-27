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
| `commit` | Create a git commit following the Conventional Commits spec. |
| `dialectic` | Dialectical reasoning — thesis, antithesis, synthesis. Stress-test positions, compare approaches, and argue both sides before committing. |
| `ralph-research` | Research phase for Ralph Loop — study a codebase and produce per-topic spec files plus a SPECS.md overview. |
| `ralph-plan` | Plan phase for Ralph Loop — analyze a new requirement and write specs into the `specs/` directory. |
| `ralph-build` | Build phase for Ralph Loop — implement the next unimplemented spec, write tests, and commit. |
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
cp -r /tmp/cwarck-agents/skills/ralph-research ~/.claude/skills/ralph-research
cp -r /tmp/cwarck-agents/skills/ralph-plan ~/.claude/skills/ralph-plan
cp -r /tmp/cwarck-agents/skills/ralph-build ~/.claude/skills/ralph-build
cp -r /tmp/cwarck-agents/skills/roast ~/.claude/skills/roast
rm -rf /tmp/cwarck-agents
```

## Usage

Skills activate automatically based on your prompt. Examples:

```
> dialectic: we should adopt a monorepo for all our microservices
> pros and cons of PostgreSQL vs MongoDB for user-generated content
> poke holes in this design
> roast: this PR diff
> don't hold back on my architecture doc
```
