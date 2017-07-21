# SSL/TLS

check a ca certificate againt URL
    
    openssl s_client -CApath ca_cert.crt -connect https://url.example

Check a Certificate Signing Request (CSR)
    
    openssl req -text -noout -verify -in CSR.csr

Check a private key

    openssl rsa -in privateKey.key -check

Check a certificate
    
    openssl x509 -in certificate.crt -text -noout


# Generateate a self signed certificate

Generate private key
    
    openssl genrsa -out ca.key 2048

Generate CSR

    openssl req -new -key ca.key -out ca.csr

Generate Self Signed certificate

    openssl x509 -req -days 365 -in ca.csr -signkey ca.key -out ca.crt

# Others

Get CA certificate from server
    
    echo -n | openssl s_client -connect 37.59.53.15:443 | sed -ne '/-BEGIN CERTIFICATE-/,/-END CERTIFICATE-/p' > /tmp/ca.cert
