# Makefile

COMMANDS_DIR := commands
CLAUDE_DIR := $(HOME)/.claude/commands

.PHONY: copy-commands

copy-commands:
	mkdir -p $(COMMANDS_DIR)
	cp -v $(CLAUDE_DIR)/*.md $(COMMANDS_DIR)/

