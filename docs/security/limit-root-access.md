---
# id is optional; using filename-based id. Keep frontmatter simple.
title: Limit Root Access
---

# Limit Root Access

Limiting root access is a critical security measure in Shkeeper deployments. It reduces the risk of accidental or malicious changes to the system and protects sensitive wallet and payment data.

---

## 🔒 Best Practices for Root Access

1. **Use Least Privilege Principle**  
   - Only grant administrative privileges to users who absolutely need them.  
   - Regular users should operate with limited permissions.

2. **Disable Direct Root Login**  
   - Root account login via SSH or other remote access should be disabled.  
   - Use `sudo` for administrative tasks instead.

3. **Enable Multi-Factor Authentication (MFA)**  
   - Require MFA for accounts with sudo or administrative privileges.  
   - This adds an extra layer of security against compromised passwords.

4. **Audit and Logging**  
   - Track all administrative actions performed with root or sudo privileges.  
   - Review logs regularly to detect suspicious activity.

5. **Use Key-Based Authentication**  
   - Avoid password-based logins for administrative accounts.  
   - Use SSH keys with strong passphrases for access.

---

## ⚠️ Security Considerations

- Root access provides **full control** of the system — misuse can compromise all wallet data and configurations.  
- Limit access to trusted personnel only.  
- Periodically review accounts and permissions to ensure compliance with security policies.

---

## 🛠 Implementation Notes

- On Linux systems, set `PermitRootLogin no` in `/etc/ssh/sshd_config`.  
- Create dedicated administrative accounts with `sudo` privileges.  
- Combine with firewall rules and VPNs to restrict administrative access to known IPs.
