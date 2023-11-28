#!/bin/sh

# docker compose exec busybox-shell sh
yum update
yum install telnet -y
telnet postfix 25

# Send SMTP commands
echo "HELO foo.com"
sleep 1
echo "MAIL FROM: bar@foo.com"
sleep 1
echo "RCPT TO: foo@bar.com"
sleep 1
echo "DATA"
sleep 1
echo "subject: Test"
sleep 1
echo "Testing 1, 2, 3"
sleep 1
echo "."
sleep 1
echo "quit"