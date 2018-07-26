# tcpdump

Monitor a specific port

    tcpdump -n -i eth1 port 80

Multiple ports

    tcpdump -n -i eth1 port 67 or port 68

Capture DHCP traffic

    tcpdump -n -i eth1 port 67 or port 68
    tcpdump -n -i eth1 port port bootps or port bootpc

Capture any packets where the destination host is 192.168.1.1. Display IP addresses and port numbers

    tcpdump -n dst host 192.168.1.1

Capture any packets where the source host is 192.168.1.1. Display IP addresses and port numbers

    tcpdump -n src host 192.168.1.1

Capture any packets where the source or destination host is 192.168.1.1. Display IP addresses and port numbers

    tcpdump -n host 192.168.1.1

Capture any ICMP packets

    tcpdump -n -v icmp
