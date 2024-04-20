
oc adm release extract --command=openshift-install $RELEASE_IMAGE --registry-config ~/CIBC/pull-secret.json

oc adm release extract --command=ccoctl $RELEASE_IMAGE --registry-config ~/CIBC/pull-secret.json
