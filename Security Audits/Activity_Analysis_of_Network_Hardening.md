# Activity: Analysis of Network Hardening
## Security Risk Assessment Report

### Overview

In this activity, you will be presented with a scenario about a social media organization that recently experienced a major data breach caused by undetected vulnerabilities. You will identify common network hardening tools that can be implemented to protect the organization's overall security, select specific vulnerabilities, and propose network hardening methods to address them.

Network hardening practices help organizations monitor potential threats and attacks on their network and prevent some attacks from occurring. Some hardening practices are implemented every day, while others are executed periodically, such as every other week or once a month. Understanding how to use network hardening tools and methods is essential for monitoring network activity and protecting organizational networks against various attacks.

---

## Scenario

You are a security analyst working for a social media organization. The organization recently experienced a major data breach, which compromised the safety of their customers' personal information, such as names and addresses. Your organization wants to implement strong network hardening practices that can be performed consistently to prevent attacks and breaches in the future.

After inspecting the organization's network, you discover four major vulnerabilities:

1. **Shared Employee Passwords**: The organization's employees share passwords
2. **Default Database Credentials**: The admin password for the database is set to the default
3. **Missing Firewall Rules**: The firewalls do not have rules in place to filter traffic coming in and out of the network
4. **No Multi-Factor Authentication**: Multifactor authentication (MFA) is not used

If no action is taken to address these vulnerabilities, the organization is at risk of experiencing another data breach or other attacks in the future.

---

## Network Hardening Tools Reference

| Security Hardening Task | Description | Common Uses |
|---|---|---|
| **Baseline Configurations** | A documented set of specifications within a system that is used as a basis for future builds, releases, and updates | To restore a system to a previous baseline after a network outage, or unauthorized changes on a baseline |
| **Configuration Checks** | Updating the encryption standards for data that is stored in databases | To see if there are any unauthorized changes to the system |
| **Disabling Unused Ports** | Ports can be blocked on firewalls, routers, servers, and more to prevent potentially dangerous network traffic from passing through | Before an incident occurs, to prevent malicious actors from entering the network through the open port. Can be used after an incident to prevent future attacks from happening through unused open ports |
| **Encryption Using Latest Standards** | Rules or methods used to conceal outgoing data and uncover or decrypt the incoming data | Can be implemented regularly to assess if current encryption standards are secure and effective. Standards can also be updated after a data breach |
| **Firewall Maintenance** | Firewall maintenance entails checking and updating security configurations regularly to stay ahead of potential threats | Can happen regularly. Firewall rules can be updated in response to an event that allows abnormal network traffic into the network. Can be used to protect against various DDoS attacks |
| **Hardware & Software Disposal** | Ensures that all old hardware is properly wiped of all data and disposed of | Prevent the network from various threats by removing outdated or unused software or hardware that do not have the latest security patches or updates. Unpatched devices can allow malicious actors to easily access the network |
| **Multifactor Authentication (MFA)** | A security measure which requires a user to verify their identity in two or more ways to access a system or network. MFA options include password, PIN, badge, one-time password (OTP), fingerprint, and more | Can help protect against brute force attacks and similar security events. MFA can be implemented at any time and is mostly a technique that is set up once then maintained |
| **Network Access Privileges** | Involves permitting, limiting, and/or blocking access privileges to network assets for people, roles, groups, IP addresses, MAC addresses, etc. | Reduces the risk of unauthorized users and outside traffic from accessing the internal network. Can be implemented once or revisited depending on the likelihood of social engineering or brute force attacks |
| **Network Log Analysis** | The process of examining network logs to identify events of interest | Can be configured to alert the security team when there is abnormal traffic on the network. Can be used before an incident, during to track network traffic, and after a cybersecurity attack. A common tool used is a SIEM |
| **Password Policies** | The NIST latest recommendations for password policies focus on using methods to salt and hash passwords, rather than requiring overly complex passwords or enforcing frequent changes | Used to prevent attackers from easily guessing user passwords, either manually or by using brute force attacks |
| **Patch Updates** | A software and operating system (OS) update that addresses security vulnerabilities within a program or product | Patch updates often contain fixes to security problems. It is important to keep systems up to date because attackers are alerted to vulnerabilities when patches are released |
| **Penetration Test (Pen Test)** | A simulated attack that helps identify vulnerabilities in systems, networks, websites, applications, and processes | Used to protect and prevent against potential attacks |
| **Port Filtering** | A firewall function that blocks or allows certain port numbers to limit unwanted communication | Used to control network traffic and can prevent potential attackers from entering a private network |
| **Removing or Disabling Unused Applications and Services** | Unused applications and services can become a point of vulnerability because they are less likely to be maintained or updated with new security features | Used to reduce potential vulnerabilities within a network |
| **Server and Data Storage Backups** | Server and data storage backups help protect data assets from being lost. Backups can be recorded and stored in a physical location or uploaded to a cloud repository | Used to restore lost data from attacks, human error, equipment failures, and other unplanned losses |

