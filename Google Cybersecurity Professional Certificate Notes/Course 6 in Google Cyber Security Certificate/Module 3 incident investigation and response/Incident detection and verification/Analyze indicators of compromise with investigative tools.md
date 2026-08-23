Adding Context to Investigations

- Threat intelligence is evidence-based threat information that provides context about existing or emerging threats.
- By adding context to an IoC, security teams can develop a detailed picture of a security incident, helping them detect incidents faster and respond more effectively.

The Power of Crowdsourcing

- Crowdsourcing gathers information using public input and collaboration, allowing organizations to share and access threat intelligence data.
- Examples of information-sharing organizations include Information Sharing and Analysis Centers (ISACs) and Open-Source Intelligence (OSINT).

Investigative Tools

- **VirusTotal** is a service that analyzes suspicious files, domains, URLs, and IP addresses for malicious content, providing detailed reports.
- Other tools like Jotti malware scan, Urlscan.io, and MalwareBazaar also help analyze IoCs and share data with the security community.

https://www.virustotal.com/

Here is a breakdown of the reports summary:
1. **Detection**: The Detection tab provides a list of third-party security vendors and their detection verdicts on an IoC. For example, vendors can list their detection verdict as malicious, suspicious, unsafe, and more.
    
2. **Details**: The Details tab provides additional information extracted from a static analysis of the IoC. Information such as different hashes, file types, file sizes, headers, creation time, and first and last submission information can all be found in this tab.
    
3. **Relations**: The Relations tab provides related IoCs that are somehow connected to an artifact, such as contacted URLs, domains, IP addresses, and dropped files if the artifact is an executable.
    
4. **Behavior**: The Behavior tab contains information related to the observed activity and behaviors of an artifact after executing it in a controlled or sandboxed environment. This information includes tactics and techniques detected, network communications, registry and file systems actions, processes, and more.
    
5. **Community:** The Community tab is where members of the VirusTotal community, such as security professionals or researchers, can leave comments and insights about the IoC.
    
6. **Vendors’ ratio and community score**: The score displayed at the top of the report is the vendors’ ratio. The vendors’ ratio shows how many security vendors have flagged the IoC as malicious overall. Below this score, there is also the community score, based on the inputs of the VirusTotal community. The more detections a file has and the higher its community score is, the more likely that the file is malicious.


