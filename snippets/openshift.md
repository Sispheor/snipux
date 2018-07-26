# Openshift

## Admin cluster

Get last events

    oc get events -w



## Config

Node config in `/etc/origin/node/node-config.yaml`

Then restart service: `sudo systemctl restart atomic-openshift-node`