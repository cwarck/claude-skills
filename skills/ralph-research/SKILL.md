---
name: ralph-research
description: Research phase for Ralph Loop — study a codebase and produce per-topic spec files plus a SPECS.md overview.
---

Study every file in $ARGUMENTS (if no path was provided, study the entire repository), and make specifications with each domain topic (including technical topics) as a separate markdown file in "specs/" directory. Link the implementation as citations in the specification.

Create a "SPECS.md" in the root of the directory which is an overview document that contains a table that links to all the specs.
