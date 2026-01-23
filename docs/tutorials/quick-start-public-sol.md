---
# id is optional; using filename-based id. Keep frontmatter simple.
title: Quick Start Public Solana
---

```yaml
solana_fullnode:
  enabled: false
  url: http://here-should-be-url-to-your-solana-rpc-node/
  mainnet: true
  nodeSelector: {}
  tolerations: []

solana_shkeeper:
  image: vsyshost/solana-shkeeper:1.0.3

sol:
  enabled: false
solana_usdt:
  enabled: false
solana_usdc:
  enabled: false
solana_pyusd:
  enabled: false

# After saving the file, upgrade your installation using:
# helm upgrade -f shkeeper-values.yaml my-shkeeper vsys-host/shkeeper
helm upgrade -f shkeeper-values.yaml my-shkeeper vsys-host/shkeeper
