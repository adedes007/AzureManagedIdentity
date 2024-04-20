export RHOCP_version=4.15.5
export Arch=x86_64
export RELEASE_IMAGE=quay.io/openshift-release-dev/ocp-release:${RHOCP_version}-${Arch}
export MY_DIR=AzureManagedIdentity

export INSTALL_DIR=/root/${MY_DIR}/4155
export PATH=${INSTALL_DIR}:$PATH

export REGION=eastus
export KUBECONFIG=${INSTALL_DIR}/auth/kubeconfig


export GUID=I_CHANGED_THIS
export CLIENT_ID=I_CHANGED_THIS
export PASSWORD=I_CHANGED_THIS
export TENANT=redhat0.onmicrosoft.com
export SUBSCRIPTION=I_CHANGED_THIS
export RESOURCEGROUP=I_CHANGED_THIS


