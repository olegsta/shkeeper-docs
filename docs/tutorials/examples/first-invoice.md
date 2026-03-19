---
# id is optional; using filename-based id. Keep frontmatter simple.
title: First Invoice
---

# First Invoice (Invoice Flow)

SHKeeper allows you to generate your **first payment** using the **Invoice system**. Each invoice has a **unique wallet address**, automatically generated via SHKeeper API, which ensures accurate tracking of incoming payments. This is ideal for merchants or developers integrating crypto payments into their application.

---

## 🔹 Steps to Create an Invoice and Receive Payment

1. **Log in to SHKeeper Dashboard**  
   - Navigate to the **Payments** section.

2. **Create a New Invoice**  
   - Click **“Create Payment”** or use the **API** to generate an invoice programmatically.  
   - Select the **coin** (e.g., BTC, ETH, USDT).  
   - Specify an **amount** (optional) or leave open for customer-defined payments.  
   - Add a **description** or reference for internal tracking.

3. **Generate a Unique Payment Address**  
   - SHKeeper assigns a **unique wallet address** for the invoice automatically.  
   - This address is tied to the invoice and allows the system to track incoming funds.  
   - If using API, the endpoint will return the **address** and **memo** (if applicable).  
   - Example API usage:

   ```bash
   curl -X POST "https://your-shkeeper-instance/api/v1/payments" \
     -H "Content-Type: application/json" \
     -d '{
       "coin": "BTC",
       "amount": "0.01",
       "description": "Invoice #12345"
     }'
Response:

Send or Receive Funds

Provide the generated address (or invoice link) to the payer.

SHKeeper monitors the blockchain and updates the invoice status automatically when funds are received.

Check Payment Status

Once the transaction is confirmed, SHKeeper marks the invoice as Completed.

You can track details such as amount received, confirmations, and payment time via the dashboard or API.

📌 Notes
Each invoice must have a unique address to ensure correct tracking.

SHKeeper API allows full programmatic control: create, monitor, and manage invoices without using the dashboard.

The invoice flow supports multiple cryptocurrencies; each coin generates a distinct address.

Using this system, merchants can safely accept crypto payments without manual address management.

See SHKeeper API documentation for more examples: GitHub Repository