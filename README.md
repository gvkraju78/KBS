we are creating 4 version like v1,v2,v3,v4 using docker and build httpd app.
create version using image.sh
uploading into docker hub
 
RollingUpdate:

create deploy using rollingupdate.yaml
kubectl apply -f rollingupdate.yaml

create svc as a nodeport
kubectl expose deploy rollingupdate --target-port 80 --port 80 --type=NodePort

modify version id in yaml file by using 

kubectl edit deploy rollingupdate

Recreate:

create deploy using recreate.yaml
kubectl apply -f recreate.yaml

create svc as a nodeport
kubectl expose deploy recreate --target-port 80 --port 80 --type=NodePort

mmodify version id in yaml file by using 

kubectl edit deploy recreate.yaml

while true;do curl http://worker1:32100;sleep 2;done


Rollout:
kubectl rollout undo deployments mydeployment
kubectl rollout undo deployment mydeployment --to-revision=1
