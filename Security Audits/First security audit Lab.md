Portfolio Activity: Conduct a security audit

*This is from the Google Cybersecurity certificate required activity from the second module.

Scenario
 
Review the following scenario. Then complete the step-by-step instructions.
This scenario is based on a fictional company:
Barton Toys is a small U.S. business that develops and sells toys. The business has a single physical location, which serves as their main office, a storefront, and warehouse for their products. However, Barton Toy’s online presence has grown, attracting customers in the U.S. and abroad. As a result, their information technology (IT) department is under increasing pressure to support their online market worldwide. 
The manager of the IT department has decided that an internal IT audit needs to be conducted. She's worried about maintaining compliance and business operations as the company grows without a clear plan. She believes an internal audit can help better secure the company’s infrastructure and help them identify and mitigate potential risks, threats, or vulnerabilities to critical assets. The manager is also interested in ensuring that they comply with regulations related to internally processing and accepting online payments and conducting business in the European Union (E.U.).   
The IT manager starts by implementing the National Institute of Standards and Technology Cybersecurity Framework (NIST CSF), establishing an audit scope and goals, listing assets currently managed by the IT department, and completing a risk assessment. 
The goal of the audit is to provide an overview of the risks and/or fines that the company might experience due to the current state of their security posture.
Your task is to review the IT manager’s scope, goals, and risk assessment report. Then, perform an internal audit by completing a controls and compliance checklist. 

 

 
Barton Toys: Scope, goals, and risk assessment report

Scope and goals of the audit
Scope: The scope of this audit is defined as the entire security program at Barton Toys.
This includes their assets like employee equipment and devices, their internal network,
and their systems. You will need to review the assets Barton Toys has and the controls
and compliance practices they have in place.
Goals: Assess existing assets and complete the controls and compliance checklist to
determine which controls and compliance best practices that need to be implemented
to improve Barton Toys’ security posture.
Current assets
Assets managed by the IT Department include:
● On-premises equipment for in-office business needs
● Employee equipment: end-user devices (desktops/laptops, smartphones),
remote workstations, headsets, cables, keyboards, mice, docking stations,
surveillance cameras, etc.
● Storefront products available for retail sale on site and online; stored in the
company’s adjoining warehouse
● Management of systems, software, and services: accounting,
telecommunication, database, security, ecommerce, and inventory management
● Internet access
● Internal network
● Data retention and storage
● Legacy system maintenance: end-of-life systems that require human monitoring

Risk assessment
Risk description
Currently, there is inadequate management of assets. Additionally, Barton Toys does
not have all of the proper controls in place and may not be fully compliant with U.S. and
international regulations and standards.
Control best practices
The first of the five functions of the NIST CSF is Identify. Barton Toys will need to
dedicate resources to identify assets so they can appropriately manage them.
Additionally, they will need to classify existing assets and determine the impact of the
loss of existing assets, including systems, on business continuity.
Risk score
On a scale of 1 to 10, the risk score is 8, which is fairly high. This is due to a lack of
controls and adherence to compliance best practices.
Additional comments
The potential impact from the loss of an asset is rated as medium, because the IT
department does not know which assets would be at risk. The risk to assets or fines
from governing bodies is high because Barton Toys does not have all of the necessary
controls in place and is not fully adhering to best practices related to compliance
regulations that keep critical data private/secure. Review the following bullet points for
specific details:
● Currently, all Barton Toys employees have access to internally stored data and
may be able to access cardholder data and customers’ PII/SPII.
● Encryption is not currently used to ensure confidentiality of customers’ credit
card information that is accepted, processed, transmitted, and stored locally in
the company’s internal database.
● Access controls pertaining to least privilege and separation of duties have not
been implemented.
● The IT department has ensured availability and integrated controls to ensure
data integrity.
● The IT department has a firewall that blocks traffic based on an appropriately
defined set of security rules.
● Antivirus software is installed and monitored regularly by the IT department.

