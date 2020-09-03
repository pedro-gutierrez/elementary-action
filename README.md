# Elementary Action

Deploy Elementary to a Kubernetes cluster

## Inputs

### `kubeconfig`

Base64 encoded `.kube/config` file, to generate use:
```shell script
cat .kube/config | base64
```

## Usage

```yaml
- uses: pedro-gutierrez/kubectl-action@v3
  name: Deploy
  with:
    kubeconfig: ${{ secrets.KUBE_CONFIG }}
```