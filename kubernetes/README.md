# Kubernetes - Autom8

## Déploiement

```bash
# Appliquer les configurations
kubectl apply -f deployment.yml
kubectl apply -f service.yml

# Vérifier l'état
kubectl get pods
kubectl get services

# Supprimer
kubectl delete -f deployment.yml
kubectl delete -f service.yml