---

## Part 1: Selected Hardening Tools and Methods

Based on analysis of the identified vulnerabilities and organizational risk profile, the following three hardening tools and methods are the ones I recommended as the highest priority implementations:

1. **Multifactor Authentication (MFA)**
2. **Patch Updates**
3. **Server and Data Storage Backups**

---

## Part 2: Detailed Recommendations

### 1. Multifactor Authentication (MFA) — Securing Identity and Access

#### The Strongest First Line of Defense

Compromised credentials—whether stolen, weak, or brute-forced passwords—are the leading cause of unauthorized access to organizational systems and networks. MFA blocks up to 99% of bulk credential-based attacks by requiring users to verify their identity in two or more ways before gaining access to sensitive systems and data.

This directly addresses two of the identified vulnerabilities:
- **Shared Employee Passwords**: Even if passwords are shared or compromised, MFA ensures attackers cannot gain access without the second factor
- **No MFA Implementation**: The organization currently has no MFA controls in place

#### High Security Return on Investment (ROI)

MFA is highly effective, relatively easy to deploy across an organization, and provides an immediate, massive upgrade to overall security posture. The implementation can be phased to prioritize critical systems and administrative accounts first.

#### Supports Strong Password Policies

While having strong password policies is important, MFA ensures that even if an attacker successfully guesses, steals, or brute-forces a password, they still cannot gain access to your network or systems without possessing the second authentication factor.

#### Implementation Approach

- **Phase 1 (Immediate)**: Implement MFA for all administrative accounts, database administrators, and VPN access
- **Phase 2 (30 days)**: Roll out MFA to all employee accounts
- **Phase 3 (Ongoing)**: Maintain and monitor MFA token distribution and usage patterns
- **Authentication Factors to Deploy**:
  - Primary: Passwords with strong policy requirements
  - Secondary Options: One-time passwords (OTP), hardware tokens, biometric authentication, or authenticator applications

---

### 2. Patch Updates — Eliminating Known Vulnerabilities

#### Closing Exploitation Windows

Attackers actively scan networks for known, unpatched software vulnerabilities. Regularly applying patch updates is the single most effective way to close these security gaps before malicious actors can exploit them.

When security patches are released, attackers immediately begin targeting organizations that have not yet applied the patches. This creates a critical window where systems are vulnerable to known exploits.

#### Proactive Defence

Before any incident occurs, it is essential to establish a robust patch management program. This prevents malicious actors from entering the network through exploitable vulnerabilities in outdated software.

#### Addressing Outdated Assets

Patch updates directly mitigate risks associated with older software or hardware that may no longer have active security support from vendors. Keeping operating systems and applications updated prevents automated malware and ransomware from establishing a foothold, reducing the burden on reactive measures like network log analysis and incident response.

#### Implementation Strategy

- **Establish a Patch Management Policy**:
  - Critical security patches: Apply within 48 hours of release
  - High-priority patches: Apply within 1 week
  - Standard patches: Apply within 30 days
  
- **Inventory Management**:
  - Maintain a complete software and hardware inventory across the network
  - Track vendor support timelines and patch release dates
  - Identify legacy systems that require extended support or replacement
  
- **Testing and Deployment**:
  - Test patches in a controlled environment before production deployment
  - Deploy patches during maintenance windows to minimize business disruption
  - Maintain rollback procedures in case patches cause compatibility issues
  
- **Monitoring and Verification**:
  - Verify that patches have been successfully deployed across all systems
  - Monitor systems for any unusual behavior following patch deployment
  - Maintain detailed logs of all patch installations

---

### 3. Server and Data Storage Backups — Ensuring Resilience and Recovery

#### The Ultimate Safety Net

No security defence is 100% foolproof. In the event of a successful ransomware attack, severe malware infection, hardware failure, or human error, backups are your only guarantee of recovering lost data and restoring business operations.

While all other hardening measures work to prevent attacks, backups serve as a critical last line of defence against data loss and extended downtime.

#### Ransomware Mitigation

