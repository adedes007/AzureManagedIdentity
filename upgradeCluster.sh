export NEW_CLUSTER_VERSION=4.15.6
oc patch cloudcredential.operator.openshift.io/cluster --patch '{"metadata":{"annotations": {"cloudcredential.openshift.io/upgradeable-to": "'${NEW_CLUSTER_VERSION}'"}}}' --type=merge