● The IT department has not installed an intrusion detection system (IDS).
● There are no disaster recovery plans currently in place, and the company does
not have backups of critical data.
● The IT department has established a plan to notify E.U. customers within 72
hours if there is a security breach. Additionally, privacy policies, procedures, and
processes have been developed and are enforced among IT department
members/other employees, to properly document and maintain data.
● Although a password policy exists, its requirements are nominal and not in line
with current minimum password complexity requirements (e.g., at least eight
characters, a combination of letters and at least one number; special
characters).
● There is no centralized password management system that enforces the
password policy’s minimum requirements, which sometimes affects productivity
when employees/vendors submit a ticket to the IT department to recover or
reset a password.
● While legacy systems are monitored and maintained, there is no regular
schedule in place for these tasks and intervention methods are unclear.
● The store’s physical location, which includes Barton Toys’ main offices, store
front, and warehouse of products, has sufficient locks, up-to-date closed-circuit
television (CCTV) surveillance, as well as functioning fire detection and
prevention systems.

 

 
Control categories

Controls within cybersecurity are grouped into three main categories:
● Administrative/Managerial controls
● Technical controls
● Physical/Operational controls
Administrative/Managerial controls address the human component of cybersecurity.
These controls include policies and procedures that define how an organization
manages data and clearly defines employee responsibilities, including their role in
protecting the organization. While administrative controls are typically policy based,
the enforcement of those policies may require the use of technical or physical controls.
Technical controls consist of solutions such as firewalls, intrusion detection systems
(IDS), intrusion prevention systems (IPS), antivirus (AV) products, encryption, etc.
Technical controls can be used in a number of ways to meet organizational goals and
objectives.
Physical/Operational controls include door locks, cabinet locks, surveillance cameras,
badge readers, etc. They are used to limit physical access to physical assets by
unauthorized personnel.
Control types
Control types include, but are not limited to:
1. Preventative
2. Corrective
3. Detective
4. Deterrent
These controls work together to provide defense in depth and protect assets.
Preventative controls are designed to prevent an incident from occurring in the first
place. Corrective controls are used to restore an asset after an incident. Detective
controls are implemented to determine whether an incident has occurred or is in
progress. Deterrent controls are designed to discourage attacks.
Review the following charts for specific details about each type of control and its
purpose.
Administrative/Managerial Controls


Administrative/Managerial Controls
Control Name	Control Type	Control Purpose
Least Privilege	Preventative	Reduce risk and overall impact of malicious insider or compromised accounts
Disaster recovery plans	Corrective
	Provide business continuity
Password policies	Preventative	Reduce likelihood of account compromise through brute force or dictionary attack techniques
Access control policies	Preventative	Bolster confidentiality and integrity by defining which groups can access or modify data
Account management policies	Preventative	Managing account lifecycle, reducing attack surface, and limiting overall impact from disgruntled former employees and default account usage
Separation of duties	Preventative	Reduce risk and overall impact of malicious insider or compromised accounts 






Technical Controls

Technical Controls
Control Name	Control Type	Control Purpose
Firewall
	Preventative	To filter unwanted or malicious traffic from entering the network
IDS/IPS	Detective	To detect and prevent anomalous traffic that matches a signature or rule
Encryption
	Deterrent	Provide confidentiality to sensitive information
Backups	Corrective	Restore/recover from an event
Password management	Preventative	Reduce password fatigue
Antivirus (AV) software	Preventative	Scans to detect and quarantine known threats
Manual monitoring, maintenance, and intervention	Preventative	Necessary to identify and manage threats, risks, or vulnerabilities to out-of-date systems








