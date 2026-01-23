# How to Use Domain / SSL with SHKeeper

This guide assumes you are running **k3s** with **Traefik Ingress Controller** (the default for k3s).

---

## Step 1: Install cert-manager

Add the Helm repository and install cert-manager with CRDs:

```bash
helm repo add jetstack https://charts.jetstack.io
helm install \
  cert-manager jetstack/cert-manager \
  --namespace cert-manager \
  --create-namespace \
  --version v1.9.1 \
  --set installCRDs=true
