Introduction to `tcpdump`

- `tcpdump` is a widely used command-line tool for network analysis, pre-installed on many Linux distributions and available for Unix-like operating systems such as macOS.
- It allows users to capture and monitor various types of network traffic, including TCP, IP, and ICMP.

Using `tcpdump` Commands

- `tcpdump` commands can be customized with options and flags to filter network traffic, enabling users to pinpoint specific information like IP addresses, protocols, or port numbers.
- An example command, `sudo tcpdump -i any -v -c 1`, demonstrates how to capture a single packet, specifying the interface, enabling verbose output, and limiting the packet count.

Interpreting `tcpdump` Output

- The output provides detailed packet information, including a timestamp for correlating traffic during incident investigations and the IP version (e.g., IPv4).
- Key fields like Type of Service (ToS), Time to Live (TTL), Identification, Offset, and Flags offer insights into packet handling, fragmentation, and reassembly, while the Protocol field identifies the protocol in use (e.g., TCP).