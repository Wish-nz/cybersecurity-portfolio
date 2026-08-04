# Incident Handler Journal

Purpose
- A private (or redacted-public) journal of incident investigations, timelines, and lessons learned.
- Use this directory to keep structured incident reports and an ongoing log of response activities.

Filename convention
- Use `YYYY-MM-DD-<short-title>.md` for incident files, e.g. `2026-07-18-phishing-click-through.md`.
- Include status in the front matter: `draft | triaged | resolved | archived`.

Template for an incident entry
- Title: Short descriptive title
- Date: YYYY-MM-DD
- Status: draft / triaged / in-progress / resolved / archived
- Summary: 2–3 sentence overview
- Scope: impacted systems/services
- Timeline: bullet list of timestamps + actions
- Investigation: tools, logs reviewed, artifacts (hashes, IPs)
- Root cause: short technical explanation
- Remediation: immediate, short-term, long-term actions
- Post-incident actions: playbook updates, detection rules, training
- Notes: lessons learned, follow-ups, owners

Security note
- Redact any sensitive or customer-identifying data before committing to this repository.
