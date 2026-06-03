.PHONY: claude codex

claude:
	@ln -sfn $(CURDIR)/AGENTS.md ~/.claude/CLAUDE.md
	@mkdir -p ~/.claude/skills
	@for d in $(CURDIR)/skills/*/; do n=$$(basename "$$d"); rm -rf ~/.claude/skills/$$n; ln -s "$$d" ~/.claude/skills/$$n; done

codex:
	@ln -sfn $(CURDIR)/AGENTS.md ~/.codex/AGENTS.md
	@mkdir -p ~/.codex/skills
	@for d in $(CURDIR)/skills/*/; do n=$$(basename "$$d"); rm -rf ~/.codex/skills/$$n; ln -s "$$d" ~/.codex/skills/$$n; done
