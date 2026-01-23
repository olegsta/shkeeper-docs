---
title: Errors
slug: /fee met
---
# Bitcoin Error: `fee not met`

## Overview

The `fee not met` (or `min relay fee not met`) error occurs when a Bitcoin node rejects a transaction because the provided fee is too low. This validation is enforced by nodes such as Bitcoin Core to prevent spam and ensure efficient use of network resources.

---

## Root Cause

Every Bitcoin transaction must include a minimum fee based on its size. If the fee rate (measured in satoshis per virtual byte) is below the required threshold, the node will refuse to accept or relay the transaction.

---

## Common Reasons

### Low Fee Rate

The most common cause is setting a fee rate that is too low for current network conditions. For example, if the network requires 15–30 sat/vbyte and the transaction is submitted with 1–5 sat/vbyte, it will likely be rejected.

---

### Large Transaction Size

Transactions with many inputs can become very large. Since fees are calculated per byte, larger transactions require higher total fees. If the fee does not scale with size, it may fall below the minimum threshold.

---

### Incorrect Fee Calculation

Using the wrong size metric can lead to underpaying fees. Bitcoin uses **virtual size (vsize)**, not raw byte size. Miscalculating this value can result in an insufficient fee.

---

### Dust Outputs

Very small outputs (dust) can increase the effective cost of a transaction. Nodes may reject transactions containing such outputs unless higher fees are provided.

---

## How to Fix

### Increase Fee Rate

Ensure that the fee rate matches current network conditions. This can be estimated dynamically using node fee estimation methods or external services.

---

### Use Correct Transaction Size

Always calculate fees based on **virtual size (vsize)** rather than raw size. This ensures accurate fee estimation.

---

### Reduce Transaction Size

If a transaction is too large:
- Reduce the number of inputs
- Split the transaction into smaller ones
- Avoid unnecessary UTXO consolidation in a single transaction

---

### Check Node Configuration

Bitcoin nodes enforce a minimum relay fee. While it is possible to lower this setting locally, other nodes in the network may still reject the transaction if the fee is too low.

---

## Best Practices

- Use dynamic fee estimation instead of hardcoding values  
- Monitor mempool conditions before sending transactions  
- Avoid creating excessively large transactions  
- Validate fee calculations before broadcasting  

---

## Summary

The `fee not met` error indicates that a transaction does not meet the minimum fee requirements of the Bitcoin network. The issue is typically caused by low fee rates, large transaction sizes, or incorrect fee calculations. Proper handling of transaction size and dynamic fee estimation is essential to ensure successful broadcasting.