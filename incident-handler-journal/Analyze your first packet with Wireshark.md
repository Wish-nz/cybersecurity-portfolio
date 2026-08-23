## Activity overview

As a security analyst, you’ll need to analyze network traffic in order to learn what type of traffic is being sent to and from systems on the networks you’ll be working with.

Previously, you learned about packet capture and analysis. Analyzing packets can help security teams interpret and understand network communications. Network protocol analyzers such as Wireshark, which has a graphical user interface or GUI, can help you examine packet data during your investigations. Since network packet data is complex, network protocol analyzers (packet sniffers) like Wireshark are designed to help you find patterns and filter the data in order to focus on the network traffic that is most relevant to your security investigations.

Now you’ll use Wireshark to inspect packet data and apply filters to sort through packet information efficiently.

In this lab activity, you’ll use Wireshark to examine a sample packet capture file and filter the network traffic data.

## Scenario

In this scenario, you’re a security analyst investigating traffic to a website.

You’ll analyze a network packet capture file that contains traffic data related to a user connecting to an internet site. The ability to filter network traffic using packet sniffers to gather relevant information is an essential skill as a security analyst.

You must filter the data in order to:

- identify the source and destination IP addresses involved in this web browsing session,
- examine the protocols that are used when the user makes the connection to the website, and
- analyze some of the data packets to identify the type of information sent and received by the systems that connect to each other when the network data is captured.

Here’s how you’ll do this: **First**, you’ll open the packet capture file and explore the basic Wireshark graphic user interface. **Second**, you’ll open a detailed view of a single packet and explore how to examine the various protocol and data layers inside a network packet. **Third**, you’ll apply filters to select and inspect packets based on specific criteria. **Fourth**, you’ll filter and inspect UDP DNS traffic to examine protocol data. **Finally**, you’ll apply filters to TCP packet data to search for specific payload text data.



## Task 1. Explore data with Wireshark
In this task, you must open a network packet capture file that contains data captured from a system that made web requests to a site. You need to open this data with Wireshark to get an overview of how the data is presented in the application.

## Task 2. Apply a basic Wireshark filter and inspect a packet
In this task, you’ll open a packet in Wireshark for more detailed exploration and filter the data to inspect the network layers and protocols contained in the packet.

## Task 3. Use filters to select packets
In this task, you’ll use filters to analyze specific network packets based on where the packets came from or where they were sent to. You’ll explore how to select packets using either their physical Ethernet Media Access Control (MAC) address or their Internet Protocol (IP) address.

## Task 4. Use filters to explore DNS packets
In this task, you’ll use filters to select and examine DNS traffic. Once you‘ve selected sample DNS traffic, you’ll drill down into the protocol to examine how the DNS packet data contains both queries (names of internet sites that are being looked up) and answers (IP addresses that are being sent back by a DNS server when a name is successfully resolved).

## Task 5. Use filters to explore TCP packets
In this task, you’ll use additional filters to select and examine TCP packets. You’ll learn how to search for text that is present in payload data contained inside network packets. This will locate packets based on something such as a name or some other text that is of interest to you.



## Completed:

- open saved packet capture files,
- view high-level packet data, and
- use filters to inspect detailed packet data.