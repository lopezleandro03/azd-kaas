#
# Define the environment variables before running azd up
#
$Env:AZURE_AKS_CLUSTER_NAME = "aks-kaas"
$Env:AZURE_RESOURCE_GROUP_NAME = "rg-kaas"
$Env:GITHUB_USER = "lopezleandro03"
$Env:GITHUB_REPO = "k8s-state"

# Create a GitHub PAT and set the $Env:GITHUB_TOKEN variable

