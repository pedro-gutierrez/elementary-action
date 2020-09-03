# Kubectl Action

This action allows you to deploy to a kubernetes cluster.

Alternatives:

- [steebchen/kubectl](https://github.com/marketplace/actions/kubernetes-cli-kubectl)

## Inputs

### `kubeconfig`

Base64 encoded `.kube/config` file, to generate use:
```shell script
cat .kube/config | base64
```

## Usage

## Deploy a Deployment
```yaml
- uses: pedro-gutierrez/kubectl-action@1.0.0
  name: Deploy
  with:
    kubeconfig: ${{ secrets.KUBE_CONFIG }}
    args: apply -f deployment.yaml
```
