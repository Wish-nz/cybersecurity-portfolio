Indicators of Compromise (IoCs) vs. Indicators of Attack (IoAs)

- **Indicators of Compromise (IoCs)** are observable pieces of evidence that suggest a security incident has already occurred, such as a specific filename associated with malware.
- **Indicators of Attack (IoAs)** are observed events that indicate a real-time incident, focusing on the attacker's behavior, methods, and intentions.

The Pyramid of Pain

- The Pyramid of Pain illustrates the relationship between IoCs and the difficulty malicious actors face when these indicators are blocked by security teams.
- Blocking IoCs higher up the pyramid (e.g., Tactics, Techniques, and Procedures) makes it significantly harder for attackers to continue their activities.

Types of Indicators of Compromise

- **Hash Values, IP Addresses, and Domain Names:** These are relatively easy for attackers to change, making them less painful to block.
- **Network Artifacts, Host Artifacts, and Tools:** These are more difficult for attackers to alter, causing more pain when blocked.
- **Tactics, Techniques, and Procedures (TTPs):** These represent the attacker's behavior and are the hardest to detect and block, causing the most pain to attackers.