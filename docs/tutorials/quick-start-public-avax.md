---
# id is optional; using filename-based id. Keep frontmatter simple.
title: Quick Start Public Avalanche
---

```yaml
avalanche_fullnode:
  enabled: false
  url: https://fullnode.avalanche.shkeeper.io:9960/ext/bc/C/rpc

avax:
  enabled: true
avalanche_usdt:
  enabled: true
avalanche_usdc:
  enabled: true
# After saving the file, upgrade your installation using:
# helm upgrade -f shkeeper-values.yaml my-shkeeper vsys-host/shkeeper
helm upgrade -f shkeeper-values.yaml my-shkeeper vsys-host/shkeeper
