#!/bin/bash
#taking hostname information
echo "(a) Hostname"
hostnamectl

#disk partition size, usage and mount points
echo "\n (b) Disk Partition Size, Usage and Mount Points"
/usr/bin/lsblk

#Network devices name and information
echo "\n (c and d) Network Devices Name - IP Address, Netmask and Broadcast"
ip a

#OS version, release level, kernel version used
echo "\n (e) OS version, release level, kernel version used"
uname -a

#Security Mode - SE Linux
echo "\n (f) Security Mode - SE Linux"
sestatus

#Firewall Configuration
echo "\n (g) Firewall Configuration"
#sudo iptables -L -n -v

#List of Active Repositories
echo "\n (h) List of active repositories"
yum repolist

#Number of software Packages Installed
echo "\n (i) Number of Packages (rpm, deb, etc) Installed"
rpm -qa | wc --lines

#Name of Software Packages Installed
echo "\n (j) Name of Software Packages Installed"
rpm -qa

#DNS Server Configuration
echo "\n (k) DNS Server Configuration"
cat /etc/resolv.conf

#List of Active Shell Users
echo "\n (l) List of Active Shell Users"
w

#Date the OS was installed
echo "\n (m) Date the OS was installed"
rpm -qi basesystem | grep "Install Date"

#Hardware Information cpu, main memory size, swap memory configure, devices, etc.
echo "\n (n) Hardware Information and Detials"
lscpu

#Services Current Running
echo "\n (o) Services Current Running"
systemctl list-units --type=service --state=running

#Services Installed but not Running
echo "\n (p) Services Installed but not Running"
systemctl list-units --type=service --state=dead

