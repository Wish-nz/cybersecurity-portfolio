# Connect and Protect: Module 2
## Network Protocols and Security Infrastructure

---

## Network Protocols Overview

### The Role of Network Protocols

- Network protocols are sets of rules that govern how devices on a network communicate, ensuring data is delivered in the correct order and structure.
- They are essential for the proper functioning of networks, from accessing websites to transferring data.

### Key Network Protocols in Action

- **TCP (Transmission Control Protocol)**: Establishes a connection and verifies devices before data streaming, often through a "handshake" process.
- **ARP (Address Resolution Protocol)**: Determines the MAC address of the next router or device to ensure data packets are sent to the correct location.
- **HTTPS (Hypertext Transfer Protocol Secure)**: Provides a secure method for communication between client and web servers, encrypting data using SSL/TLS.
- **DNS (Domain Name System)**: Translates human-readable internet domain names into numerical IP addresses, allowing devices to locate websites.

### Protocols and Security

- Secure protocols like HTTPS are crucial for protecting sensitive information from malicious actors by encrypting data during transmission.
- Understanding network protocols is a fundamental skill for security analysts, as they are integral to daily activities and securing networks.

---

## Common Network Protocols

### Overview

A network protocol is a set of rules that govern how devices communicate and exchange data over a network. While there are many protocols, entry-level security analysts should focus on understanding the key ones.

### Protocol Categories

Network protocols are broadly categorized into three types:

1. **Communication Protocols**
2. **Management Protocols**
3. **Security Protocols**

Security analysts must understand protocol vulnerabilities, as malicious actors can exploit them.

---

## Network Protocol Examples by Category

### Communication Protocols

- **TCP (Transmission Control Protocol)**: Reliable, connection-oriented protocol
- **UDP (User Datagram Protocol)**: Fast, connectionless protocol
- **HTTP (HyperText Transfer Protocol)**: Insecure web communication
- **DNS (Domain Name System)**: Translates domain names to IP addresses

### Management Protocols

- **SNMP (Simple Network Management Protocol)**: Monitors and manages network devices
- **ICMP (Internet Control Message Protocol)**: Reports data transmission errors

### Security Protocols

- **HTTPS (HyperText Transfer Protocol Secure)**: Secure web communication using SSL/TLS encryption
- **SFTP (SSH File Transfer Protocol)**: Secure file transfer using SSH

---

## Additional Network Protocols

### Network Address Translation (NAT)

- **Function**: Allows multiple devices on a private network to share a single public IP address when accessing the internet.
- **Mechanism**: Routers replace private IP addresses with a public IP for outgoing traffic and reverse this process for incoming responses.

### Dynamic Host Configuration Protocol (DHCP)

- **Purpose**: A management protocol that automatically assigns unique IP addresses to devices on a network.
- **Operation**: Works with the router to provide devices with necessary network configuration details, including:
  - IP addresses
  - DNS server addresses
  - Default gateways

### Address Resolution Protocol (ARP)

- **Role**: Translates IP addresses into MAC addresses, which are unique hardware identifiers for network interface cards.
- **Process**: Devices use ARP to discover the MAC address corresponding to a known IP address within the same local network.

### Remote Access Protocols

- **Telnet**: An application layer protocol for remote system connections, but sends information in clear text, making it **insecure**.
- **Secure Shell (SSH)**: A more secure alternative to Telnet, providing encrypted communication and secure authentication for remote access.

### Email Protocols

- **Post Office Protocol (POP)**: Used to retrieve emails from a mail server, typically downloading them to a local device and optionally deleting them from the server.
- **Internet Message Access Protocol (IMAP)**: Allows users to access and manage emails directly on the mail server, enabling synchronization across multiple devices.
- **Simple Mail Transfer Protocol (SMTP)**: Responsible for sending and routing emails from the sender to the recipient's mail server.

### Port Numbers and Security

- **Significance**: Port numbers help network devices direct data packets to the correct applications or services.
- **Firewall Application**: Firewalls can be configured to filter network traffic based on port numbers, enhancing security by blocking unwanted access.

---

## Protocols and Their Associated Port Numbers

### Common Protocol Ports

