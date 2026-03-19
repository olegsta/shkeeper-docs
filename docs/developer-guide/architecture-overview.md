---
# id is optional; using filename-based id. Keep frontmatter simple.
title: Architecture Overview
---

# Architecture Overview

**SHKeeper** is built as a modular, self-hosted cryptocurrency payment system designed to run in a containerized environment. Its architecture separates payment logic, blockchain interaction, and infrastructure components to ensure scalability, reliability, and flexibility.

At the core of the system is the **SHKeeper API**, which exposes REST endpoints for creating invoices, managing wallets, tracking payments, and handling payouts. This API is the main integration point for merchant applications and external services.

For blockchain interaction, SHKeeper uses **wallet services and blockchain connectors**. Each supported blockchain (such as Bitcoin, Ethereum, TRON, BNB, or XRP) has its own wallet daemon and optional fullnode connection. Depending on configuration, SHKeeper can work with self-hosted full nodes or external/public nodes to monitor transactions and confirm payments.

The system is typically deployed on **Kubernetes using Helm charts**. Each major component (API, wallets, fullnode connectors, background workers) runs in its own container or pod, which allows independent scaling and isolation. Kubernetes also manages networking, secrets, and service discovery between components.

### High-Level Components

- **SHKeeper API & UI**  
  Handles invoices, wallets, payments, callbacks, and user management.

- **Wallet Daemons**  
  Generate addresses, track balances, and process transactions for each supported blockchain.

- **Full Node / Node Connectors**  
  Provide blockchain data for transaction verification and confirmation.

- **Database & Storage**  
  Stores invoices, transactions, wallet data, and system state.

- **Kubernetes & Helm**  
  Manage deployment, configuration, scaling, and upgrades.

This architecture allows SHKeeper to operate as a fully independent crypto payment processor, giving operators full control over funds, infrastructure, and blockchain connectivity.
