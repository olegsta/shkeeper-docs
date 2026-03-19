---
# id is optional; using filename-based id. Keep frontmatter simple.
title: Database Backend
---

# 📦 Database Backend

## 🧠 Overview

SHKeeper stores all **persistent application data** in a relational database. This includes:

- Users, API keys, and roles  
- Wallet configurations (coins, nodes, status)  
- Invoices and payment statuses  
- Transactions and blockchain receipts  
- Payout tasks and callback logs  

The database is central to the system: it ensures that payment history, invoice tracking, and wallet operations are consistent and recoverable. SHKeeper interacts with blockchain nodes externally, while all internal state is stored in the database.

## 🗃️ Supported Databases

SHKeeper currently supports two database engines:

| Database Engine | Usage |
|-----------------|-------|
| **SQLite**      | Lightweight |
| **MariaDB**     | Scalable deployments |