| Protocol | Port(s) | Details |
|----------|---------|---------|
| **DHCP** | UDP 67 (servers), UDP 68 (clients) | Dynamic Host Configuration |
| **ARP** | N/A | Layer 2 protocol |
| **Telnet** | TCP 23 | Remote access (insecure) |
| **SSH** | TCP 22 | Secure remote access |
| **POP3** | TCP/UDP 110 (unencrypted) | Email retrieval |
| | TCP/UDP 995 (encrypted, SSL/TLS) | Secure email retrieval |
| **IMAP** | TCP 143 (unencrypted) | Email access |
| | TCP 993 (encrypted, SSL/TLS) | Secure email access |
| **SMTP** | TCP/UDP 25 (unencrypted) | Email sending |
| | TCP/UDP 587 (encrypted, TLS) | Secure email sending |
| **HTTP** | Port 80 | Web communication (insecure) |
| **DNS** | UDP 53 | Domain name resolution |
| **HTTPS** | Port 443 (typically) | Secure web communication (SSL/TLS) |

---

## Wireless Protocols

### IEEE 802.11: The Foundation of Wi-Fi

- IEEE 802.11 is a set of standards that define communications for wireless Local Area Networks (LANs).
- The **Institute of Electrical and Electronics Engineers (IEEE)** is the organization responsible for maintaining these Wi-Fi standards.

### Evolution of Wi-Fi Security

- Wi-Fi protocols have continuously evolved to enhance security and reliability, aiming to match the security levels of wired connections.
- **Wi-Fi Protected Access (WPA)** was introduced in 2004 as a wireless security protocol, with subsequent versions like WPA2 and WPA3 offering advanced encryption and improved security.

### Importance for Security Analysts

- Understanding these protocols is crucial for ensuring the security of wireless connections within an organization.
- The continuous development of Wi-Fi security measures highlights the ongoing need for vigilance and adaptation in network security.

---

## Evolution of Wireless Security Protocols

### Early Wireless Communication and Wi-Fi

- The internet initially relied on physical cables, with wireless expansion occurring after the mid-1980s with designated radio wave frequencies.
- Wi-Fi, a marketing term by the Wi-Fi Alliance, refers to a set of standards (IEEE 802.11) for wireless LAN communication.

### Security Protocol Evolution Timeline

#### WEP (Wired Equivalent Privacy)
- **Developed**: 1999
- **Purpose**: Aimed to provide wired-level privacy
- **Status**: Now considered high-risk due to vulnerabilities

#### WPA (Wi-Fi Protected Access)
- **Introduced**: 2003
- **Improvements**: Used TKIP and larger encryption keys over WEP
- **Vulnerabilities**: Still susceptible to KRACK attacks

#### WPA2
- **Released**: 2004
- **Encryption**: Uses AES and CCMP for stronger encryption
- **Status**: Current security standard
- **Vulnerabilities**: Remains vulnerable to KRACK attacks

#### WPA3
- **Latest Protocol**: Latest wireless security standard
- **Key Improvements**:
  - Addresses KRACK attack vulnerabilities with **Simultaneous Authentication of Equals (SAE)**
  - Increased encryption (128-bit, with optional 192-bit for Enterprise mode)
  - Enhanced protection against brute-force attacks

---

## Firewalls and Network Security Measures

### Types of Firewalls

- **Hardware Firewalls**: Physical devices that inspect data packets before they enter the network, offering a basic defense against threats.
- **Software Firewalls**: Programs installed on computers or servers that perform the same functions as hardware firewalls but are more cost-effective and flexible.
- **Cloud-based Firewalls (FaaS)**: Offered by cloud service providers, these software firewalls protect an organization's network and cloud assets by filtering incoming traffic.

### Firewall Operations

#### Stateless Firewalls
- Operate based on predefined rules
- Do not track information from data packets
- Less secure than stateful firewalls

#### Stateful Firewalls
- Monitor traffic and analyze network behavior
- Proactively filter out suspicious threats by keeping track of information
- More secure than stateless firewalls

#### Next-Generation Firewalls (NGFW)
- Provide advanced security features including:
  - Deep packet inspection
  - Intrusion protection
  - Often integrate with cloud-based threat intelligence for updated protection

---

## Virtual Private Networks (VPNs)

### The Need for VPNs

- When you connect to the internet, your Internet Service Provider (ISP) handles your requests.
- This traffic contains private information like your **IP address** and **location**.
- This private information is vulnerable to interception, potentially exposing sensitive data such as bank account details.

### How VPNs Work

