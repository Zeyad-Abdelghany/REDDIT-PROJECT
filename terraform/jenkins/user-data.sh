#!/bin/bash
yum update -y

# Java
yum install java-17-openjdk -y

# Jenkins
wget -O /etc/yum.repos.d/jenkins.repo \
  https://pkg.jenkins.io/redhat-stable/jenkins.repo
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
yum install jenkins -y
systemctl enable jenkins
systemctl start jenkins

# Docker
yum install docker -y
systemctl start docker
systemctl enable docker
usermod -aG docker jenkins

# NodeJS
curl -fsSL https://rpm.nodesource.com/setup_16.x | bash -
yum install nodejs -y

# Trivy
rpm -ivh https://github.com/aquasecurity/trivy/releases/latest/download/trivy_0.50.0_Linux-64bit.rpm

# Git
yum install git -y

reboot