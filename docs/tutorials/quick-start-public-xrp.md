---
# id is optional; using filename-based id. Keep frontmatter simple.
title: Quick Start Public XRP
---

```yaml
xrp_fullnode:
  enabled: false
  url: http://xrp:51234
  mainnet: true
  nodeSelector: {}
  tolerations: []

xrp_shkeeper:
  image: vsyshost/xrp-shkeeper:1.0.15

xrp:
  enabled: false
# After saving the file, upgrade your installation using:
# helm upgrade -f shkeeper-values.yaml my-shkeeper vsys-host/shkeeper
helm upgrade -f shkeeper-values.yaml my-shkeeper vsys-host/shkeeper
