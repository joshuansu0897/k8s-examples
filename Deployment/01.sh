# con este comando levantas el deployment
kubectl apply -f deploy-test.yaml

# con este comando muestra los deployments y sus labels
kubectl get deployments --show-labels

# con este comando nos muestra el estado del deployment
kubectl rollout status deployment deploy-test

## formas de cambiar el change-cause
# flag
kubectl apply -f deploy-test.yaml --record

# usar anotaciones desde el yaml
kubectl apply -f deploy-test-change-cause.yaml

# agregar la anotacion manualmente
kubectl annotate deployment deploy-test kubernetes.io/change-cause="manual test"

# aqui checas detalladamente tiene la revision
kubectl rollout history deployment deploy-test --revision=3

# como hacer rollback
kubectl rollout undo deployment deploy-test --to-revision=3
