# Plan Time

You are given a task. Your job is to form a well researched plan for it.
Remember to read through the docs, check for utils that exist, do web research if needed, etc.

## Steps

-   Heavily research the codebase. You are looking for patterns, norms, opinionated logic, etc.
-   Pull as much context you possible as it relates to completing the task.
-   Write all your findings, context and plan to a markdown file in the ./tasks directory
-   Re-read your plan markdown file file with a critical lens
-   Re-research the codebase but look in _new_ areas you hadn't previously looked and start finding holes or issues with the plan
-   Revise your plan with your findings

## Rules

-   Do not introduce anti-patterns
-   Do not duplicate logs that already exists (IE creating utils, services, stores that already exist)
-   Do not add comments - If something needs explaining, add a comment _block_ - Do not add comments on _what_ is happening, add comments on _why_ it is happening
-   Do not try to run things after you finish, I will test and validate your work
-   Always add to the plan to include imports at the top of the file not inline
-   At the end of the plan, include a section titled "## Unclear Questions" with any fuzzy or unclear questions that need to be answered before execution
