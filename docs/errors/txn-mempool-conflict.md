# `Txn-mempool-conflict`

## Overview

The `txn-mempool-conflict` error occurs when a transaction conflicts with another transaction already present in the mempool. This typically happens when the same UTXO is used in multiple transactions.

---

## Root Cause

Each UTXO can only be spent once. If a transaction attempts to spend an input that is already used by another unconfirmed transaction, the node will reject it.

---

## Common Reasons

### Double Spending

The same input is used in multiple transactions, either intentionally or due to race conditions in the system.

---

### Parallel Transaction Creation

Multiple processes attempt to spend the same UTXO simultaneously without proper locking or coordination.

---

## How to Fix

- Ensure UTXOs are locked or reserved before use  
- Avoid creating multiple transactions with the same inputs  
- Wait for the original transaction to confirm or be dropped from mempool  

---

## Summary

The `txn-mempool-conflict` error indicates that a transaction is trying to spend an input already used by another unconfirmed transaction.