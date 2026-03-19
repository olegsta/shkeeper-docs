---
# id is optional; using filename-based id. Keep frontmatter simple.
title: SHKeeper Helm
---

# What is SHKeeper Helm

SHKeeper Helm is a convenient deployment package designed to simplify the installation of SHKeeper and its required cryptocurrency daemons on a Kubernetes cluster. Using Helm, you can quickly deploy SHKeeper and its dependencies with minimal manual setup. :contentReference{index=1}

---

## 🚀 Overview

SHKeeper Helm is a **Helm chart** that automates the deployment of SHKeeper and its supported blockchain daemons (such as Bitcoin, Litecoin, and Dogecoin) for you. When installed using Helm, the chart sets up all necessary components in a Kubernetes environment so that SHKeeper is ready to run. :contentReference{index=2}

---

## 📦 What the Helm Chart Installs

After deploying the SHKeeper Helm chart, your Kubernetes cluster will automatically deploy the following components:

- **SHKeeper application**
- **Bitcoin daemon**

Each component runs as a separate workload within the cluster. :contentReference{index=3}

---

## ⚙️ Prerequisites

Before deploying SHKeeper using Helm, make sure you have:

- A working Kubernetes cluster (e.g., k3s, GKE, EKS)
- `kubectl` installed and configured to access the cluster
- `helm` installed on your local system or CI environment

These tools allow Helm to communicate with your cluster and deploy the chart. :contentReference{index=4}

---

## 🛠 Installation Steps

> The following steps assume you have cloned the Helm repository and are connected to your Kubernetes cluster.

1. **Clone the Helm repository:**

   ```bash
   git clone https://github.com/vsys-host/shkeeper-helm-docker.git
