version: '3'

services:
  postfix:
    image: catatnight/postfix
    container_name: postfix
    environment:
      - MAIL_HOST=xpto.local
      - SMTP_USERNAME=xpto
      - SMTP_PASSWORD=xpto
      - ALLOWED_SENDER_DOMAINS=example.com
    ports:
      - "25:25"

  db:
    image: mysql:5.7
    container_name: mysql
    environment:
      - MYSQL_ROOT_PASSWORD=xpto
      - MYSQL_DATABASE=xpto

  adminer:
    image: adminer
    container_name: adminer
    ports:
      - "8081:8080"
    depends_on:
      - db