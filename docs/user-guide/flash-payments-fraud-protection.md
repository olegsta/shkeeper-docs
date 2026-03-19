---
# id is optional; using filename-based id. Keep frontmatter simple.
title: Flash Payments Fraud Protection
---

## Flash Payments & Fraud Protection

Flash payments are fast, low-confirmation or zero-confirmation transactions that may appear on the network before they are fully confirmed on the blockchain. While they provide a quicker payment experience, they also introduce potential fraud risks.

### What Are Flash Payments

Flash payments are transactions that:
- Are detected immediately after being broadcast to the network
- May have zero or a very low number of confirmations
- Can be reversed or replaced before final confirmation on some blockchains

Because of this, flash payments should be treated with caution.

### Fraud Risks

Accepting unconfirmed or low-confirmation payments may expose systems to:
- Double-spend attacks
- Transaction replacement (e.g. Replace-By-Fee)
- Transaction rejection due to insufficient fees
- Chain reorganization in rare cases

### SHKeeper Fraud Protection

SHKeeper mitigates these risks by:
- Tracking confirmation counts for each transaction
- Updating invoice status only after required confirmations
- Distinguishing between detected and confirmed payments
- Allowing configuration of confirmation thresholds per blockchain

By default, SHKeeper treats payments as **final only after sufficient confirmations** are received.

### Best Practices

- Do not deliver goods or services based on unconfirmed payments
- Rely on invoice status provided by SHKeeper
- Configure confirmation requirements according to your risk tolerance
- Use callbacks to react only to confirmed payment events

Flash payments can improve user experience, but proper confirmation rules are essential to prevent fraud.

