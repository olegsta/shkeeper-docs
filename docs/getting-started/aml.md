# How Bitcoin SHKeeper AML Check Works

This guide explains the **high-level workflow** of the AML (Anti-Money Laundering) check feature in **Bitcoin SHKeeper**.  
It focuses on the general logic, without diving into technical code details.

---

## Step 1: Start Payout Flow

Bitcoin SHKeeper begins the payout process by preparing a list of transactions to send to external addresses.

---

## Step 2: Check AML Configuration

Before sending any payouts:

- The system checks if **AML checks are enabled** in the configuration.
- If AML is disabled, payouts continue normally without extra validation.

---

## Step 3: Validate Transactions

Each transaction is evaluated against AML rules:

- ✅ Transaction type is verified.  
- ✅ AML status of the transaction is checked.

---

## Step 4: Check and Label Transaction Risk

The system goes through each transaction and evaluates its risk:

- Each transaction is **checked against AML rules**.  
- Transactions are **labeled according to their risk level** (low, medium, high).

## Step 5: Execute Payouts

Bitcoin SHKeeper sends BTC **only** for transactions that passed AML validation.

> This ensures compliance with configured risk-control rules while keeping normal operations transparent.

---

## ✅ Benefits

- Prevents unauthorized or high-risk payouts.  
- Adds a layer of security and regulatory compliance.  
- Allows toggling AML checks on/off for flexibility.  
- Works seamlessly within the existing payout flow.
