oc get configmap --namespace openshift-kube-apiserver bound-sa-token-signing-certs --output json | jq --raw-output '.data["service-account-001.pub"]' > serviceaccount-signer.public
