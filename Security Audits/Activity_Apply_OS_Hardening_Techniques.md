# Activity: Apply OS Hardening Techniques
## Cybersecurity Incident Report

### Scenario

You are a cybersecurity analyst for yummyrecipesforme.com, a website that sells recipes and cookbooks. A former employee has decided to lure users to a fake website with malware.

The former employee/hacker executed a brute force attack to gain access to the web host. They repeatedly entered several known default passwords for the administrative account until they correctly guessed the right one. After they obtained the login credentials, they were able to access the admin panel and change the website's source code. They embedded a javascript function in the source code that prompted visitors to download and run a file upon visiting the website. After embedding the malware, the hacker changed the password to the administrative account. When customers download the file, they are redirected to a fake version of the website that contains the malware.

Several hours after the attack, multiple customers emailed yummyrecipesforme's helpdesk. They complained that the company's website had prompted them to download a file to access free recipes. The customers claimed that, after running the file, the address of the website changed and their personal computers began running more slowly.

In response to this incident, the website owner tries to log in to the admin panel but is unable to, so they reach out to the website hosting provider. You and other cybersecurity analysts are tasked with investigating this security event.

To address the incident, you create a sandbox environment to observe the suspicious website behavior. You run the network protocol analyzer tcpdump, then type in the URL for the website, yummyrecipesforme.com. As soon as the website loads, you are prompted to download an executable file to update your browser. You accept the download and allow the file to run. You then observe that your browser redirects you to a different URL, greatrecipesforme.com, which contains the malware.

---

## Process: Network Traffic Analysis

The network traffic demonstrates the attack flow through multiple protocols:

1. **DNS Request**: The browser initiates a DNS request for the IP address of yummyrecipesforme.com
2. **DNS Response**: The DNS server replies with the correct IP address
3. **HTTP Request**: The browser initiates an HTTP request to yummyrecipesforme.com using the IP address from the DNS server
4. **Malware Download**: The browser initiates the download of the malicious executable file
5. **DNS Request (Redirect)**: The browser initiates a DNS request for greatrecipesforme.com
6. **DNS Response (Redirect)**: The DNS server responds with the IP address for greatrecipesforme.com
7. **HTTP Request (Malicious Site)**: The browser initiates an HTTP request to the IP address for greatrecipesforme.com
8. **Malware Execution**: The downloaded file executes, compromising the user's system

---

## Further Investigation Details

A senior analyst confirms that the website was compromised. The analyst checks the source code for the website. They notice that javascript code had been added to prompt website visitors to download an executable file. Analysis of the downloaded file found a script that redirects the visitors' browsers from yummyrecipesforme.com to greatrecipesforme.com.

The cybersecurity team reports that the web server was impacted by a brute force attack. The disgruntled hacker was able to guess the password easily because the admin password was still set to the default password. Additionally, there were no controls in place to prevent a brute force attack.

Your job is to document the incident in detail, including identifying the network protocols used to establish the connection between the user and the website. You should also recommend a security action to take to prevent brute force attacks in the future.

---

## Section 1: Identify the Network Protocol Involved in the Incident

The primary network protocols involved in the incident are:

- **DNS (Domain Name System)**: Used to resolve domain names (yummyrecipesforme.com and greatrecipesforme.com) to their corresponding IP addresses
- **TCP (Transmission Control Protocol)**: Provides reliable, connection-oriented communication between the client browser and the web servers
- **HTTP (Hypertext Transfer Protocol)**: Used for transmitting the webpage content and initiating the malware download
- **HTTPS (HTTP Secure)**: May also be involved for secure connections before the compromise

The logs show a clear pattern of DNS requests and replies to resolve the IPs for yummyrecipesforme.com and greatrecipesforme.com. This is followed by TCP handshakes used to establish connections, and the HTTP protocol for fetching the webpage content and initiating the malware download.

---

## Section 2: Document the Incident

### Incident Summary

The website yummyrecipesforme.com was compromised following a brute force attack on its administrative account. The attacker repeatedly entered known default passwords until they correctly guessed the credentials. Due to a lack of access controls and brute force prevention mechanisms, they successfully accessed the admin panel and modified the website's source code to inject malicious JavaScript.

### Attack Details

**Vector**: Brute force attack against the administrative account using known default passwords

**Attack Method**:
- The attacker attempted multiple default password combinations against the web server's administrative account
- No rate limiting or account lockout mechanisms were in place to prevent repeated login attempts
- The weak default password allowed the attacker to gain unauthorized access

**Payload**: Injected JavaScript code that:
- Prompted legitimate website visitors to download an executable file
- Disguised the malware as a browser update
- Executed when users opened the downloaded file

**Impact**:
- Compromised website security and integrity
- Unauthorized modification of the website's source code
- User systems infected with malware
- Customer trust and data security compromised
- Performance degradation on compromised user systems

**Redirection Chain**:
- Original site: yummyrecipesforme.com
- Malicious destination: greatrecipesforme.com
- Users redirected to malicious site after downloading and executing the file
- Malware installed on customer systems resulting in:
  - Slower system performance
  - Potential data theft
  - Additional compromise risks

### Timeline of Events

1. Attacker executes brute force attack on admin credentials
2. Default password is successfully guessed
3. Attacker gains access to the admin panel
4. Malicious JavaScript is embedded in website source code
5. Admin password is changed by the attacker
6. Customers visit the compromised website
7. Malware download prompt displayed to visitors
8. Users execute the malicious file
9. Browsers redirected to greatrecipesforme.com
10. Malware installed and systems compromised
11. Helpdesk receives complaints from customers
12. Incident investigation initiated

---

## Section 3: Recommend One Remediation for Brute Force Attacks

### Recommended Mitigation: Implement Login Attempt Rate Limiting and Account Lockout

**Recommendation**: To prevent future brute force attacks, it is critical to implement **limiting the number of login attempts** with automatic account lockout mechanisms.

**Implementation Details**:

- **Failed Attempt Threshold**: Lock the administrative account after a maximum of 5 failed login attempts within a 15-minute window
- **Lockout Duration**: Implement a progressive lockout strategy:
  - First violation: 15-minute lockout
  - Second violation within 24 hours: 1-hour lockout
  - Third violation within 24 hours: 24-hour lockout or manual administrator reset required
- **Admin Notification**: Alert the system administrator immediately when an account is locked due to failed login attempts
- **Logging**: Maintain detailed logs of all failed login attempts including:
  - Source IP address
  - Timestamp
  - Username attempted
  - Number of attempts in sequence

**Rationale**: By restricting the number of failed attempts within a specific timeframe and implementing progressively severe lockouts, the organization can effectively neutralize automated brute force attempts before an attacker can guess the password. This approach provides:
- **Rapid Incident Detection**: Alerts administrators to suspicious activity in real-time
- **Attack Prevention**: Stops attackers before credentials are compromised
- **Account Protection**: Ensures that even weak or default passwords are protected from brute force exploitation
- **Minimal User Impact**: Legitimate users who forget passwords can still access accounts after the lockout period

**Additional Complementary Controls** (to implement alongside rate limiting):
- Change all default passwords immediately upon system installation
- Enforce strong password requirements (minimum 12 characters, mixed case, numbers, special characters)
- Implement Multi-Factor Authentication (MFA) for administrative accounts
- Regular security awareness training for staff on password security
- Periodic password audits to identify default or weak credentials

---

*Incident Report Completed: [Date]*
*Report Status: Final*
*Analyst: Cybersecurity Team*
