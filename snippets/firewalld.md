# Firewalld

## Config management

Show current config

    firewall-cmd --list-all

Apply changes (need to be use after command that use --permanent)

    firewall-cmd --reload

## Zones

Get default zone

    firewall-cmd --get-default-zone

Get active zone

    firewall-cmd --get-active-zones

## Services

List active services in default zone

    firewall-cmd --list-services

Add a service to the default zone

    firewall-cmd --add-service=kerberos

## Ports

List

    firewall-cmd --list-ports

Add a port to the default zone

    firewall-cmd --add-port=9000/tcp

Remove a from from the default zone

    firewall-cmd --remove-port=9000/tcp

## Rich rules

List

    firewall-cmd --permanent --list-rich-rules

Block IP address

    firewall-cmd --permanent --add-rich-rule="rule family='ipv4' source address='16.109.195.24' reject"
