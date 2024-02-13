#!/bin/bash

timedatectl set-timezone Europe/Moscow
systemctl restart chronyd
#yum update rsyslog -y
cp /vagrant/log/rsyslog.conf /etc/
cp /vagrant/log/auditd.conf /etc/audit/
systemctl restart rsyslog.service
service auditd restart

