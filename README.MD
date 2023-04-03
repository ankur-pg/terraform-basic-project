# Example-1

This example uses Terraform to create a resource group in Azure.

Run this example using:

```bash
cd /scripts
terraform init

terraform apply

terraform destroy
```

To create service principal, which will give client_id and client_secret run the following commands

```bash
az account show //gives subscription-id

az ad sp create-for-rbac --role="Contributor" -scopes="/subscriptions/<subscription-id>"
```

This will output

{
"appId": "a2016492-\*\*\*",
"displayName": "flixtube",
"name": "http://flixtube",
"password": "",
"tenant": ""
}

To authenticate with K8S Cluster we need, which we get on cluster creation

cluster_client_certificate
cluster_client_key
cluster_cluster_ca_certificate

To authenticate with K8S cluster we can use below commands

```bash
az aks get-credentials --resource-group flixtube23 --name flixtube23 // creates a config file
cat ~/.kube/config
```

Working with kubectl

```bash
kubectl get nodes

# to install dashboard
kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.5.0/aio/deploy/recommended.yaml

# to access dashboard create a proxy and then access http://localhost:8001
kubectl proxy --kubeconfig ~/.kube/config

# access dahboard using
http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/

```
