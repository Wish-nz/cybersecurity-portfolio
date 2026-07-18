# Security Audits

This folder contains security audit reports, checklists, and supporting documentation for the cybersecurity portfolio.

Guidelines:
- Add one audit per subfolder or file, named clearly (e.g., "2026-07-internal-audit.md").
- Include scope, findings, remediation steps, and status in each audit.
- Keep sensitive data out of the repo; redact or summarize any confidential information.

---

## Quick summaries (written for recruiters / non-specialists)

Below is a short, easy-to-scan summary of each item in this folder with a link to the file. Each blurb explains what the document is, the main outcome, and the key skills demonstrated — written so someone without a security background can understand the value.

### Google Cybersecurity Certificate — coursework & portfolio activities
(Items here were created as part of the Google Cybersecurity Certificate. Labels show whether the item is a short module activity or a fuller lab/audit.)

- [Activity: Analysis of Network Hardening](Activity_Analysis_of_Network_Hardening.md) — Module activity
  - What it is: A concise risk assessment for a fictional social-media company after a data breach.
  - Main outcome: Prioritised three practical measures (MFA, patching, backups) and a phased implementation timeline.
  - Why it matters to hiring managers: Shows ability to assess risk, recommend pragmatic fixes, and plan rollouts that reduce business impact.

- [Activity: Analyze Network Attacks](Activity_Analyze_Network_Attacks_Report.md) — Module activity
  - What it is: An incident analysis of a web server outage caused by a SYN flood (Denial of Service) attack.
  - Main outcome: Identifies the attack type, explains how it disrupts service, and lists straightforward mitigations (SYN cookies, rate limiting, firewall rules).
  - Why it matters: Demonstrates incident triage, log interpretation, and actionable mitigations that keep services available.

- [Activity: Apply OS Hardening Techniques](Activity_Apply_OS_Hardening_Techniques.md) — Module activity
  - What it is: An incident report for a website compromised via brute force and injected JavaScript that pushed malware to visitors.
  - Main outcome: Documents the attack chain, root cause (weak/default credentials), and recommends concrete remediations (rate limiting, MFA, remove default passwords).
  - Why it matters: Shows practical hands-on analysis, secure-configuration knowledge, and clear remediation advice to reduce future risk.

- [Connect and Protect: Comprehensive Network Security Report](Connect_and_Protect_Module_Report.md) — Module report (Modules 1–3)
  - What it is: A broader learning-style report covering network fundamentals, protocols, common attacks, and defensive controls.
  - Main outcome: A structured guide on networking concepts and security controls with recommended best practices.
  - Why it matters: Good evidence of foundational knowledge and the ability to explain complex technical topics clearly to technical and non-technical audiences.

- [Reinforce system hardening and vulnerability defense Dialogue](Reinforce%20system%20hardening%20and%20vulnerability%20defense%20Dialogue) — Coach dialogue / transcript
  - What it is: A transcript of a guided coach dialogue focused on OS, network and cloud hardening techniques.
  - Main outcome: Covers patching, least privilege, MFA, segmentation, security groups, and investigative techniques — with concise Q&A-style explanations.
  - Why it matters: Demonstrates communication skills, domain knowledge, and the ability to explain security concepts in plain language.

- [Cybersecurity Incident Report: Network Traffic Analysis](cybersecurity-incident-report-network-traffic-analysis.md) — Module activity / incident report
  - What it is: A technical incident report focused on DNS/ICMP failures that caused a website outage.
  - Main outcome: Root cause analysis (port 53 unreachable), timeline of investigation steps taken, and immediate/short/long-term recommendations.
  - Why it matters: Shows diagnostic attention to detail and clear, prioritized recommendations for restoring service and preventing recurrence.

- [First security audit Lab (Barton Toys)](First%20security%20audit%20Lab.md) — Full lab / portfolio audit (Module 2 portfolio activity)
  - What it is: A full internal audit for a small business, including risk scoring, controls checklist, and prioritized recommendations.
  - Main outcome: Clear remediation roadmap (encrypt payment data, enforce least privilege, deploy backups and IDS/IPS) and a 0–90–180 day prioritisation.
  - Why it matters: Shows audit methodology, compliance awareness (PCI/GDPR), and project-minded prioritisation — exactly the sort of output an IT manager or hiring manager wants to see.

---

## Other portfolio work / external projects

(If you later add full client engagements or non-course projects, list them here. Currently the items above are part of the Google certificate or its portfolio activities.)

---

If you'd like, I can:
- Tweak wording to target a specific job (e.g., SOC analyst, security engineer, or security auditor),
- Add short one-line "skills" tags (e.g., Incident Response, Risk Assessment, Network Analysis) next to each entry, or
- Add direct links to example excerpts (snippets) from each report so recruiters can jump to the most relevant parts.
