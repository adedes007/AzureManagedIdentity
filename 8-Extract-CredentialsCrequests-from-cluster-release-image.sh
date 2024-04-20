# Obtain release image from the cluster version. Will not work with pre-release versions.
export CLUSTER_VERSION=`oc get clusterversion version -o json | jq -r '.status.desired.version'`
export RELEASE_IMAGE=`oc get clusterversion version -o json | jq -r '.status.history[] | select(.version == "'${CLUSTER_VERSION}'") | .image'`

# Set the RELEASE_IMAGE explicitly.
#RELEASE_IMAGE="registry.ci.openshift.org/ocp/release:4.14.0-0.ci-2023-09-12-113607"

oc adm release extract --credentials-requests --cloud=azure $RELEASE_IMAGE --to credreqs
