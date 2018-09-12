# DNS

Get my current DNS

	nmcli dev show | grep IP4.DNS  # My actual DNS server

Interrogate a specific server

	dig @127.0.0.1 -p 8600 address.fqdn ANY
