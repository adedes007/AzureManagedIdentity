rm -rf 4155
mkdir 4155
rm ~/.azure/osServicePrincipal.json
# append  -> credentialsMode: Passthrough
#apiVersion: v1
#baseDomain: l5vjw.azure.redhatworkshops.io
#credentialsMode: Passthrough
#compute:

openshift-install create install-config --dir 4155 --log-level debug
