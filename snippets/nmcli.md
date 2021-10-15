# nmcli

Show interface

	nmcli con show


Configure IPv4

	nmcli connection modify "System eth0" IPv4.address 30.105.100.92/22
	nmcli connection modify "System eth0" IPv4.gateway 30.105.100.1
	nmcli connection modify "System eth0" IPv4.dns "30.255.9.3 30.255.9.4"
	nmcli connection modify "System eth0" IPv4.method manual
	nmcli connection down "System eth0" && sudo nmcli connection up "System eth0"
