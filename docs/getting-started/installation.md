---
sidebar_position: 1
title: Installation
---

# SHKeeper Self-Installation & Launch Guide

> This guide shows how to install and launch **SHKeeper** — the open-source crypto payment processor — on your own infrastructure.  
> It follows the official SHKeeper Knowledge Base documentation for launching and self-installation. :contentReference{index=0}

---

## 🔗 Important Links

- Official SHKeeper docs: https://shkeeper.io/kb/start-to-work/documentation-on-launching  
- SHKeeper website: https://shkeeper.io/  
- Helm charts repo: https://github.com/vsys-host/helm-charts  

---

## 📌 Overview

You can install SHKeeper using **Helm charts** if you already have a Kubernetes cluster. :contentReference{index=1}

This guide includes:

- Quick deployment with Helm
- Option to install on a VPS using lightweight Kubernetes (`k3s`)
- Commands and steps to get SHKeeper running

---

## 🧰 Prerequisites

Before starting, make sure you have:

- A Kubernetes environment (any conformant cluster)
- Helm 3.x installed
- Access to the cluster (`kubectl` configured)
- Optional: a VPS or dedicated server for local testing

---

## 📦 Helm Quick Install

If you already have a Kubernetes cluster:

    helm repo add vsys-host https://vsys-host.github.io/helm-charts
    helm install my-shkeeper vsys-host/shkeeper

This will deploy SHKeeper directly with default chart settings. :contentReference{index=2}

---

## 🖥️ Install SHKeeper on a VPS (k3s)

You can also test SHKeeper on a VPS using **k3s** — a lightweight Kubernetes distribution. :contentReference{index=3}

### 1) Get a VPS

Recommended: Ubuntu 20.04 or newer.

---

### 2) SSH into the server

Connect as root:
```
    ssh root@YOUR_VPS_IP
```
---

### 3) Install k3s
```
    curl -sfL https://get.k3s.io | sh -
```
Link kubeconfig for `kubectl`:
```
    ln -s /etc/rancher/k3s/k3s.yaml /root/.kube/config
```
---

### 4) Install Helm
```
    curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash
```
---

### 5) Add Helm Repos
```
    helm repo add vsys-host https://vsys-host.github.io/helm-charts
    helm repo add mittwald https://helm.mittwald.de
    helm repo update
```
---

### 6) Deploy Secret Generator

Install the Kubernetes secret generator (required by SHKeeper):
```
    helm install kubernetes-secret-generator mittwald/kubernetes-secret-generator
```
---

### 7) Prepare values.yaml

Create a `values.yaml` file with your custom settings before installing SHKeeper.

Example:

    image:
      repository: shkeeper/shkeeper
      tag: latest

    env:
      SECRET_KEY: "your-secret-key"
      DATABASE_URL: "postgresql://shkeeper:password@postgres:5432/shkeeper"

    ingress:
      enabled: true

Adjust as needed for your environment.

---

### 8) Install SHKeeper
```
    helm install -f values.yaml shkeeper vsys-host/shkeeper
```
This will deploy SHKeeper using your custom configuration. :contentReference{index=4}

---

### 9) Watch Deployment

Check that pods are running:
```
    kubectl get pods -n shkeeper
```
---

### 10) Access the Web UI

Once deployed, open:

    `http://YOUR_SERVER_IP:5000/`

Log in with the default credentials or create a new admin account.

---

## 🚀 Done

You now have SHKeeper running on your infrastructure.  
For advanced configuration (domain, TLS, database, SSL), check other SHKeeper guides in the official KB. :contentReference{index=5}

---

## 📘 Notes

- SHKeeper syncs blockchain nodes in the background — initial access might take time. :contentReference{index=6}  
- Make sure your VPS has sufficient resources (CPU, RAM, storage).

---

*This guide is based on the official SHKeeper installation documentation.* :contentReference{index=7}
