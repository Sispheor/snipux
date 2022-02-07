# SSL/TLS

Check a ca certificate againt URL

    openssl s_client -CApath ca_cert.crt -connect url.example

Verifying that a Certificate is issued by a CA certificate

    openssl verify -verbose -CAfile ca.crt server.crt

Check a Certificate Signing Request (CSR)

    openssl req -text -noout -verify -in CSR.csr

Check a private key

    openssl rsa -in privateKey.key -check

Check a certificate

    openssl x509 -in certificate.crt -text -noout


# Generate a self signed certificate

Generate private key

    openssl genrsa -out ca.key 2048

Generate CSR

    openssl req -new -key ca.key -out ca.csr

Generate Self Signed certificate

    openssl x509 -req -days 365 -in ca.csr -signkey ca.key -out ca.crt

# Generate self signed cert with config

Config testing.domain.local.cnf:
```
[req]
default_bits = 2048
prompt = no
default_md = sha256
distinguished_name = dn

[dn]
C=FR
ST=Isere
L=Grenoble
O=SharedInfra
emailAddress=me@domain.com
CN = testing.domain.local.cnf

[v3_req]
subjectAltName = @alt_names

[alt_names]
DNS.1 = testing.domain.local.cnf
```

Create private key and cert:
```
openssl req -new -x509 -newkey rsa:2048 -sha256 -nodes -keyout testing.domain.local.cnf.key -days 3560 -out testing.domain.local.cnf.crt -config testing.domain.local.cnf.cnf
```

# Others

Get CA certificate from server

    echo -n | openssl s_client -connect 37.59.53.15:443 | sed -ne '/-BEGIN CERTIFICATE-/,/-END CERTIFICATE-/p' > /tmp/ca.cert

# With proxy

Get a certificate through a proxy

    proxytunnel -p proxy-lon.ad.moodys.net:80 -d www.google.com:443 -a 7000
    openssl s_client -connect localhost:7000 -showcerts


# Trust a CA at system level

Add the certificate in /usr/share/ca-certificate and then:

    sudo dpkg-reconfigure ca-certificates
    sudo update-ca-certificates

# Check if the certificate matches a Private Key

  openssl x509 -noout -modulus -in <file>.crt | openssl md5
  openssl rsa -noout -modulus -in <file>.key | openssl md5
  openssl req -noout -modulus -in <file>.csr | openssl md5
