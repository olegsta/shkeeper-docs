---
# id is optional; using filename-based id. Keep frontmatter simple.
title: Docker Compose
---

# 🐳 Docker Compose

## 🧠 Overview

Docker Compose is a tool for defining and running multi-container Docker applications. With a single YAML file, you can configure all services, networks, and volumes required for an application. It is useful for local development, testing, and small deployments without complex orchestration tools.

Compose allows you to:
- Define multiple services in one file (docker-compose.yml)  
- Automatically create networks and volumes  
- Start, stop, and manage the full stack with simple commands  
- Share the configuration across team members

## 🔧 Key Concepts

- Service: A container definition (image, environment variables, volumes, etc.)  
- Volume: Persistent storage for services  
- Network: Communication channel between containers  
- Environment Variables: Configurable values injected into containers  

## 📄 Example docker-compose.yml

version: "3.9"

services:
  web:
    image: myapp:latest
    container_name: web
    build: .
    ports:
      - "8080:80"
    environment:
      - APP_ENV=development
    volumes:
      - web_data:/var/www/html
    networks:
      - app_network

  db:
    image: mariadb:11
    container_name: db
    environment:
      MYSQL_ROOT_PASSWORD: supersecret
      MYSQL_DATABASE: myapp
      MYSQL_USER: myuser
      MYSQL_PASSWORD: mypassword
    ports:
      - "3306:3306"
    volumes:
      - db_data:/var/lib/mysql
    networks:
      - app_network

volumes:
  web_data:
  db_data:

networks:
  app_network:
    driver: bridge

## 🛠️ Common Commands

Start all services in the background:
docker-compose up -d

Stop and remove containers:
docker-compose down

View logs for a specific service:
docker-compose logs -f web

Rebuild services after changes:
docker-compose up -d --build

## 🏗️ Best Practices

- Use volumes for persistent data to prevent data loss.  
- Keep secrets out of version control, use .env files or Docker secrets.  
- Use named networks to control communication between services.  
- Pin image versions in production to ensure reproducibility.  
- Regularly back up volumes, especially databases.

Docker Compose makes it simple to replicate complex environments locally or deploy small stacks quickly without extra orchestration overhead.

