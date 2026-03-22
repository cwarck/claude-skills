# cwarck-claude-skills

My daily-driver collection of Claude Code skills.

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
/plugin marketplace add cwarck/claude-skills
/plugin install skills@cwarck-claude-skills
```

**Manual:**
```bash
git clone --depth 1 https://github.com/cwarck/claude-skills.git /tmp/cwarck-claude-skills
cp -r /tmp/cwarck-claude-skills/skills/commit ~/.claude/skills/commit
cp -r /tmp/cwarck-claude-skills/skills/dialectic ~/.claude/skills/dialectic
cp -r /tmp/cwarck-claude-skills/skills/ralph-research ~/.claude/skills/ralph-research
cp -r /tmp/cwarck-claude-skills/skills/ralph-plan ~/.claude/skills/ralph-plan
cp -r /tmp/cwarck-claude-skills/skills/ralph-build ~/.claude/skills/ralph-build
cp -r /tmp/cwarck-claude-skills/skills/roast ~/.claude/skills/roast
rm -rf /tmp/cwarck-claude-skills
```

## Usage

The skills activate automatically based on your prompt. Examples:

```
> dialectic: we should adopt a monorepo for all our microservices
> pros and cons of PostgreSQL vs MongoDB for user-generated content
> poke holes in this design
> roast: this PR diff
> don't hold back on my architecture doc
```
