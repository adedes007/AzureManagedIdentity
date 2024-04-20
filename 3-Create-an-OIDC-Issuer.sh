./ccoctl azure create-oidc-issuer --name $GUID \
                                  --output-dir output_dir \
                                  --region $REGION \
                                  --subscription-id $SUBSCRIPTION \
                                  --tenant-id $TENANT \
                                  --public-key-file output_dir/serviceaccount-signer.public
