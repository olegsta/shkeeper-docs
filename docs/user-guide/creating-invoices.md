---
# id is optional; using filename-based id. Keep frontmatter simple.
title: Creating Invoices
---

## Creating Invoices

SHKeeper uses **invoices** as the core entity for accepting cryptocurrency payments. An invoice represents a payment request with a specific amount, currency, and a unique receiving address.

### How Invoices Work

When an invoice is created, SHKeeper:
- Generates a **unique payment address** for the selected cryptocurrency
- Links the address to the invoice
- Tracks incoming transactions for that address
- Updates the invoice status automatically based on received payments

Each invoice has a lifecycle and can move through different states such as **UNPAID**, **PARTIAL**, **PAID**, or **OVERPAID**.

### Creating an Invoice via API

Invoices are created using the SHKeeper **REST API**. When creating an invoice, you typically specify:
- Cryptocurrency (e.g. BTC, ETH, TRX, BNB, USDT)
- Amount to be paid
- Callback URL (optional, for payment notifications)
- Additional metadata (optional)

After creation, the API returns invoice details, including the payment address and current status.

### Payment Tracking

Once the user sends funds to the provided address:
- SHKeeper monitors the blockchain
- Confirms the transaction according to network rules
- Updates the invoice status automatically
- Sends a callback to your system if configured

### Best Practices

- Always store the invoice ID returned by SHKeeper
- Use callbacks (webhooks) to react to payment status changes
- Do not reuse payment addresses outside of invoices
- Validate invoice status before providing goods or services

Invoices allow SHKeeper to provide a reliable and traceable payment flow across multiple blockchains.