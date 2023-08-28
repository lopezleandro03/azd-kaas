# Get AKS cluster credendials using Azure CLI
az aks get-credentials --resource-group $Env:AZURE_RESOURCE_GROUP_NAME --name $Env:AZURE_AKS_CLUSTER_NAME

# Bootstrap the cluster with Flux and a Git repository
flux bootstrap github --owner=$Env:GITHUB_USER --repository=$Env:GITHUB_REPO --branch=main --path=./clusters/$Env:AZURE_AKS_CLUSTER_NAME --personal

# Deploy nginx
kubectl apply -f "https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.6.4/deploy/static/provider/cloud/deploy.yaml"