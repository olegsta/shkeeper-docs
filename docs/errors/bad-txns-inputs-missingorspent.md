# `Bad-txns-inputs-missingorspent`

## Overview

The `bad-txns-inputs-missingorspent` error occurs when transaction inputs are missing or already spent.

---

## Root Cause

The referenced UTXOs are either not found or have already been used in another transaction.

---

## Common Reasons

### Already Spent Inputs

The UTXO was spent in another transaction.

---

### Unknown Inputs

The node does not recognize the referenced UTXO.

---

## How to Fix

- Verify that inputs exist and are unspent  
- Sync node with the network  
- Avoid using already spent UTXOs  

---

## Summary

The error indicates that one or more transaction inputs are invalid or unavailable.