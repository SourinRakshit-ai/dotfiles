# Model and Routing Rules
- **Grunt work:** Delegate all file searches, grep operations, log parsing, and boilerplate tasks to the `scout` subagent (`model: "haiku"`, `effort: "high"`).
- **Code writing:** Delegate all code implementation and modifications to the `coder` subagent (`model: "sonnet"`, `effort: "high"`), even when the main session runs on Opus.
- **Bug escalation:** If the `coder` subagent fails to fix a bug after two evidence-based attempts, escalate to the `escalate` subagent (`model: "opus"`, `effort: "high"`). Pass all prior context (logs, test results, and changed files) in the prompt.

# Skill and Formatting Rules
- Read and apply `~/.claude/skills/antislop/SKILL.md` to all prose, including replies, PR bodies, documentation, and UI copy.
- Read and apply `~/.claude/skills/frontend-design/SKILL.md` before writing any markup or styles.

# Code Review Rules
- Never use the built-in `code-review` skill.
- Before any PR or task completion, run an independent review by spawning a fresh `reviewer` subagent (`model: "inherit"`, `effort: "high"`).
- Brief the `reviewer` subagent with the diff/changed files and instruct it to check strictly for behavioral defects, missing cases, and security risks—not stylistic preferences.

# Pull Request Verification & Repo Hygiene
- Drive every affected page using DOM probes under exact production settings, including security policies (CSP) and hashed static files.
- Before declaring a feature "shipped," explicitly report:
  1. What was checked.
  2. What was found and fixed.
  3. What differs by design.
  4. The concrete evidence supporting readiness.
- Ensure absolutely nothing in the repository (tracked or untracked files, commit messages, PR descriptions, `.claude` directories, or config files) references Claude or the assistant. Never create a local `.claude` folder inside a project repository.