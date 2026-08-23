## Activity Overview

![](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/Cm9abXr9ReiTFP4gOwFOEQ_ae9efdb17b0b48b8bdb2c894aa63bbf1_Rh5zCccBVb7XAz_dCzc4qIaUUjBwvCGCc62BHP5cFHUIo94IHxB9YA75U-SCU9tIz98XgScfeLbYQLPvF9mDjx3zLdF2F5Zuu2pPC2U5velJx8n1QWxwDPpd6xEdwrEI5SQ8gJAg-EmutcRIjXuuk2o?expiry=1786057294498&hmac=xuib2G-M_mPXhuX0lpBo7DuZGy7UnQrKaSNrKkhwdek)

In this activity, you'll analyze an artifact using VirusTotal and capture details about its related indicators of compromise using the Pyramid of Pain.  

Previously, you were introduced to the concept of the Pyramid of Pain, which is used to understand the different types of **indicators of compromise** (**IoCs**). Remember, an IoC is observable evidence that suggests signs of a potential security incident. The Pyramid of Pain describes the relationship between IoCs and the level of difficulty that malicious actors experience when the IoCs are blocked by security teams.

VirusTotal is one of many tools that security analysts use to identify and respond to security incidents. **VirusTotal** is a service that allows anyone to analyze suspicious files, domains, URLs, and IP addresses for malicious content. Through crowdsourcing, VirusTotal gathers and reports on threat intelligence from the global cybersecurity community. This helps security analysts determine which IoCs have been reported as malicious. As a security analyst, you can take advantage of shared threat intelligence to learn more about threats and help improve detection capabilities. 

_**Important Note**__: Data uploaded to VirusTotal will be publicly shared with the entire VirusTotal community. Be careful of what you submit, and make sure you do not upload personal information._

## Scenario

![](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/sVjM4hZzT9G7Sxa17L7kTQ_6f06bc5517da4dc6841808db90de6ef1_ojik9kBbUo0T9mUCAcfCH7N7XFE1H8kFuvFXe8kyyx6zs-T0Ma9byzIHpaxdEJRqRvtOq3IACKba35VYfcAu5PDjstq0J4qzK_FVGdHEWFgdA0hLZ14_75hnrimpgoZIscJI79qCKU2-hNQ2u-QhGeY8iGXwX8EXRgYevDIpYAa7D3bm5giGYff_6Oykxg?expiry=1786057294498&hmac=skuahemaPM9wbeMhxLZLj1cXi2jqs-AyZf4C3oL5NK8)

Review the following scenario. Then complete the step-by-step instructions.

You are a level one security operations center (SOC) analyst at a financial services company. You have received an alert about a suspicious file being downloaded on an employee's computer. 

You investigate this alert and discover that the employee received an email containing an attachment. The attachment was a password-protected spreadsheet file. The spreadsheet's password was provided in the email. The employee downloaded the file, then entered the password to open the file. When the employee opened the file, a malicious payload was then executed on their computer.

You retrieve the malicious file and create a SHA256 hash of the file. You might recall from a previous course that a **hash function** is an algorithm that produces a code that can't be decrypted. Hashing is a cryptographic method used to uniquely identify malware, acting as the file's unique fingerprint. 

Now that you have the file hash, you will use VirusTotal to uncover additional IoCs that are associated with the file.

![](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/sVjM4hZzT9G7Sxa17L7kTQ_6f06bc5517da4dc6841808db90de6ef1_ojik9kBbUo0T9mUCAcfCH7N7XFE1H8kFuvFXe8kyyx6zs-T0Ma9byzIHpaxdEJRqRvtOq3IACKba35VYfcAu5PDjstq0J4qzK_FVGdHEWFgdA0hLZ14_75hnrimpgoZIscJI79qCKU2-hNQ2u-QhGeY8iGXwX8EXRgYevDIpYAa7D3bm5giGYff_6Oykxg?expiry=1786057294498&hmac=skuahemaPM9wbeMhxLZLj1cXi2jqs-AyZf4C3oL5NK8)


**SHA256 file hash:** 54e6ea47eb04634d3e87fd7787e2136ccfbcc80ade34f246a12cf93bab527f6b

Here is a timeline of the events leading up to this alert:

- **1:11 p.m.:** An employee receives an email containing a file attachment.
    
- **1:13 p.m.:** The employee successfully downloads and opens the file.
    
- **1:15 p.m.:** Multiple unauthorized executable files are created on the employee's computer.
    
- **1:20 p.m.:** An intrusion detection system detects the executable files and sends out an alert to the SOC.



1. **Detection:** This tab provides a list of third-party security vendors and their detection verdicts on an artifact. Detection verdicts include: malicious, suspicious, unsafe, and others. Notice how many security vendors have reported this hash as malicious and how many have not.
    
2. **Details**: This tab provides additional information extracted from a static analysis of the IoC. Notice the additional hashes associated with this malware like MD5, SHA-1, and more. 
    
3. **Relations**: This tab contains information about the network connections this malware has made with URLs, domain names, and IP addresses. The **Detections** column indicates how many vendors have flagged the URL or IP address as malicious.
    
4. **Behavior**: This tab contains information related to the observed activity and behaviors of an artifact after executing it in a controlled environment, such as a sandboxed environment. A sandboxed environment is an isolated environment that allows a file to be executed and observed by analysts and researchers. Information about the malware's behavioral patterns is provided through sandbox reports. Sandbox reports include information about the specific actions the file takes when it's executed in a sandboxed environment, such as registry and file system actions, processes, and more. Notice the different types of tactics and techniques used by this malware and the files it created.

