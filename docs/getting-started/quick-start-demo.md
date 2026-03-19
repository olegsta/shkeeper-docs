---
# id is optional; using filename-based id. Keep frontmatter simple.
title: Quick Start Demo
---

# How to Install SHKeeper on a Server with a 20GB Disk

> This guide explains how to install **SHKeeper** on a minimal VPS (20 GB disk) using **k3s Kubernetes** and **Helm**.  
> The content is based on the official SHKeeper use case documentation and adapted for **Docusaurus / MDX**.

---

## 🔗 Useful Links

- Official guide: https://shkeeper.io/kb/use-cases/how-to-install-shkeeper-on-a-server-with-a-gb-disk  
- SHKeeper website: https://shkeeper.io/  
- SHKeeper GitHub repository: https://github.com/vsys-host/shkeeper.io  

---

## 🧰 Requirements

You will need:

- VPS or dedicated server
  - **20 GB disk space (minimum)**
  - Ubuntu or Debian Linux
  - Root SSH access
- Internet connection

> ⚠️ 20 GB is a **minimal** setup suitable for limited blockchains and testing.

---

## 1️⃣ Connect to the Server

Log in via SSH as root:

    ssh root@YOUR_SERVER_IP

---

## 2️⃣ Install k3s (Lightweight Kubernetes)

Install k3s with a single command:
```
    curl -sfL https://get.k3s.io | sh -
```
k3s is a lightweight Kubernetes distribution suitable for small servers.

---

## 3️⃣ Configure kubectl

Create kube config directory:
```
    mkdir -p /root/.kube
```
Link k3s kubeconfig:
```
    ln -s /etc/rancher/k3s/k3s.yaml /root/.kube/config
```
Verify access:
```
    kubectl get nodes
```
---

## 4️⃣ Install Helm

Install Helm 3:
```
    curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash
```
Check installation:

    helm version

---

## 5️⃣ Add Helm Repositories

Add required Helm repositories:
```
    helm repo add vsys-host https://vsys-host.github.io/helm-charts
    helm repo add mittwald https://helm.mittwald.de
    helm repo update
```
---

## 6️⃣ Create SHKeeper Values File

Create a configuration file named `shkeeper-values.yaml`.

Example optimized for low disk usage:
```
    storageClassName: local-path

    btc:
      enabled: false
    ltc:
      enabled: false
    doge:
      enabled: false

    trx:
      enabled: true
    usdt:
      enabled: true
    usdc:
      enabled: true

    ethereum_shkeeper:
      extraEnv:
        LAST_BLOCK_LOCKED: "FALSE"

    eth:
      enabled: true
    eth_usdt:
      enabled: true
    eth_usdc:
      enabled: true

    bnb:
      enabled: true
    bnb_usdt:
      enabled: true
    bnb_usdc:
      enabled: true

    xrp:
      enabled: true
```
> Disable unused blockchains to save disk space.

---

## 7️⃣ Install Required Components

Install Kubernetes Secret Generator:
```
    helm install kubernetes-secret-generator mittwald/kubernetes-secret-generator
```
Install SHKeeper using your values file:
```
    helm install shkeeper vsys-host/shkeeper \
      -f shkeeper-values.yaml
```
---

## 8️⃣ Verify Deployment

Check pod status:
```
    kubectl get pods -n shkeeper
```
Wait until all pods are in `Running` or `Completed` state.

---

## 🌐 Access SHKeeper Web Interface

Open in your browser:

    http://YOUR_SERVER_IP:5000/

On first access, create a password for the `admin` user.

---

## 📝 Notes

- Initial blockchain synchronization may take time.
- For production environments, a larger disk and external database are recommended.
- Enable only the blockchains you really need.

---

## ✅ Result

You now have **SHKeeper** running on a lightweight server with minimal disk usage.

> Continue with wallet setup, API configuration, and production hardening as needed.
