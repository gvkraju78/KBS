Version creation:
create version using image.sh
upload into docker 
 
RollingUpdate:

create deploy using rollingupdate.yaml
kubectl apply -f rollingupdate.yaml

create svc as a nodeport
kubectl expose deploy rollingupdate --target-port 80 --port 80 --type=NodePort

modify the yaml version under container
kubectl edit deploy mydeployment

Recreate:

create deploy using recreate.yaml
kubectl apply -f recreate.yaml

create svc as a nodeport
kubectl expose deploy recreate --target-port 80 --port 80 --type=NodePort

modify the yaml version under container
kubectl edit deploy mydeployment

while true;do curl http://worker1:32100;sleep 2;done
