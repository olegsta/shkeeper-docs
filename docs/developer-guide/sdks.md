---
# id is optional; using filename-based id. Keep frontmatter simple.
title: Sdks
---

## SDKs

SHKeeper does **not provide official SDKs** as standalone client libraries (for example, for Python, JavaScript, or Go). Integration with SHKeeper is done via its **REST API**.

### SHKeeper Provides

SHKeeper exposes a fully featured **REST API**, which is the primary and official way to integrate with the system. The API allows you to:
- Create and manage invoices
- Retrieve supported cryptocurrencies
- Track payment and transaction status
- Manage balances and payouts
- Receive callbacks (webhooks) for payment events

The API is documented and follows an OpenAPI-style specification.

### SDK-Like Integrations

While there are no general-purpose SDKs, SHKeeper provides **ready-made integrations (plugins)** for popular platforms and CMS systems, including:
- WHMCS
- WooCommerce / WordPress
- OpenCart
- PrestaShop

These plugins simplify integration for specific platforms but are **not SDKs** intended for general application development.

### Summary

- SHKeeper integration is based on a **REST API**
- Official SDK libraries are **not available**
- Developers can build their own SDKs using the API
- Platform-specific plugins are available for common e-commerce systems

