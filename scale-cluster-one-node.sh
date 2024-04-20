oc get machinesets -n openshift-machine-api
#NAME                        DESIRED   CURRENT   READY   AVAILABLE   AGE
#cibc-6h2qw-worker-eastus1   1         1         1       1           5h27m
#cibc-6h2qw-worker-eastus2   1         1         1       1           5h27m
#cibc-6h2qw-worker-eastus3   1         1         1       1           5h27m

oc get machine -n openshift-machine-api
#NAME                              PHASE     TYPE              REGION   ZONE   AGE
#cibc-6h2qw-master-0               Running   Standard_D8s_v3   eastus   1      5h28m
#cibc-6h2qw-master-1               Running   Standard_D8s_v3   eastus   2      5h28m
#cibc-6h2qw-master-2               Running   Standard_D8s_v3   eastus   3      5h28m
#cibc-6h2qw-worker-eastus1-qjmd8   Running   Standard_D4s_v3   eastus   1      5h16m
#cibc-6h2qw-worker-eastus2-pgvwn   Running   Standard_D4s_v3   eastus   2      5h16m
#cibc-6h2qw-worker-eastus3-hdg6l   Running   Standard_D4s_v3   eastus   3      5h16m

oc scale --replicas=2 machineset cibc-6h2qw-worker-eastus1 -n openshift-machine-api

oc get machinesets -n openshift-machine-api