Physical/Operational Controls
Control Name	Control Type	Control Purpose
Time-controlled safe	Deterrent	Reduce attack surface and overall impact from physical threats
Adequate lighting	Deterrent	Deter threats by limiting “hiding” places
Closed-circuit television (CCTV)	Preventative/Detective	Closed circuit television is both a preventative and detective control because it’s presence can reduce risk of certain types of events from occurring, and can be used after an event to inform on event conditions
Locking cabinets (for network gear)	Preventative	Bolster integrity by preventing unauthorized personnel and other individuals from physically accessing or modifying network infrastructure gear 
Signage indicating alarm service provider	Deterrent	Deter certain types of threats by making the likelihood of a successful attack seem low
Locks	Deterrent/Preventative	Bolster integrity by deterring and preventing unauthorized personnel, individuals from physically accessing assets
Fire detection and prevention (fire alarm, sprinkler system, etc.)	Detective/Preventative	Detect fire in physical location and prevent damage to physical assets such as inventory, servers, etc.



Controls and compliance checklist

To complete the controls assessment checklist, refer to the information provided in the scope, goals, and risk assessment report. For more details about each control, including the type and purpose, refer to the control categories document.

Then, select “yes” or “no” to answer the question: Does Barton Toys currently have this control in place? 

Controls assessment checklist

Yes	No	Control
☐	☒	Least Privilege
☐	☒	Disaster recovery plans
☒	☐	Password policies
☐	☒	Separation of duties
☒	☐	Firewall
☐	☒	Intrusion detection system (IDS)
☐	☒	Backups
☒	☐	Antivirus software
☒	☐	Manual monitoring, maintenance, and intervention for legacy systems
☐	☒	Encryption
☐	☒	Password management system
☒	☐	Locks (offices, storefront, warehouse)
☒	☐	Closed-circuit television (CCTV) surveillance
☒	☐	Fire detection/prevention (fire alarm, sprinkler system, etc.)

________________________________________

To complete the compliance checklist, refer to the information provided in the scope, goals, and risk assessment report. For more details about each compliance regulation, review the controls, frameworks, and compliance reading.

Then, select “yes” or “no” to answer the question: Does Barton Toys currently adhere to this compliance best practice?

Compliance checklist

Payment Card Industry Data Security Standard (PCI DSS)
Yes	No	Best practice
☐	☒	Only authorized users have access to customers’ credit card information.
☐	☒	Credit card information is stored, accepted, processed, and transmitted internally, in a secure environment.
☐	☒	Implement data encryption procedures to better secure credit card transaction touchpoints and data.
☒	☐	Adopt secure password management policies.

General Data Protection Regulation (GDPR)
Yes	No	Best practice
☐	☒	E.U. customers’ data is kept private/secured.
☒	☐	There is a plan in place to notify E.U. customers within 72 hours if their data is compromised/there is a breach.
☐	☒	Ensure data is properly classified and inventoried.
☒	☐	Enforce privacy policies, procedures, and processes to properly document and maintain data.

System and Organizations Controls (SOC type 1, SOC type 2) 
Yes	No	Best practice
☒	☐	User access policies are established.
☐	☒	Sensitive data (PII/SPII) is confidential/private.
☒	☐	Data integrity ensures the data is consistent, complete, accurate, and has been validated.
☒	☐	Data is available to individuals authorized to access it.

