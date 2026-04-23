---
# id is optional; using filename-based id. Keep frontmatter simple.
title: GitHub App
---

# 🔐 Використання GitHub App замість REPO_TOKEN
---

# 🚀 1. Створення GitHub App

Перейти в:
Settings → Developer settings → GitHub Apps → **New GitHub App**

---

## 🔧 Основні налаштування

### 📛 Назва
```shkeeper-ci-app```

### 🌐 Homepage URL
```https://github.com/vsys-host```

![App name](/img/app_name.png)


### ❌ Webhook
Не потрібен → вимкнути (OFF)
![Weebhook](/img/weebhook.png)

---

## 🔐 Permissions

### Repository permissions:


- **Contents** → Read & Write
- **Metadata** → Read

![Content](/img/content.png)
![Metadata](/img/metadata.png)
- (опційно) **Actions** → Write

---

# 📦 2. Встановлення App

Після створення:
👉 Натиснути **Install App**
![Install App](/img/install_app_1.png)

Вибрати репозиторії:

- `vsys-host/shkeeper.io`
- `vsys-host/shkeeper-docs`

![Install App](/img/install_app_2.png)

---

# 🔑 3. Отримання даних

## 📌 APP_ID

На сторінці App:


App ID: 123456

![account_id](/img/account_id.png)
---

## 📌 Private Key

👉 Натисни **Generate a private key**

Скачається `.pem` файл:

![Private key](/img/private_key.png)

-----BEGIN RSA PRIVATE KEY-----
...
-----END RSA PRIVATE KEY-----


---

# 🔐 4. Додавання Secrets

У репозиторії `shkeeper.io`:

Settings → Secrets → Actions

Додати:

APP_ID = 123456
APP_PRIVATE_KEY = (вставити повністю .pem файл)