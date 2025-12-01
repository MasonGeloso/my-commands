# Makefile

COMMANDS_DIR := commands
CLAUDE_DIR := $(HOME)/.claude/commands

.PHONY: copy-commands install-commands

copy-commands:
	mkdir -p $(COMMANDS_DIR)
	cp -v $(CLAUDE_DIR)/*.md $(COMMANDS_DIR)/

install-commands:
	mkdir -p $(CLAUDE_DIR)
	cp -v $(COMMANDS_DIR)/*.md $(CLAUDE_DIR)/
