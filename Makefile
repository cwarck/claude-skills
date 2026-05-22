.PHONY: claude codex

claude:
	@ln -sfn $(CURDIR)/skills ~/.claude/skills
	@ln -sfn $(CURDIR)/AGENTS.md ~/.claude/CLAUDE.md

codex:
	@ln -sfn $(CURDIR)/skills ~/.codex/skills
	@ln -sfn $(CURDIR)/AGENTS.md ~/.codex/AGENTS.md
