# LDAP

## Install tools on Ubuntu
sudo apt-get install ldap-utils

## Search for an entrie
ldapsearch -x -H ldap://fqdn:389 -b "DC=domain,DC=example,DC=net" -D "CN=user,OU=Users,DC=domain,DC=example,DC=nett" -W "uid=user_uid"

