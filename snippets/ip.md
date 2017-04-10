# To Display Device Attributes
ip link show

# enable interface
ip link set eth1 up

# disable interface
ip link set eth1 down

# show IP address
ip addr show

# set ip
ip addr add 192.168.50.5 dev eth1

# remove ip
ip addr del 192.168.50.5/24 dev eth1

# show route
route -n
ip route show

# add static route
ip route add 10.10.20.0/24 via 192.168.50.100 dev eth0

# remove route
ip route del 10.10.20.0/24

# change/update default gateway
ip route add default via 192.168.50.100