- A VPN changes your public IP address and hides your virtual location, ensuring data privacy when using public networks.
- VPNs encrypt your data as it travels across the internet, maintaining confidentiality.

### Encapsulation and Secure Tunnels

- VPN services use **encapsulation**, wrapping sensitive data in other data packets that routers can read.
- This allows your requests to reach their destination while keeping your personal data encrypted.
- VPNs create an **encrypted tunnel** between your device and the VPN server, making your data unhackable without a cryptographic key.

---

## Security Zones

### Understanding Security Zones

- Security zones segment a network, giving each segment specific access permissions and security rules.
- They act as a barrier to internal networks, maintain privacy, and prevent issues from spreading across the entire network.

### Types of Security Zones

#### Uncontrolled Zone
- Any network outside an organization's control
- Includes the internet

#### Controlled Zone
- A subnet that protects the internal network from the uncontrolled zone
- Includes various sub-zones

### Zones Within the Controlled Network

#### Demilitarized Zone (DMZ)
- Outer layer that contains public-facing services
- Includes web servers and DNS servers
- Acts as a network perimeter

#### Internal Network
- Zone that holds private servers and data requiring protection

#### Restricted Zone
- Located within the internal network
- Safeguards highly confidential information
- Accessible only to privileged employees

---

## Subnetting and CIDR

### Understanding Subnetting

- Subnetting is the process of dividing a network into smaller, more manageable subnetworks.
- Acts like a "network inside a network"
- Division is based on IP addresses and network masks
- Allows devices within the same subnet to communicate more efficiently

### Classless Inter-Domain Routing (CIDR)

- A modern method for assigning subnet masks to IP addresses
- Replaces the older classful addressing system
- CIDR IP addresses include an IP network prefix (e.g., 198.51.100.0/24)
- The prefix specifies the range of IP addresses within that subnet

### Security Benefits of Subnetting

- Allows organizations to create isolated subnetworks, improving network performance and bandwidth usage.
- Contributes to security by:
  - Creating security zones
  - Isolating parts of the network through:
    - Physical isolation
    - Routing configuration
    - Firewalls

---

## Proxy Servers

### Proxy Server Fundamentals

- A proxy server acts as an intermediary between the internet and an internal network.
- Fulfills client requests by forwarding them to other servers.
- Possesses a public IP address, distinct from the private network's IP.
- Helps hide the internal network's IP address from external malicious actors.

### Security and Efficiency Benefits

- **Content Filtering**: Can block access to unsafe websites, preventing users from visiting prohibited sites on an organization's network.
- **Caching**: Uses temporary memory to store frequently requested data, reducing the need to fetch information from internal servers repeatedly and thus limiting contact with the internal network.

### Types of Proxy Servers

#### Forward Proxy Servers
- Regulate and restrict a user's internet access
- Hide their IP address
- Approve outgoing requests

#### Reverse Proxy Servers
- Manage internet access to internal servers
- Accept and approve external traffic before forwarding it
- Protect internal web servers

---

## Virtual Networks and Privacy: Summary

### Network Protocols

- Network protocols are rules that direct traffic to the correct device and service
- Ensure a mutually agreed-upon foundation for data transfer
- Categorized into:
  - Communication protocols (TCP, UDP, SMTP)
  - Management protocols (ICMP)
  - Security protocols (IPSec, SSL/TLS)

### Network Security Tools

#### Firewalls
- Inspect and filter network traffic
- **Stateless**: Operate on predefined rules
- **Stateful**: Track information to proactively filter threats
- **NGFWs**: Offer advanced protection with deep packet inspection and intrusion prevention

#### Proxy Servers
- Act as a barrier between internal clients and external resources
- Use Network Address Translation (NAT) to enhance security
- **Forward proxies**: Handle internal client requests to external resources
- **Reverse proxies**: Manage external requests to internal services

#### Virtual Private Networks (VPNs)
- Encrypt data in transit
- Disguise IP addresses through encapsulation
- Protect communications for both organizations and individuals

### Key Takeaways

- Understanding common network protocols (TCP, ARP, HTTPS, DNS) is fundamental for network communication.
- VPNs are essential for maintaining privacy and security when using public networks.
- Firewalls, security zones, and proxy servers collectively contribute to securing network infrastructure.
- This knowledge is essential for any security analyst role to ensure networks run smoothly and securely.
