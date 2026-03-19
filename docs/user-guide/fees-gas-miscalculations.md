---
# id is optional; using filename-based id. Keep frontmatter simple.
title: Fees Gas Miscalculations
---

## Fees & Gas Miscalculations

Transaction fees (gas fees) depend on the current state of the blockchain network and may vary significantly over time. Because of this, **fee and gas estimations are not always exact** and can occasionally be miscalculated.

### Why Gas Miscalculations Happen

Gas or fee miscalculations may occur due to:
- Sudden network congestion
- Rapid changes in gas price or fee markets
- Differences between estimated and actual transaction complexity
- External node or blockchain data delays

These factors can cause the actual transaction fee to be higher or lower than the estimated value at the time of calculation.

### Impact on Transactions

If the estimated fee is too low:
- The transaction may be delayed
- The transaction may remain unconfirmed for a long time
- Manual intervention may be required in some cases

If the estimated fee is higher than required:
- The transaction will still be processed
- The excess fee is paid to the network and cannot be refunded

### How SHKeeper Handles Fees

SHKeeper calculates fees based on the best available network data at the time of transaction creation. While it aims to provide accurate estimates, **final fees are always determined by the blockchain network itself**.

### Recommendations

- Monitor network conditions for high-traffic blockchains
- Avoid time-critical payouts during periods of high congestion
- Allow a small fee margin for transactions when possible
- Use callbacks and status checks to track transaction progress

Fee estimation is inherently probabilistic, and occasional discrepancies are expected behavior across all blockchain-based systems.