________________________________________
This section is optional and can be used to provide a summary of recommendations to the IT manager regarding which controls and/or compliance best practices Barton Toys needs to implement, based on the risk posed if not implemented in a timely manner.
Recommendations (optional): In this section, provide recommendations, related to controls and/or compliance needs, that your IT manager could communicate to stakeholders to reduce risks to assets and improve Barton Toys’ security posture.
Recommendations to the IT Manager
Based on the scope, goals, risk assessment, and completed controls and compliance checklist, Barton Toys should prioritise reducing access, payment security, data protection, and business continuity risks. The current overall risk score is high because several key controls are either missing or only partially implemented. These gaps increase the likelihood of unauthorised access to customer data, disruption to business operations, and potential non-compliance with PCI DSS, GDPR, and SOC expectations.
Priority Recommendations
1.	Implement least privilege and separation of duties immediately. Barton Toys should restrict access to sensitive systems, cardholder data, and customer PII/SPII based on job role and business need. At present, all employees may be able to access internally stored data, which creates a significant confidentiality risk.
2.	Encrypt sensitive and payment-related data. Credit card information is currently accepted, processed, transmitted, and stored locally without encryption. Encryption should be applied to data at rest and in transit to reduce the risk of exposure and improve PCI DSS and GDPR compliance.
3.	Create and test a disaster recovery plan. Barton Toys does not currently have a disaster recovery plan or backups of critical data. The IT department should define recovery procedures, assign responsibilities, set recovery objectives, and test recovery processes regularly.
4.	Implement regular, secure backups. Critical business, customer, ecommerce, inventory, and financial data should be backed up on a defined schedule. Backups should be protected, tested, and stored separately from the main environment to support business continuity.
5.	Install an intrusion detection system or intrusion prevention capability. Although the firewall and antivirus software are in place, Barton Toys lacks detective monitoring for suspicious network activity. IDS/IPS capability would help detect anomalous traffic and support faster incident response.
6.	Strengthen password requirements and deploy a password management system. The existing password policy is weak and there is no centralised password management system to enforce complexity requirements. The organisation should require stronger passwords, reduce password reuse, and improve account recovery processes.
7.	Classify and inventory assets and data. Barton Toys needs a clearer view of which assets and data are critical, where they are stored, and who can access them. This supports the NIST CSF Identify function and will help reduce uncertainty around business impact and compliance exposure.
8.	Formalise legacy system monitoring and maintenance. Legacy systems are currently monitored and maintained, but the schedule and intervention methods are unclear. The IT department should document monitoring frequency, maintenance tasks, escalation steps, and eventual replacement planning.
Judgement Calls Noted in the Checklist
•	Password policies were marked “Yes”. A password policy does exist, so the control is present. However, the policy is not strong enough because its requirements are described as nominal and not aligned with current minimum complexity expectations. This should be treated as a partial control that needs immediate improvement.
•	Manual monitoring, maintenance, and intervention for legacy systems was marked “Yes”. The document states that legacy systems are monitored and maintained. However, there is no regular schedule and intervention methods are unclear. This should also be treated as a partial control requiring formal documentation and process improvement.
•	User access policies were marked “Yes” under SOC. Some user access policies appear to be established, but the lack of least privilege and separation of duties means access governance is incomplete. This creates a risk that sensitive data may still be accessible to users who do not require it.
•	Privacy policies and breach notification were marked “Yes” under GDPR. Barton Toys has a 72-hour E.U. customer breach notification plan and privacy processes in place. However, because customer data is not fully secured and data classification is incomplete, GDPR readiness remains limited.
Compliance-Focused Recommendations
For PCI DSS, Barton Toys should focus on limiting access to cardholder data, encrypting payment data, and ensuring payment information is processed and stored in a secure environment. For GDPR, the company should improve protection of E.U. customer data by completing data classification and inventory work, securing PII/SPII, and maintaining the existing breach notification process. For SOC readiness, Barton Toys should strengthen confidentiality controls by limiting access to sensitive data while continuing to maintain data integrity and availability controls.
Recommended Implementation Order
1.	Immediate: Restrict access to cardholder data and PII/SPII, strengthen password requirements, and begin encrypting sensitive data.
2.	Short term: Implement backups, develop a disaster recovery plan, deploy IDS/IPS capability, and classify critical assets and data.
3.	Medium term: Formalise legacy system monitoring, improve account and access governance, and review all compliance processes against PCI DSS, GDPR, and SOC expectations.
Overall, Barton Toys has some effective controls in place, including a firewall, antivirus software, physical locks, CCTV, fire detection/prevention, data integrity controls, and data availability controls. However, the organisation should address the missing and partial controls as a priority because they affect customer privacy, payment security, regulatory compliance, and business continuity.

