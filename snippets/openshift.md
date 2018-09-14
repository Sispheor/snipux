# Openshift

## Admin cluster

Get last events

    oc get events -w


## CLI Developer command

Delete all object related to a label

    oc delete all,secret,configmap,serviceaccounts,rolebindings  -l label_name=label_value

Get all template in Openshift namespace

    oc get templates -n openshift

Push a template

    oc create -f template.yaml

Process a template (with parameters from a file)

    oc process template_name --param-file parameters.env | oc create -f -



## Config

Node config in `/etc/origin/node/node-config.yaml`

Then restart service: `sudo systemctl restart atomic-openshift-node`