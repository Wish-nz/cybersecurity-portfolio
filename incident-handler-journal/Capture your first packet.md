## Activity overview

As a security analyst, it’s important to know how to capture and filter network traffic in a Linux environment. You’ll also need to know the basic concepts associated with network interfaces.

In this lab activity, you’ll perform tasks associated with using tcpdump to capture network traffic. You’ll capture the data in a packet capture (p-cap) file and then examine the contents of the captured packet data to focus on specific types of traffic.


## Scenario

You’re a network analyst who needs to use `tcpdump` to capture and analyze live network traffic from a Linux virtual machine.

The lab starts with your user account, called `analyst`, already logged in to a Linux terminal.

Your Linux user's home directory contains a sample packet capture file that you will use at the end of the lab to answer a few questions about the network traffic that it contains.

Here’s how you’ll do this: **First**, you’ll identify network interfaces to capture network packet data. **Second**, you’ll use `tcpdump` to filter live network traffic. **Third**, you’ll capture network traffic using `tcpdump`. **Finally**, you’ll filter the captured packet data.

## Task 1. Identify network interfaces

In this task, you must identify the network interfaces that can be used to capture network packet data.

*You have completed this task and used ifconfig and tcpdump to list the network interfaces in this machine.

## Task 2. Inspect the network traffic of a network interface with tcpdump

In this task, you must use `tcpdump` to filter live network packet traffic on an interface.

*You have completed this task and used tcpdump to filter live network traffic.
## Task 3. Capture network traffic with tcpdump

In this task, you will use `tcpdump` to save the captured network data to a packet capture file.

In the previous command, you used `tcpdump` to stream all network traffic. Here, you will use a filter and other `tcpdump` configuration options to save a small sample that contains only web (TCP port 80) network packet data.

*You have completed this task. You used the tcpdump command to capture network data to the file /home/analyst/capture.pcap.

## Task 4. Filter the captured packet data

In this task, use `tcpdump` to filter data from the packet capture file you saved previously.


### Test your understanding

What command would you use to capture 3 packets on any interface with the verbose option?
sudo tcpdump -N2 -i any -v
	sudo tcpdump -c3 -i any -v    <----
sudo tcpdump -s3 -i all -v
sudo tcpdump -n3 -i any -v


What does the -i option indicate?
Incremental monitoring mode
	The network interface to monitor    <----
The number of packets to capture
Capture incoming packets only

What type of information does the -v option include?
Version information
Virtual packets
Packets including the letter `V`
	Verbose information         <----

What tcpdump command can you use to identify the interfaces that are available to perform a packet capture on?
sudo ls
sudo tcpdump
sudo capture p.cap
	sudo tcpdump -D      <----


## Conclusion

Great work!

You have gained practical experience to enable you to

- identify network interfaces,
- use the `tcpdump` command to capture network data for inspection,
- interpret the information that `tcpdump` outputs regarding a packet, and
- save and load packet data for later analysis.



## NOTES:


- `-nn`: Disable port and protocol name lookup.
- `-r`: Read capture data from the named file.
- `-v`: Display detailed packet data.
- - `-i eth0`: Capture data from the `eth0` interface.
- `-nn`: Do not attempt to resolve IP addresses or ports to names.This is best practice from a security perspective, as the lookup data may not be valid. It also prevents malicious actors from being alerted to an investigation.
- `-c9`: Capture 9 packets of data and then exit.
- `port 80`: Filter only port 80 traffic. This is the default HTTP port.
- `-w capture.pcap`: Save the captured data to the named file.
- `&`: This is an instruction to the Bash shell to run the command in the background.
- - `-v`: Display detailed packet data.
- `-c5`: Capture 5 packets of data.





