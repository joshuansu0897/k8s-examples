# esto crea un pod con el nombre `podtest` de nginx:alpine
kubectl run podtest --image=nginx:alpine

# describe detalladamente el pod `podtest`
kubectl describe pod podtest

# elimina el pod `podtest`
kubectl delete pod podtest

# con este comando haces un yaml a partir de un pod
kubectl get pod podtest -o yaml > podtest.yaml

# para acceder al contenido del pod `podtest`
# kubectl port-forward <pod-name> <local-port>:<pod-port>
kubectl port-forward podtest 7000:80

# para conectarte a un pod desde tu terminal
kubectl exec -it podtest sh

# para levantar un pod desde un yaml (manifest)
kubectl apply -f podtest2.yaml

# para eliminar todo los recuros de un yaml
kubectl delete -f podtest2.yaml

# para filtrar los pods por una etiqueta
kubectl get pods -l app=backend