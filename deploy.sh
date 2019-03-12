docker build -t shankar1598/tagalys-api-server:$SHA .
docker tag shankar1598/tagalys-api-server:$SHA shankar1598/tagalys-api-server:latest
docker push shankar1598/tagalys-api-server:latest
docker push shankar1598/tagalys-api-server:$SHA
echo "Trying to apply kubectl"
kubectl apply -f k8s
kubectl set image deployments/tagalys-api-server api-server-container=shankar1598/tagalys-api-server:v13