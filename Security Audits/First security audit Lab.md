# Security Audit — Barton Toys

![Risk: 8/10](https://img.shields.io/badge/Risk-8%2F10-red) ![PCI DSS](https://img.shields.io/badge/PCI_DSS-Non--Compliant-red) ![GDPR](https://img.shields.io/badge/GDPR-Partial--Compliant-yellow) ![SOC](https://img.shields.io/badge/SOC-Partial--Compliant-yellow)

✅ Portfolio Activity: Conduct a security audit — Google Cybersecurity Certificate (Module 2)

---

## Table of Contents

- [Scenario](#scenario)
- [Scope & Goals](#scope--goals)
- [Current Assets](#current-assets)
- [Risk Assessment (Summary)](#risk-assessment-summary)
- [Control Categories](#control-categories)
- [Controls Assessment Checklist](#controls-assessment-checklist)
- [Compliance Checklist](#compliance-checklist)
- [Priority Recommendations](#priority-recommendations)
- [Judgement Calls / Notes](#judgement-calls--notes)
- [Next Steps for IT Manager](#next-steps-for-it-manager)

---

## Scenario

Barton Toys is a small U.S. toy developer and retailer operating from a single site (office, storefront, and warehouse). The IT manager has initiated an internal IT audit to improve compliance and scale business operations securely.

Your task: review the scope, goals, and risk assessment; complete the controls and compliance checklists; and provide prioritized recommendations.

---

## Scope & Goals

- Scope: Entire Barton Toys security program — devices, network, systems, software, data, and legacy systems.
- Goals: Inventory assets, assess current controls and compliance, and identify prioritized improvements to reduce risk.

---

## Current Assets

- On-premises infrastructure and office equipment
- Employee devices (desktops, laptops, smartphones, peripherals)
- Storefront inventory (onsite & online) and warehouse
- Business systems: accounting, telephony, database, e-commerce, inventory, security
- Internet connectivity and internal network
- Data stores and retention systems
- Legacy systems requiring manual monitoring

---

## Risk Assessment (Summary)

- Risk score: **8 / 10** — elevated due to missing controls and incomplete compliance.

Key findings (concise):
- Broad employee access to internal data; cardholder data and PII/SPII exposure possible. ⚠️
- No encryption for locally processed/stored payment data. 🔓
- Least privilege and separation of duties not enforced. 🚫
- Firewall and AV present; no IDS/IPS. 🛡️
- No disaster recovery plan or tested backups. 🔁
- Weak password policy and no centralized password manager. 🔑
- Legacy systems monitored informally without schedule. 🕰️
- Physical security (locks, CCTV, fire systems) is adequate. 🔒📹🔥

---

## Control Categories

- Administrative/Managerial: policies, roles, access governance
- Technical: firewall, IDS/IPS, encryption, backups, AV, password management
- Physical/Operational: locks, CCTV, badge readers, lighting, signage

Control types: Preventative, Detective, Corrective, Deterrent

---

## Controls Assessment Checklist

Status icons: ✅ = present, ❌ = missing, ⚠️ = partial / needs improvement

| Status | Control | Notes |
|---:|---|---|
| ❌ | Least Privilege | Not implemented; broad access to internal data. |
| ❌ | Disaster recovery plan | Absent; no documented DR processes or recovery tests. |
| ✅ | Password policies | Policy exists but is weak and unenforced technically. |
| ❌ | Separation of duties | Not implemented. |
| ✅ | Firewall | Implemented and filtering traffic. |
| ❌ | Intrusion detection system (IDS/IPS) | Not installed — detective capability missing. |
| ❌ | Backups | No regular, protected backups for critical systems. |
| ✅ | Antivirus (AV) software | Installed and monitored. |
| ⚠️ | Manual monitoring & maintenance (legacy systems) | Performed ad-hoc; lacks schedule and documentation. |
| ❌ | Encryption (data at rest/in transit for cardholder data) | Not in use for payment data. |
| ❌ | Centralized password management system | Not deployed. |
| ✅ | Locks (office/store/warehouse) | Physical locks present. |
| ✅ | CCTV surveillance | Present and operational. |
| ✅ | Fire detection & prevention | Present and operational. |

---

## Compliance Checklist

Payment Card Industry Data Security Standard (PCI DSS)

| Status | Best practice | Notes |
|---:|---|---|
| ❌ | Only authorized users have access to cardholder data | Access is not restricted; scope unclear. |
| ❌ | Cardholder data processed/stored securely | Data stored locally without required protections. |
| ❌ | Implement encryption for payment data | Missing. |
| ✅ | Adopt secure password management policies | Policy exists but needs enforcement and stronger controls. |

General Data Protection Regulation (GDPR)

| Status | Best practice | Notes |
|---:|---|---|
| ❌ | E.U. customers’ data is kept private/secured | Controls incomplete; encryption/access controls missing. |
| ✅ | 72-hour breach notification plan | Notification process exists. |
| ❌ | Data classification & inventory | Not established. |
| ✅ | Privacy policies & procedures enforced | Processes documented and in use. |

SOC (System and Organization Controls)

| Status | Best practice | Notes |
|---:|---|---|
| ✅ | User access policies established | Policies present but governance gaps remain. |
| ❌ | Sensitive data (PII/SPII) protected/confidential | Technical protections insufficient. |
| ✅ | Data integrity controls | Integrity controls present. |
| ✅ | Data availability for authorized users | Availability exists; backups are needed for resilience. |

---

## Priority Recommendations

Structured, prioritized actions with expected impact.

Immediate (0–30 days)
- Implement least privilege and separation of duties: restrict access by role, enforce approvals, and schedule access reviews. 🔒
- Encrypt payment and sensitive data at rest and in transit; apply strong key management. 🔐
- Strengthen password policy and enable MFA for privileged accounts. 🔑

Short term (30–90 days)
- Deploy regular, secure backups and define/test a disaster recovery plan (define RTO/RPO). ♻️
- Install IDS/IPS and centralize logs into a SIEM or logging solution with alerting and response playbooks. 🛡️
- Deploy a centralized password management system for shared/service accounts. 🧰

Medium term (90–180 days)
- Inventory and classify assets and data; map critical assets to business impact. 📋
- Formalize legacy system maintenance schedules and intervention procedures. 🧭

Ongoing
- Map controls to PCI DSS, GDPR, and SOC; schedule regular internal and external audits. ✅

---

## Judgement Calls / Notes

- Password policy marked present but considered partial — technically unenforced and weak.
- Manual legacy-system monitoring exists but lacks documented frequency or response criteria.
- User access policies exist but are ineffective without least privilege and separation of duties.
- GDPR breach notification process exists but protective controls (encryption, access restrictions) are incomplete.

---

## Next Steps for IT Manager

1. Approve projects for access restrictions and payment-data encryption. ⚠️
2. Procure a backup solution and schedule DR tabletop and recovery tests. 🔁
3. Plan IDS/IPS + centralized logging and a SIEM pilot and define incident playbooks. 🛡️
4. Update password standards, enable MFA, and deploy a password manager. 🔑
5. Start asset & data inventory to support the NIST CSF Identify function. 📋

---

*Prepared and tightened for clarity, with GitHub-style badges, a Table of Contents, and static status indicators.*
