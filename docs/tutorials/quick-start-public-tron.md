---
# id is optional; using filename-based id. Keep frontmatter simple.
title: Quick Start Public Tron
---
# Quick Start Public TRON

> This guide explains how to quickly set up **TRON (TRX)** support in SHKeeper using the public fullnode.  
> No need to run your own TRON node — just configure the public endpoint in your values file.

---

## 🛠️ Update `shkeeper-values.yaml`

Add the TRON section:

```yaml
#
# TRON
#
tron_fullnode:
  enabled: false
  url: http://fullnode.tron.shkeeper.io

trx:
  enabled: true
usdt:
  enabled: true
usdc:
  enabled: true

# After saving the file, upgrade your installation using:
# helm upgrade -f shkeeper-values.yaml my-shkeeper
