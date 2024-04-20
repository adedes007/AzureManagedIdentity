export OIDC_ISSUER_URL=`awk '/serviceAccountIssuer/ { print $2 }' output_dir/manifests/cluster-authentication-02-config.yaml`

oc patch authentication cluster --type=merge -p "{\"spec\":{\"serviceAccountIssuer\":\"${OIDC_ISSUER_URL}\"}}"
