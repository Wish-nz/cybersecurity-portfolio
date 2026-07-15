# Activity: Analyze Network Attacks
## Cybersecurity Incident Report

### Scenario
You work as a security analyst for a travel agency that advertises sales and promotions on the company's website. The employees of the company regularly access the company's sales webpage to search for vacation packages their customers might like. 

One afternoon, you receive an automated alert from your monitoring system indicating a problem with the web server. You attempt to visit the company's website, but you receive a connection timeout error message in your browser.

You use a packet sniffer to capture data packets in transit to and from the web server. You notice a large number of TCP SYN requests coming from an unfamiliar IP address. The web server appears to be overwhelmed by the volume of incoming traffic and is losing its ability to respond to the abnormally large number of SYN requests. You suspect the server is under attack by a malicious actor. 

You take the server offline temporarily so that the machine can recover and return to a normal operating status. You also configure the company's firewall to block the IP address that was sending the abnormal number of SYN requests. You know that your IP blocking solution won't last long, as an attacker can spoof other IP addresses to get around this block. You need to alert your manager about this problem quickly and discuss the next steps to stop this attacker and prevent this problem from happening again. You will need to be prepared to tell your boss about the type of attack you discovered and how it was affecting the web server and employees.

---

## Section 1: Identify the Type of Attack That May Have Caused This Network Interruption

One potential explanation for the website's connection timeout error message is:

The logs show that one IP address is flooding the network with TCP packets and another IP address is failing to connect because of this, thus creating more requests compounding the issue.

**This event could be: SYN Flood Attack**

This attack exploits the TCP handshake process by sending numerous SYN requests to a server. If the number of requests exceeds available ports, the server becomes overwhelmed and crashes.

---

## Section 2: Explain How the Attack is Causing the Website to Malfunction

### The Three-Way TCP Handshake

When website visitors try to establish a connection with the web server, a three-way handshake occurs using the TCP protocol. The three steps are:

#### 1. The SYN (Synchronize) Step
The client initiates the connection by sending a packet to the server with the SYN flag turned on. This is the client saying, "Hey, I'd like to talk to you. Let's synchronize our sequence numbers so we can keep our conversation in order." The client generates a random initial sequence number (ISN_c) to start tracking the data it will send.

#### 2. The SYN-ACK (Synchronize-Acknowledgment) Step
The server receives the request. If its port is open and it is ready to connect, it responds with a SYN-ACK packet. This serves a dual purpose:
- **ACK**: The server acknowledges the client's request by taking the client's sequence number, adding 1 to it (ISN_c + 1), and sending it back. ("I heard you loud and clear.")
- **SYN**: The server sends its own random initial sequence number (ISN_s) to the client. ("Now, let's synchronize my side of the conversation too.")

#### 3. The ACK (Acknowledgment) Step
Finally, the client receives the server's response. It completes the handshake by sending one last ACK packet back to the server. The client takes the server's sequence number, adds 1 to it (ISN_s + 1), and sends it back. This is the client saying, "Got it! We are officially connected and ready to swap data."

Once this third step is complete, the TCP connection is fully established, and the browser can safely start requesting the website's HTML, images, and other resources.

### What Happens When a Malicious Actor Sends a Large Number of SYN Packets

#### 1. The Server is Left Hanging
Normally, when a server receives a SYN packet, it responds with a SYN-ACK and sets aside a small amount of memory (in a temporary storage area called the connection queue or SYN backlog). It keeps this connection open in a "half-open" state, waiting for the final ACK packet from the client to complete the handshake.

In a SYN flood, the attacker usually fakes (spoofs) the sender's IP address or simply chooses to ignore the server's response. Because of this, the final ACK packet never arrives.

#### 2. Resources are Exhausted
Because the final ACK never comes, the server's connection queue quickly fills up with thousands of these "half-open" connections. The server will actively keep these slots open for a certain period, repeatedly trying to re-send the SYN-ACK packet before the request finally times out.

#### 3. System Crash or Service Denial
Because the server's backlog queue has a strict physical limit, it eventually runs out of available memory slots to track new connections. Once the queue is completely full:
- The server can no longer accept any new incoming connection requests.
- Legitimate users trying to visit the website will experience endless loading screens, "connection timed out" errors, or a total inability to access the site.
- In severe cases, the server's operating system may run out of memory entirely, causing the machine to crash or freeze.

**The Analogy**: Imagine an automated phone ordering system where the machine picks up the phone, says "Please hold while I connect you," and allocates a phone line while waiting for the caller to press 1. If an attacker uses thousands of automated lines to call in simultaneously and then just stays silent without pressing 1, every single phone line becomes tied up. When a real customer tries to call, they just get a busy signal.

### What the Logs Indicate and How That Affects the Server

Based on a thorough analysis of the network logs, the traffic indicates a classic TCP SYN Flood Denial of Service (DoS) attack targeting the server at IP address 192.0.2.1 on port 443 (HTTPS).

#### 1. Malicious Behavior of IP 203.0.113.0 (The Attacker)
- **High Volume Traffic**: Out of 174 total packets in the log, the IP 203.0.113.0 is involved in 150 packets (86.2%), with 140 packets originating directly from it.
- **SYN Flooding**: The attacker sends 139 TCP [SYN] packets to port 443 over a 48.4-second window (averaging ~2.87 packets per second).
- **Half-Open Connections**: The attacker ignores the server's attempts to complete the handshake. The server responds with [SYN, ACK] packets, but the attacker does not send the final [ACK] to establish a connection. This leaves the server's connection queues in a "half-open" state, rapidly consuming memory and system resources.

#### 2. Severe Impact on Server Performance and Legitimate Users
- **Phase 1: Normal Operation (Seconds 3.1 – 4.0)**: Before the attack fully saturates the server, legitimate clients connect successfully. For example, 198.51.100.23 and 198.51.100.14 complete their handshakes and successfully receive 200 OK responses for /sales.html.
- **Phase 2: Service Degradation (Seconds 4.1 – 7.3)**: As the SYN flood continues, client 198.51.100.5 attempts to connect. Although the handshake completes, the server's resources are so congested that the request for /sales.html times out, resulting in an HTTP/1.1 504 Gateway Time-out at second 7.33.
- **Phase 3: Complete Denial of Service (Second 5.2 Onwards)**: The server's connection backlog queue becomes completely exhausted. When other legitimate clients (198.51.100.16, 198.51.100.7, 198.51.100.22, and 198.51.100.9) try to initiate a connection, the server immediately rejects them by returning [RST, ACK] (Reset) packets, effectively locking out all new traffic.

#### 3. Recommended Mitigation Strategies
- **Enable TCP SYN Cookies**: This allows the server to handle incoming [SYN] requests without allocating resources in the connection backlog queue until the client completes the handshake with a valid [ACK].
- **Implement Rate Limiting and IP Blocking**: Configure a firewall or Intrusion Prevention System (IPS) to detect rapid, repetitive [SYN] requests from a single source (like 203.0.113.0) and temporarily block or rate-limit that IP.
- **Reduce TCP Connection Timeout**: Decrease the timeout duration for half-open connections so that the server frees up backlog queue slots more quickly when a client fails to complete the handshake.
