#! /bin/bash
yum update –y
wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
yum upgrade
dnf install java-11-amazon-corretto git -y
yum install jenkins -y
systemctl enable jenkins
systemctl start jenkins
echo 'tmpfs /tmp tmpfs rw,nodev,nosuid,size=2G 0 0' >> /etc/fstab