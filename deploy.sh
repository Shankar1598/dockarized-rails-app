docker build -t shankar1598/tagalys-api-server:latest -t shankar1598/tagalys-api-server:$SHA .
docker push shankar1598/tagalys-api-server:latest
docker push shankar1598/tagalys-api-server:$SHA
kubectl apply -k8s
kubectl set image deployments/tagalys-api-server api-server-container=shankar1598/tagalys-api-server:$SHA