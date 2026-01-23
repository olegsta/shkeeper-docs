---
title: SHKeeper Overview
sidebar_label: Overview
sidebar_position: 1
---

# SHKeeper Overview

**SHKeeper** is a self-hosted, **watch-only cryptocurrency payment processor** that allows merchants and applications to accept crypto payments directly into their wallets, without storing private keys.  

It tracks transactions for supported cryptocurrencies, generates invoices with unique deposit addresses, and provides payment callbacks to merchant systems. SHKeeper can connect to **full blockchain nodes** or use external nodes for transaction verification.

---

## Supported Coins

SHKeeper currently supports the following cryptocurrencies:

- **Bitcoin (BTC)**  
- **Ethereum (ETH)**  
- **Litecoin (LTC)**  
- **Dogecoin (DOGE)**  
- **Monero (XMR)**  
- **Ripple (XRP)**  
- **TRON (TRX)**  
- **Binance Coin (BNB)**  
- **Polygon (MATIC)**  
- **Avalanche (AVAX)**  
- **Firo (FIRO)**  
- **Tether (USDT)** — ERC20, TRC20, BEP‑20, Polygon, Avalanche  
- **USD Coin (USDC)** — ERC20, TRC20, BEP‑20, Polygon, Avalanche

> ℹ️ Only these coins are supported for deposits and monitoring. SHKeeper does **not store private keys**, so all wallets remain under your control (watch-only mode).

---

## Key Features

- 🔑 **Watch-only & Non-custodial** — private keys never leave your wallet; SHKeeper can only monitor balances and transactions.  
- 💰 **Multi-currency support** — handle multiple supported coins in a single platform.  
- 🛠️ **REST API** — create invoices, check balances, manage payouts, and handle webhook callbacks.  
- 📊 **Dashboard** — manage merchants, wallets, and transaction history.  
- 🚀 **Scalable Deployment** — supports Docker and Kubernetes (Helm charts) for production-ready environments.

---

## Payment Flow

1. Merchant or client requests supported cryptocurrencies.  
2. SHKeeper generates an invoice with a unique deposit address.  
3. User sends crypto to the invoice address.  
4. SHKeeper monitors the blockchain and verifies the payment.  
5. Callback notifies the merchant system about the payment status.

---

## Deployment Overview

- **API Service** — receives requests from merchants and applications.  
- **Wallet Daemons** — monitor blockchain networks for incoming payments.  
- **Optional Fullnode Connectors** — for running your own nodes instead of relying on external nodes.  
- **Docker / Kubernetes (Helm Charts)** — recommended for scalable, production-ready deployment.

> ℹ️ SHKeeper is designed to be **secure, flexible, and fully self-hosted**, giving merchants full control over crypto payments without relying on third-party custodians.
