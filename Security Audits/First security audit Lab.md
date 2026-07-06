# Security Audit — Barton Toys

✅ Portfolio Activity: Conduct a security audit

*This is based on the Google Cybersecurity Certificate required activity (Module 2).* 

---

## Scenario

Barton Toys is a small U.S. business that develops and sells toys. Their single physical location serves as the main office, storefront, and warehouse. The IT manager has decided to perform an internal IT audit to maintain compliance and support business growth.

Your task: review the IT manager’s scope, goals, and risk assessment, then complete a controls and compliance checklist and provide prioritized recommendations.

---

## Scope & Goals

- **Scope:** Entire security program at Barton Toys — employee equipment, internal network, systems, software, data retention/storage, and legacy systems.
- **Goals:** Assess existing assets, evaluate current controls and compliance, and identify improvements to strengthen security posture.

---

## Current Assets

- On-premises equipment (office needs)
- Employee equipment: desktops, laptops, smartphones, remote workstations, peripherals
- Storefront products (onsite & online) and adjoining warehouse
- Systems & services: accounting, telephony, database, security, e-commerce, inventory
- Internet access and internal network
- Data retention and storage
- Legacy systems (end-of-life) requiring human monitoring

---

## Risk Assessment (Summary)

- **Risk score:** 8 / 10 (high) — due to lack of controls and incomplete compliance.

Key findings:
- Broad employee access to internal data, including potential access to cardholder data and customer PII/SPII. ⚠️
- No encryption for locally stored/processed cardholder data. 🔓
- No enforced least privilege or separation of duties. 🚫
- Firewall and antivirus present; IDS missing. 🛡️
- No disaster recovery plan or backups. 🔁
- Weak password policy and no centralized password manager. 🔑
- Legacy systems monitored ad-hoc without a schedule. 🕰️
- Physical security (locks, CCTV, fire detection) is adequate. 🔒📹🔥

---

## Control Categories

- **Administrative / Managerial:** policies, procedures, roles/responsibilities
- **Technical:** firewalls, IDS/IPS, encryption, backups, AV, password management
- **Physical / Operational:** locks, CCTV, badge readers, lighting, signage

Control types: Preventative, Corrective, Detective, Deterrent

---

## Controls Assessment Checklist

Use this checklist to indicate whether Barton Toys currently has each control in place. Icons show control status (✅ = present, ❌ = missing).

| Status | Control | Notes |
|---:|---|---|
| ❌ | Least Privilege | Not implemented; all employees can access internal data. |
| ❌ | Disaster recovery plan | No plan or backups for critical data. |
| ✅ | Password policies | Policy exists but is weak (nominal requirements). |
| ❌ | Separation of duties | Not implemented. |
| ✅ | Firewall | Firewall is in place and filtering traffic. |
| ❌ | Intrusion detection system (IDS) | Not installed — recommend IDS/IPS. |
| ❌ | Backups | No regular, secure backups in place. |
| ✅ | Antivirus software | AV is installed and monitored. |
| ⚠️ | Manual monitoring & maintenance (legacy systems) | Performed ad-hoc; lacks schedule and documentation. |
| ❌ | Encryption | Cardholder data not encrypted at rest/transit. |
| ❌ | Password management system | No centralized password manager. |
| ✅ | Locks (office/store/warehouse) | Physical locks in place. |
| ✅ | CCTV surveillance | CCTV present and functioning. |
| ✅ | Fire detection & prevention | Fire alarms/sprinklers present and functioning. |

---

## Compliance Checklist

Mark whether Barton Toys currently adheres to each compliance best practice.

### Payment Card Industry Data Security Standard (PCI DSS)

| Status | Best practice | Notes |
|---:|---|---|
| ❌ | Only authorized users have access to customers’ credit card information | Employees may access cardholder data broadly. |
| ❌ | Cardholder data is processed & stored securely | Data is stored locally without required protections/encryption. |
| ❌ | Implement data encryption for payment data | Encryption is not in use for cardholder data. |
| ✅ | Adopt secure password management policies | A password policy exists but is weak; presence noted. |

### General Data Protection Regulation (GDPR)

| Status | Best practice | Notes |
|---:|---|---|
| ❌ | E.U. customers’ data is kept private/secured | Data protections are incomplete. |
| ✅ | 72-hour breach notification plan for E.U. customers | Notification plan exists. |
| ❌ | Ensure data is properly classified & inventoried | Asset/data inventory not established. |
| ✅ | Enforce privacy policies & procedures | Privacy processes exist and are enforced. |

### System and Organization Controls (SOC)

| Status | Best practice | Notes |
|---:|---|---|
| ✅ | User access policies established | Policies exist but access governance is weak. |
| ❌ | Sensitive data (PII/SPII) is protected/confidential | Access controls and encryption lacking. |
| ✅ | Data integrity controls in place | Data integrity is managed. |
| ✅ | Data availability for authorized users | Availability controls exist, though backups are needed. |

---

## Priority Recommendations (Action Plan)

1. 🔒 Immediate — Implement least privilege and separation of duties
   - Restrict access to systems and cardholder/PII data by role.
   - Enforce access approvals, periodic access reviews, and timely account revocation.

2. 🔐 Immediate — Encrypt payment and sensitive data
   - Apply encryption at rest and in transit for cardholder data and PII.
   - Implement robust key management and limit access to cryptographic keys.

3. ♻️ Short Term — Backups & Disaster Recovery
   - Implement secure, regular backups (offsite or cloud) and a tested DR plan.
   - Define RTO/RPO and test recovery procedures regularly.

4. 🛡️ Short Term — IDS/IPS and monitoring
   - Deploy IDS/IPS and integrate logs into centralized monitoring (SIEM).
   - Create alerting and incident response playbooks.

5. 🔑 Short Term — Strengthen passwords & deploy password manager
   - Increase password complexity and length; enable MFA for privileged accounts.
   - Deploy centralized password manager for shared/service accounts.

6. 📋 Medium Term — Asset & data classification
   - Inventory hardware, software, and datasets; classify by sensitivity and business impact.

7. 🧰 Medium Term — Formalize legacy system processes
   - Document maintenance schedules and intervention procedures for legacy systems.

8. ✅ Ongoing — Compliance mapping & audits
   - Map controls to PCI DSS, GDPR, and SOC; schedule regular internal/external audits.

---

## Judgement Calls / Notes

- Password policy exists but is insufficient — treat as partial control.
- Manual legacy-system monitoring occurs but lacks formal schedule/documentation.
- User access policies are present, but missing least privilege & separation of duties reduce effectiveness.
- Privacy/breach notification processes exist (GDPR), but missing protections (encryption, access controls) increase risk.

---

## Next Steps for IT Manager

1. Approve immediate access restriction and encryption projects. ⚠️
2. Procure and deploy a backup solution and schedule disaster recovery tests. 🔁
3. Plan IDS/IPS and centralized logging with alerting and response. 🛡️
4. Update password policy, enable MFA, and deploy a password manager. 🔑
5. Start an asset & data inventory initiative to support NIST CSF Identify. 📋

---

*Prepared as a reformatted, professional audit checklist and recommendations for Barton Toys.*
