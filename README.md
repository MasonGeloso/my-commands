# Claude Code Custom Commands

Custom slash commands for managing multi-context development workflows with Claude Code.

## Workflow

### 1. Planning Phase
Record a voice note describing the feature/fix/plan, then run:

```
/plan
```

**What it does:** Researches the codebase, identifies patterns and utilities, writes a detailed plan to `./tasks/{name}.md`, and includes unclear questions at the bottom for clarification.

**Next:** Answer any unclear questions in the plan file.

---

### 2. Context Management
When context fills up (~100%):

```
/wipe
```

**What it does:** Saves current context, learnings, and progress to the plan file, then generates a one-paragraph summary for reloading context later.

Then run:
```
/compact
/reload {paste the paragraph from /wipe}
```

**What it does:** `/compact` compresses conversation history. `/reload` restores context by reading the plan file and catching up on changes.

---

### 3. Execution Phase
Execute the plan with this constraint:

> "Execute the plan, but don't run anything—just tell me how to run and validate. Skip any testing."

Work through the plan, then manually validate each step. Repeat the wipe/reload cycle as context fills up during execution.

---

### 4. Quick Fixes

```
/fix
```

**What it does:** For one-off errors with clear error messages. Investigates the root cause, proposes a plan, then waits for approval before fixing.

---

### 5. Pre-Commit Check

```
/diff-check
```

**What it does:** Reviews `git diff` for bugs, removed functionality, anti-patterns, hardcoded secrets, and outdated documentation before committing.

---

### 6. Periodic Cleanup

```
/clean
```

**What it does:** Audits the entire codebase for non-DRY code, anti-patterns, and questionable implementations. Generates a cleanup report for refactoring.

---

## Command Reference

| Command | Purpose |
|---------|---------|
| `/plan` | Research and create detailed implementation plan with unclear questions |
| `/wipe` | Save context before memory wipe, generate reload instructions |
| `/reload` | Restore context from saved plan and instructions |
| `/fix` | Investigate and propose fix for specific errors |
| `/diff-check` | Pre-commit review for bugs, secrets, anti-patterns |
| `/clean` | Generate codebase cleanup report |
