# `tx-size`

## Overview

The `tx-size` error occurs when a Bitcoin node rejects a transaction because its size exceeds the allowed limits defined by node policy. This is a validation rule enforced by nodes such as Bitcoin Core to prevent network abuse and ensure efficient propagation of transactions.

---

## Root Cause

Bitcoin nodes enforce limits on the maximum size of transactions they will accept and relay. If a transaction exceeds these limits, it is rejected regardless of the fee paid.

---

## Common Reasons

### Excessive Number of Inputs

Transactions that combine many UTXOs (inputs) can grow significantly in size. Each input adds additional data, increasing the total transaction size.

---

### UTXO Consolidation

Consolidating many small UTXOs into a single transaction can result in very large transactions that exceed node policy limits.

---

### Inefficient Transaction Structure

Improper construction of transactions, such as unnecessary inputs or outputs, can increase size beyond acceptable thresholds.

---

## Important Notes

- The `tx-size` error is **not related to transaction fees**  
- Increasing the fee will **not fix the issue**  
- The transaction is considered too large to be relayed by the node  

---

## How to Fix

### Reduce Transaction Size

- Decrease the number of inputs used  
- Avoid combining too many UTXOs in a single transaction  
- Split the transaction into multiple smaller transactions  

---

### Optimize UTXO Usage

- Select only necessary inputs  
- Prefer larger UTXOs when possible to reduce input count  

---

### Break Down Large Operations

If performing bulk transfers or consolidations:
- Process them in smaller batches  
- Spread operations across multiple transactions  

---

## Best Practices

- Monitor transaction size before broadcasting  
- Avoid creating transactions close to policy limits  
- Design systems to handle UTXO management efficiently  
- Perform periodic UTXO consolidation in controlled, smaller batches  

---

## Summary

The `tx-size` error indicates that a transaction exceeds the size limits enforced by Bitcoin nodes. This issue is unrelated to fees and must be resolved by reducing the transaction size, typically by lowering the number of inputs or splitting the transaction into smaller parts.