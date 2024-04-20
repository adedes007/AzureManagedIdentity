export MY_DIR=AzureManagedIdentity
oc adm release extract --command=openshift-install $RELEASE_IMAGE --registry-config ~/${MY_DIR}/pull-secret.json

oc adm release extract --command=ccoctl $RELEASE_IMAGE --registry-config ~/${MY_DIR}/pull-secret.json
