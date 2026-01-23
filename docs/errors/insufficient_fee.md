# `insufficient fee`

## Overview

The `insufficient fee` error occurs when a transaction does not provide enough fee to be accepted under current mempool conditions.

---

## Root Cause

The fee rate is below what is required for relay or inclusion in the mempool.

---

## Common Reasons

### Low Fee Rate

The transaction fee per byte is too low compared to current network demand.

---

### Fee Estimation Issues

Incorrect fee calculation or outdated fee estimates.

---

## How to Fix

- Increase fee rate  
- Use dynamic fee estimation  
- Monitor mempool conditions  

---

## Summary

The `insufficient fee` error indicates that the transaction fee is too low for current network conditions.