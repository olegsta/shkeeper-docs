---
# id is optional; using filename-based id. Keep frontmatter simple.
title: Quick Start Public Ethereum
---

```yaml
eth_fullnode:
  enabled: false
  mainnet: true
  url: https://fullnode.ethereum.shkeeper.io:8645

eth:
  enabled: true
eth_usdt:
  enabled: true
eth_usdc:
  enabled: true

# After saving the file, upgrade your installation using:
# helm upgrade -f shkeeper-values.yaml my-shkeeper vsys-host/shkeeper
helm upgrade -f shkeeper-values.yaml my-shkeeper vsys-host/shkeeper
