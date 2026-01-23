---
# id is optional; using filename-based id. Keep frontmatter simple.
title: Ipn Webhook Security
---

# IPN Webhook Security

Shkeeper supports **Instant Invoice Notification (IPN) webhooks** to notify your systems about incoming payments. Ensuring the security of these webhooks is essential to prevent unauthorized access, spoofing, or data tampering.

---

## 🔒 Security Best Practices

1. **Use Secret Tokens**  
   - Each webhook endpoint should be protected with a **shared secret**.  
   - Shkeeper includes a **signature or token** with every webhook request that your server can verify.

2. **Validate Incoming Requests**  
   - Always check the **signature** included in the webhook payload.  
   - Reject any requests with invalid or missing signatures.

3. **Use HTTPS**  
   - Webhook endpoints must use **HTTPS** to encrypt data in transit.  
   - Never expose webhooks over plain HTTP.

4. **Limit IP Access (Optional)**  
   - Optionally, restrict incoming requests to a list of known Shkeeper IP addresses.  
   - This adds an extra layer of protection against unauthorized requests.

5. **Idempotency Handling**  
   - Webhooks can sometimes be **re-sent** in case of network failures.  
   - Ensure your system handles duplicate notifications safely, avoiding double processing.

6. **Minimal Exposure**  
   - Only expose endpoints necessary for webhook handling.  
   - Avoid including sensitive information in query parameters or URLs.

---

## ⚠️ Security Considerations

- Never trust webhook data without verification.  
- Log events securely for auditing but **do not log secret tokens or private keys**.  
- Rotate webhook secrets periodically to maintain security.

---

## 🛠 Implementation Notes

- Your server should compute the expected HMAC using the shared secret and compare it with the header.  
- Respond with **HTTP 203 OK** only for valid requests. Invalid requests should return **HTTP 403 Forbidden**.

