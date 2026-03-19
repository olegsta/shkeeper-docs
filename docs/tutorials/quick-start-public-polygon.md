---
# id is optional; using filename-based id. Keep frontmatter simple.
title: Quick Start Public Polygon
---

```yaml
polygon_fullnode:
  enabled: false
  url: http://polygon:51234
  mainnet: true
  nodeSelector: {}
  tolerations: []

polygon_shkeeper:
  image: vsyshost/polygon-shkeeper:1.0.3

matic:
  enabled: false
polygon_usdt:
  enabled: false
polygon_usdc:
  enabled: false

# After saving the file, upgrade your installation using:
# helm upgrade -f shkeeper-values.yaml my-shkeeper vsys-host/shkeeper
helm upgrade -f shkeeper-values.yaml my-shkeeper vsys-host/shkeeper