Having secure, isolated backups neutralizes the leverage of ransomware attackers. Instead of paying a ransom demand (which does not guarantee data recovery), your organization can restore systems to a clean state from backups. This directly protects against one of the organization's most significant risks following the recent data breach.

#### Business Continuity

Regular backups ensure that your organization can quickly resume operations after a disruptive event, minimizing downtime and financial loss. In the context of a social media organization handling customer personal information, rapid recovery is critical to maintaining customer trust and compliance with data protection regulations.

#### Implementation Strategy

- **Backup Frequency**:
  - Daily backups for critical databases and customer information
  - Weekly backups for less frequently changed data
  - Monthly full system backups for disaster recovery purposes
  
- **Backup Storage Strategy**:
  - **3-2-1 Rule**: Maintain 3 copies of data, stored on 2 different media types, with 1 copy stored offsite
  - Primary: On-site backup servers for fast recovery
  - Secondary: Cloud-based backup repository for redundancy
  - Tertiary: Offline or geographically isolated storage for ultimate disaster recovery
  
- **Backup Security**:
  - Encrypt all backups using industry-standard encryption protocols
  - Restrict access to backup systems and restore procedures to authorized personnel only
  - Implement multi-factor authentication for backup access
  - Isolate backups from the main network to prevent ransomware from encrypting backup copies
  
- **Testing and Validation**:
  - Perform monthly restoration tests to verify backup integrity
  - Document recovery time objectives (RTO) and recovery point objectives (RPO)
  - Maintain detailed logs of all backup operations and restoration activities
  - Update disaster recovery procedures based on test results

---

## Part 3: Implementation Timeline and Considerations

### Immediate Actions (Weeks 1-2)

- **MFA**: Begin configuration and testing on administrative accounts
- **Patch Updates**: Conduct complete software and hardware inventory; prioritize critical security patches
- **Backups**: Assess current backup infrastructure; plan backup system upgrades if needed

### Short-Term Actions (Weeks 3-8)

- **MFA**: Complete rollout to all administrative and VPN access; begin employee deployment
- **Patch Updates**: Establish patch management policy; deploy critical and high-priority patches
- **Backups**: Implement 3-2-1 backup strategy; configure encrypted offsite backups

### Ongoing Actions (Months 3+)

- **MFA**: Complete rollout to all employees; maintain token distribution and monitor usage
- **Patch Updates**: Maintain regular patch deployment schedule; monitor vendor security advisories
- **Backups**: Perform monthly restoration tests; update policies as needed; monitor backup storage capacity

---

## Part 4: Addressing the Four Vulnerabilities

| Vulnerability | Primary Solution | Supporting Controls |
|---|---|---|
| **Shared Employee Passwords** | Implement MFA and strong password policies | Network access privileges, employee security training |
| **Default Database Credentials** | Change default password immediately + Implement MFA for database access | Patch updates, network access controls |
| **Missing Firewall Rules** | Implement firewall configuration and port filtering | Firewall maintenance, network log analysis |
| **No MFA Implementation** | Deploy MFA across all systems | Strong password policies, security awareness training |

---

## Part 5: Expected Security Outcomes

### Risk Reduction

By implementing these three primary controls, the organization can expect:

- **99% reduction** in credential-based attacks (MFA)
- **90%+ reduction** in exploitation of known vulnerabilities (Patch updates)
- **100% recovery capability** from ransomware and malware attacks (Backups)

### Compliance Benefits

These controls support compliance with:
- Payment Card Industry Data Security Standard (PCI DSS)
- General Data Protection Regulation (GDPR)
- Health Insurance Portability and Accountability Act (HIPAA)
- Industry security standards and best practices

### Operational Benefits

- Reduced incident response time
- Faster recovery from security incidents
- Improved employee confidence in system security
- Enhanced customer trust regarding data protection
- Reduced financial exposure from potential data breaches

---

## Conclusion

The three recommended hardening tools—Multifactor Authentication, Patch Updates, and Server and Data Storage Backups—form a comprehensive defence strategy that addresses the organization's immediate security vulnerabilities while building long-term resilience against future attacks.

**MFA** eliminates the primary attack vector (compromised credentials), **Patch Updates** close known security gaps, and **Backups** ensure business continuity and recovery capability. Together, these controls significantly reduce the organization's risk profile and provide the foundation for a mature, ongoing security hardening program.

Implementation of these controls, combined with regular maintenance and monitoring, will help prevent future data breaches and protect the organization's customers' personal information.

---

*Security Risk Assessment Report Completed*  
*Report Status: Final*  
*Analyst: Cybersecurity Team*  
*Date Prepared: [Current Date]*
