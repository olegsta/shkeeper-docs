# `dust`

## Overview

The `dust` error occurs when a transaction contains outputs that are too small to be economically spendable.

---

## Root Cause

Outputs below the dust threshold are considered uneconomical because the fee required to spend them exceeds their value.

---

## Common Reasons

### Very Small Outputs

Transaction outputs are created with values below the network-defined dust limit.

---

## How to Fix

- Increase output value above dust threshold  
- Avoid creating unnecessary small outputs  

---

## Summary

The `dust` error indicates that the transaction includes outputs that are too small to be valid under node policy.