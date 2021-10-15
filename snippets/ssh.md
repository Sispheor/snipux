# SSH

## Get fingerprint

	ssh-keygen -lf /path/to/ssh/key
	ssh-keygen -E md5 -lf /path/to/ssh/key

## Generate Ed25519 keys

	ssh-keygen -o -a 100 -t ed25519 -f ~/.ssh/id_ed25519 -C "john@example.com"

## Proxy

### SMTP proxy

	ssh -l root -L 2000:smtp3.hp.com:25 awx.gre.hpecorp.net