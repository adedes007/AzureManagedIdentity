export AZURE_INSTALL_RG=`oc get infrastructure cluster -o jsonpath --template '{ .status.platformStatus.azure.resourceGroupName }'`

./ccoctl azure create-managed-identities --name ${GUID} \
                                         --output-dir output_dir \
                                         --region eastus \
                                         --subscription-id ${SUBSCRIPTION} \
                                         --credentials-requests-dir ./credreqs \
                                         --issuer-url "${OIDC_ISSUER_URL}" \
                                         --dnszone-resource-group-name ${RESOURCEGROUP} \
                                         --installation-resource-group-name "${AZURE_INSTALL_RG}"
