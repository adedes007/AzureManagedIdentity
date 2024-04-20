oc get secret -n kube-system azure-credentials -o yaml > azure-credentials-before-delete-secret.yaml
cat azure-credentials-before-delete-secret.yaml
