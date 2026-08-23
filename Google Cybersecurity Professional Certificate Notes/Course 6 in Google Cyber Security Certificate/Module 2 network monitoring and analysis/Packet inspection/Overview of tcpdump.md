What is tcpdump?

- tcpdump is a command-line tool that captures network traffic, which can be saved as a packet capture (p-cap) file for later analysis.
- It is used by analysts for troubleshooting network issues and identifying malicious activity, and it often comes pre-installed on Linux distributions.

Capturing Packets with tcpdump

- To capture network traffic with tcpdump, you need administrator-level privileges, typically by using `sudo`.
- The basic syntax involves `sudo tcpdump [-i interface] [option(s)] [expression(s)]`, where `-i` specifies the network interface to capture from.

Essential tcpdump Options

- The `-w` option allows you to write captured packets to a p-cap file, while `-r` is used to read from a p-cap file.
- The `-v` option controls the verbosity of the output, with `-v`, `-vv`, and `-vvv` providing increasing levels of detail about packet information.