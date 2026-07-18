# Use the NIST Cybersecurity Framework to respond to an ICMP DoS incident

## Portfolio activity: NIST CSF applied to an ICMP flood (DoS)

Activity Overview

I used a realistic denial of service scenario to show that I can apply the NIST Cybersecurity Framework in practice, not just in theory. In this activity I took a common network failure — an ICMP flood that knocked out internal services because a firewall was left open — and broke it down using the NIST CSF functions: Identify, Protect, Detect, Respond, and Recover.

I used the scenario to:
- Describe the incident clearly in business terms: what happened, why it happened, and how it affected operations.
- Identify the technical root cause and broader organizational risks (firewall configuration, asset inventory, monitoring gaps).
- Propose concrete protection measures such as firewall rules, segmentation, policy changes, and staff training.
- Explain what monitoring and logging should look like so future attacks are detected quickly.
- Lay out a response plan covering containment, eradication, communication, and lessons learned.
- Show structured recovery steps and post-incident reviews that improve resilience over time.

In short: the activity demonstrates the ability to convert a specific network security event into a complete, understandable incident report and improvement plan that non-security stakeholders can follow, using the NIST CSF as the guiding structure.

---

## Scenario

You are a cybersecurity analyst working for a multimedia company that offers web design services, graphic design, and social media marketing. The organization experienced a DoS attack that disrupted internal network services for approximately two hours.

During the attack, the network became unresponsive because of a flood of ICMP echo requests. Normal internal traffic could not access network resources. The incident team blocked incoming ICMP packets, shut down non-critical services, and restored critical services to maintain basic operations.

Investigation found that the attack used an unconfigured firewall rule that allowed unbounded inbound ICMP from the internet. The attacker exploited this to flood internal resources.

Remediations implemented during and after the incident included:
- A firewall rule to rate-limit incoming ICMP packets
- Source IP verification on the firewall to reduce spoofed ICMP traffic
- Network monitoring to detect abnormal traffic patterns
- IDS/IPS rules to filter suspicious ICMP traffic

---

## Incident report analysis (NIST CSF mapping)

### Summary

The organization experienced an ICMP flood (DoS) that overwhelmed internal networking equipment and services for about two hours. The root cause was a perimeter firewall configuration that allowed excessive ICMP traffic from the internet. Business impact included outages affecting production systems and service disruption for client work.

### Identify

- Attack type: ICMP flood (DoS)
- Affected assets: core switches/routers, internal application servers, DNS, authentication systems
- Root cause: perimeter firewall misconfiguration and lack of regular configuration review
- Risk areas: missing network documentation, absent baselined traffic profiles, inadequate change control for firewall rules

### Protect

Recommended protection controls:
- Enforce firewall change control and regular rule reviews (approval + testing)
- Default-deny for non-essential protocols; allow ICMP only where explicitly required and instrumented
- Apply ICMP rate limiting at the perimeter and on internal chokepoints
- Adopt network segmentation so critical systems are shielded from publicly exposed segments
- Harden device management (use just-in-time admin access, MFA for management consoles)
- Increase staff training on secure firewall management and pre-deployment checks

### Detect

Detection improvements:
- Deploy continuous network monitoring and traffic baselining (collect flow data and packet samples)
- Tune IDS/IPS to detect ICMP floods, spoofed IPs, and anomalous flow patterns
- Centralize logs (firewalls, switches, servers, IDS) into SIEM with meaningful alerts for volumetric anomalies
- Schedule regular detection exercises and tune alert thresholds to minimize false positives while ensuring visibility of large-scale attacks

### Respond

Response playbook highlights:
- Immediate containment: implement perimeter rate-limiting or block offending protocols/sources, isolate affected segments
- Prioritise restoring services by business criticality; bring key infrastructure online first
- Collect forensic evidence: firewall rules, flow logs, packet captures, IDS alerts, and a timeline of changes/actions
- Communication: notify stakeholders (IT leadership, affected business units, customers if required) with clear status updates
- Short-term eradication: remove insecure/temporary rules, validate source filtering, block/sinkhole confirmed malicious IPs
- Lessons learned: update firewall baselines, detection rules, and run tabletop exercises

### Recover

Recovery steps:
- Ensure perimeter and core network devices are stable and not seeing attack traffic
- Restore services in priority order, validate functional and performance tests
- Use configuration backups to verify device state and restore safe configurations where needed
- Conduct a formal post-incident review and update NIST CSF documentation (Identify/Protect/Detect/Respond/Recover) with measurable follow-ups

---

## Reflections

This incident reinforces the need for secure-by-default settings on perimeter devices, continuous monitoring for volumetric attacks, and formal controls around firewall changes. Applying the NIST CSF end-to-end converts a single operational incident into a repeatable improvement program that increases resilience and reduces future business impact.

---

**Skills demonstrated**: Incident Response, Network Analysis, NIST CSF, Firewall Management, IDS/IPS tuning, SIEM/logging, Incident Communication
