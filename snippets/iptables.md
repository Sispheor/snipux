# Iptables

Clean iptables

    #!/bin/sh
    echo "Flushing iptables rules..."
    iptables -F
    iptables -X
    iptables -t nat -F
    iptables -t nat -X
    iptables -t mangle -F
    iptables -t mangle -X
    iptables -P INPUT ACCEPT
    iptables -P FORWARD ACCEPT
    iptables -P OUTPUT ACCEPT

Delete rule in input table

    iptables -D INPUT 1