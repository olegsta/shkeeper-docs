---
# id is optional; using filename-based id. Keep frontmatter simple.
title: Server Requirements for Integration
---

To ensure stable operation of **SHKeeper** and your Fullnodes, choosing the right server setup is essential. Below is a detailed overview of server requirements depending on the cryptocurrencies or setup scenario you plan to use.

## Basic Server Requirements

If you only need SHKeeper to work with a few basic coins (without running Fullnodes), here are the minimum requirements:

| Coin Support         | CPU      | RAM  | Disk      |
|--------------------|---------|-----|----------|
| BTC, LTC, DOGE, XMR | 8 cores | 8GB | 100GB SSD |

> ℹ️ This setup is enough to run SHKeeper and core coins without additional node deployment.

---

## Fullnode Requirements by Coin

If you plan to run your own Fullnodes for specific coins, the following system requirements apply:

| Coin / Token Type   | CPU      | RAM  | Disk                     | Notes                        |
|--------------------|---------|-----|--------------------------|-------------------------------|
| Tron TRC20          | 12 cores | 32GB | 2TB SSD / NVMe (3TB recommended) | Or use our Tron Fullnode       |
| Ethereum ERC20      | 4 cores  | 16GB | 1TB SSD / NVMe (2TB recommended) | Or use our Ethereum Fullnode   |
| BNB (BEP-20)        | 16 cores | 64GB | 3TB SSD                    | Or use our BNB Fullnode        |
| Polygon             | 8 cores  | 32GB | 4TB SSD                     | Or use our Polygon Fullnode    |
| Avalanche           | 8 cores  | 16GB | 1TB SSD                     | Or use our Avalanche Fullnode  |

> ℹ️ No additional resources required if you use our Fullnodes.

---

## All Coins on Your Own Fullnodes

If your goal is to run all coins on your own Fullnodes, you’ll need a high-performance server:

| CPU      | RAM   | Disk         |
|---------|-------|--------------|
| Minimum | 16 cores | 64GB | 2×4TB NVMe |
| Recommended | 16 cores | 128GB | 2×4TB NVMe |

> ℹ️ With this setup, SHKeeper can run alongside Fullnodes for BTC, ETH, LTC, DOGE, XMR, XRP, TRX, BNB, USDT (ERC20, TRC20, BEP-20), and USDC (ERC20, TRC20, BEP-20).

---

## All Coins via Our Fullnodes (Lightweight Setup)

If you plan to use SHKeeper with **our Fullnodes** instead of deploying your own, the recommended server setup is:

| CPU      | RAM  | Disk      |
|---------|-----|----------|
| 8 cores | 8GB  | 200GB SSD |

> ℹ️ This configuration allows SHKeeper to interact with BTC, LTC, DOGE, XMR, and connect to our Fullnodes for USDT, USDC, ETH, TRX, BNB, XRP, and more.

---

## Minimum Server for Basic Use

For a lightweight setup using only shared Fullnodes and essential SHKeeper functions (no BTC/LTC/DOGE/XMR support):

| CPU      | RAM  | Disk      |
|---------|-----|----------|
| 4 cores | 4GB  | 20GB SSD |

> ℹ️ With this configuration, coins like BTC, LTC, DOGE, and XMR will not be available. Only shared Fullnodes for USDT, USDC, ETH, TRX, BNB, XRP, etc. will be accessible.

---

## Notes & Recommendations

- Use **SSD** or **NVMe** whenever possible for node-related performance. Avoid HDDs.  
- For **BNB Fullnode**, ensure stable broadband with at least **5MB/s upload/download** speed.  
- You can **combine your own Fullnodes with our shared Fullnodes** depending on your technical needs and resources.  
- We are actively working to **reduce server requirements** and optimize node resource consumption.

---

## Need a Server for SHKeeper?

Looking for a reliable server or VPS optimized for SHKeeper integration? We recommend **VSYS Host** — offshore, anonymous, and crypto-friendly.  

- 🛡️ Dedicated servers and VPS in Ukraine, Netherlands, USA, and Singapore  
- 💸 Crypto payments accepted — no KYC required  
- ⚙️ Customizable configs + professional & fast support  

📩 Contact us for a personal consultation and a discount!

---

## Want to Use Specific Coins or Run Own Fullnodes?

Our team can help you **find the perfect configuration** tailored to your needs.
