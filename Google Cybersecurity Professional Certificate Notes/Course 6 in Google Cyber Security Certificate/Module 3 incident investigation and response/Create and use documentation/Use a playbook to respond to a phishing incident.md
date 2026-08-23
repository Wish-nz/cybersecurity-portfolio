## Activity Overview

![](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/2y-rSzX4SbyvQjPI7MnChA_5a5e4663d382455ab921948a248a0cf1_YgINm49idDogDu7j3bwpC5t0N618leqi_-kehIFLybnA0SUThraUFXzYzk4YUzTIf6XcD3pD619UC2q36mbm_5QK_UQbQ1ejkRUaW90Quk5y3a1n7NfaqGc8QQIA8Lax5bn5n1XtdQaSkud3KWS07IKBAc_xpTZEpfVC2IfQytPiPNyTxD7Cac2noHwe?expiry=1786059638130&hmac=jWu2_DcoSf_z3ENWKHvflEQdTJMUgiCc2q8e7U9gUj0)

In this activity, you will respond to a phishing incident that involves a malicious file hash. This is the same SHA256 file hash that you investigated and verified as malicious in a [previous activity](https://www.coursera.org/learn/detection-and-response/quiz/wXUdm/activity-investigate-a-suspicious-file-hash). You'll follow playbook instructions to investigate and resolve the incident's alert ticket.

Previously, you learned how playbooks outline the step-by-step actions necessary to properly respond to a security incident. Coordinated, effective, and quick action is critical during incident response. A playbook can help security teams minimize the impact of an incident and reduce the incident response time. As a security analyst, playbooks can help guide you to effectively support an organization's incident response efforts.

## Scenario

![](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/2y-rSzX4SbyvQjPI7MnChA_5a5e4663d382455ab921948a248a0cf1_YgINm49idDogDu7j3bwpC5t0N618leqi_-kehIFLybnA0SUThraUFXzYzk4YUzTIf6XcD3pD619UC2q36mbm_5QK_UQbQ1ejkRUaW90Quk5y3a1n7NfaqGc8QQIA8Lax5bn5n1XtdQaSkud3KWS07IKBAc_xpTZEpfVC2IfQytPiPNyTxD7Cac2noHwe?expiry=1786059638130&hmac=jWu2_DcoSf_z3ENWKHvflEQdTJMUgiCc2q8e7U9gUj0)

Review the scenario. Then complete the step-by-step instructions.

You are a level-one security operations center (SOC) analyst at a financial services company. Previously, you received a phishing alert about a suspicious file being downloaded on an employee's computer. After investigating the email attachment file's hash, the attachment has already been verified malicious. Now that you have this information, you must follow your organization's process to complete your investigation and resolve the alert.

Your organization's security policies and procedures describe how to respond to specific alerts, including what to do when you receive a phishing alert. 

In the playbook, there is a flowchart and written instructions to help you complete your investigation and resolve the alert. At the end of your investigation, you will update the alert ticket with your findings about the incident.

_**Note**_: _Use the incident handler's journal you started in_ [_a previous activity_](https://www.coursera.org/learn/detection-and-response/exam/ghRgc/portfolio-activity-document-an-incident-with-an-incident-handlers-journal) _to take notes during the activity and keep track of your findings._

![](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/2y-rSzX4SbyvQjPI7MnChA_5a5e4663d382455ab921948a248a0cf1_YgINm49idDogDu7j3bwpC5t0N618leqi_-kehIFLybnA0SUThraUFXzYzk4YUzTIf6XcD3pD619UC2q36mbm_5QK_UQbQ1ejkRUaW90Quk5y3a1n7NfaqGc8QQIA8Lax5bn5n1XtdQaSkud3KWS07IKBAc_xpTZEpfVC2IfQytPiPNyTxD7Cac2noHwe?expiry=1786059638130&hmac=jWu2_DcoSf_z3ENWKHvflEQdTJMUgiCc2q8e7U9gUj0)

Update **Ticket status**:
Completed
![](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/2y-rSzX4SbyvQjPI7MnChA_5a5e4663d382455ab921948a248a0cf1_YgINm49idDogDu7j3bwpC5t0N618leqi_-kehIFLybnA0SUThraUFXzYzk4YUzTIf6XcD3pD619UC2q36mbm_5QK_UQbQ1ejkRUaW90Quk5y3a1n7NfaqGc8QQIA8Lax5bn5n1XtdQaSkud3KWS07IKBAc_xpTZEpfVC2IfQytPiPNyTxD7Cac2noHwe?expiry=1786059638130&hmac=jWu2_DcoSf_z3ENWKHvflEQdTJMUgiCc2q8e7U9gUj0)

Evaluate the alert: 
Completed
![](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/2y-rSzX4SbyvQjPI7MnChA_5a5e4663d382455ab921948a248a0cf1_YgINm49idDogDu7j3bwpC5t0N618leqi_-kehIFLybnA0SUThraUFXzYzk4YUzTIf6XcD3pD619UC2q36mbm_5QK_UQbQ1ejkRUaW90Quk5y3a1n7NfaqGc8QQIA8Lax5bn5n1XtdQaSkud3KWS07IKBAc_xpTZEpfVC2IfQytPiPNyTxD7Cac2noHwe?expiry=1786059638130&hmac=jWu2_DcoSf_z3ENWKHvflEQdTJMUgiCc2q8e7U9gUj0)

Determine whether the alert should be escalated. YES
![](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/2y-rSzX4SbyvQjPI7MnChA_5a5e4663d382455ab921948a248a0cf1_YgINm49idDogDu7j3bwpC5t0N618leqi_-kehIFLybnA0SUThraUFXzYzk4YUzTIf6XcD3pD619UC2q36mbm_5QK_UQbQ1ejkRUaW90Quk5y3a1n7NfaqGc8QQIA8Lax5bn5n1XtdQaSkud3KWS07IKBAc_xpTZEpfVC2IfQytPiPNyTxD7Cac2noHwe?expiry=1786059638130&hmac=jWu2_DcoSf_z3ENWKHvflEQdTJMUgiCc2q8e7U9gUj0)

Update **Ticket status** 
Completed
![](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/2y-rSzX4SbyvQjPI7MnChA_5a5e4663d382455ab921948a248a0cf1_YgINm49idDogDu7j3bwpC5t0N618leqi_-kehIFLybnA0SUThraUFXzYzk4YUzTIf6XcD3pD619UC2q36mbm_5QK_UQbQ1ejkRUaW90Quk5y3a1n7NfaqGc8QQIA8Lax5bn5n1XtdQaSkud3KWS07IKBAc_xpTZEpfVC2IfQytPiPNyTxD7Cac2noHwe?expiry=1786059638130&hmac=jWu2_DcoSf_z3ENWKHvflEQdTJMUgiCc2q8e7U9gUj0)



## Resource ##

 

![[Phishing incident response playbook 1.pdf]]




![](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/2y-rSzX4SbyvQjPI7MnChA_5a5e4663d382455ab921948a248a0cf1_YgINm49idDogDu7j3bwpC5t0N618leqi_-kehIFLybnA0SUThraUFXzYzk4YUzTIf6XcD3pD619UC2q36mbm_5QK_UQbQ1ejkRUaW90Quk5y3a1n7NfaqGc8QQIA8Lax5bn5n1XtdQaSkud3KWS07IKBAc_xpTZEpfVC2IfQytPiPNyTxD7Cac2noHwe?expiry=1786059638130&hmac=jWu2_DcoSf_z3ENWKHvflEQdTJMUgiCc2q8e7U9gUj0)

# Context #


**

|           |                                                           |          |                                                                                     |               |
| --------- | --------------------------------------------------------- | -------- | ----------------------------------------------------------------------------------- | ------------- |
| Ticket ID | Alert Message                                             | Severity | Details                                                                             | Ticket status |
| A-2703    | SERVER-MAIL Phishing attempt possible download of malware | Medium   | The user may have opened a malicious email and opened attachments or clicked links. | Open          |

  
  

|                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |     |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --- |
| Ticket comments                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |     |
| **The alert detected that an employee downloaded and opened a malicious file from a phishing email. There is an inconsistency between the sender’s email address “76tguy6hh6tgftrt7tg.su’” the name used in the email body “Clyde West,” and the sender’s name, “Def Communications.” The email body and subject line contained grammatical errors. The email’s body also contained a password-protected attachment, “bfsvc.exe,” which was downloaded and opened on the affected machine. Having previously investigated the file hash, it is confirmed to be a known malicious file. Furthermore, the alert severity is reported as medium. With these findings, I chose to escalate this ticket to a level-two SOC analyst to take further action.** |     |

  

### Additional information

Known malicious file hash: 54e6ea47eb04634d3e87fd7787e2136ccfbcc80ade34f246a12cf93bab527f6b

  

Email:  
From: Def Communications <76tguyhh6tgftrt7tg.su>  <114.114.114.114>

Sent: Wednesday, July 20, 2022 09:30:14 AM

To: <hr@inergy.com> <176.157.125.93>  
Subject: Re: Infrastructure Egnieer role

  

Dear HR at Ingergy,  
  
I am writing for to express my interest in the engineer role posted from the website.  
  
There is attached my resume and cover letter. For privacy, the file is password protected. Use the password paradise10789 to open.  
  
Thank you,  
  
Clyde West

Attachment: filename="bfsvc.exe"

**



---
# Incident journal #




|                          |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| ------------------------ | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Date: 6 Aug 2026<br><br> | Entry: 1<br><br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| Description              | SERVER-MAIL Phishing attempt possible download of malware<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| Tool(s) used             | https://www.virustotal.com/gui/file/54e6ea47eb04634d3e87fd7787e2136ccfbcc80ade34f246a12cf93bab527f6b                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| The 5 W's                | Capture the 5 W's of an incident.<br><br>- Who caused the incident?<br>    Email:<br>From: Def Communications <76tguyhh6tgftrt7tg.su>  <114.114.114.114><br><br>- What happened?<br>    Email received and possibly opened that has "[trojan.flagpro/fragtor](https://www.virustotal.com/gui/search?query=engines%3Atrojan%20AND%20engines%3Aflagpro%20AND%20engines%3Afragtor%20AND%20engines%3Abfrl)" attached to it.<br>- When did the incident occur?<br>    **Wednesday, July 20, 2022 09:30:14 AM**<br>- Where did the incident happen?<br>    **inergy.com**<br>- Why did the incident happen? |
| Additional notes         | Include any additional thoughts, questions, or findings.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
|                          | To be esculated!                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |

  




