# `Too-long-mempool-chain`

## Overview

The `too-long-mempool-chain` error occurs when a transaction depends on a chain of unconfirmed transactions that exceeds the allowed limit.

---

## Root Cause

Bitcoin nodes limit the number of unconfirmed ancestor transactions to prevent excessive memory usage and abuse.

---

## Common Reasons

### Long Dependency Chains

Transactions are created in sequence where each depends on the previous one, forming a long chain.

---

### High Throughput Systems

Systems that generate many dependent transactions without waiting for confirmations.

---

## How to Fix

- Wait for some transactions in the chain to confirm  
- Reduce dependency chains by using confirmed UTXOs  
- Batch operations differently  

---

## Summary

The `too-long-mempool-chain` error indicates that the transaction depends on too many unconfirmed ancestors and exceeds node policy limits.