#!/bin/bash
bash -c "echo net.ipv4.ip_forward=1 >> /etc/sysctl.conf"
sysctl -p /etc/sysctl.conf

#install bind
sudo yum install bind bind-utils -y

#enable bind
systemctl enable named

#enable at start
systemctl start named
