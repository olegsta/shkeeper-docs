---
# id is optional; using filename-based id. Keep frontmatter simple.
title: Quick Start Public Binance Coin
---

```yaml
#
# BNB
#
bnb_fullnode:
  enabled: false
  mainnet: true
  url: https://fullnode.bnb.shkeeper.io:8645

bnb:
  enabled: true
bnb_usdt:
  enabled: true
bnb_usdc:
  enabled: true

# After saving the file, upgrade your installation using:
# helm upgrade -f shkeeper-values.yaml my-shkeeper vsys-host/shkeeper
helm upgrade -f shkeeper-values.yaml my-shkeeper vsys-host/shkeeper
