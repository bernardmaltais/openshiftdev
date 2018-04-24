#!/bin/bash
sudo sed -i 's/enforcing/permissive/g' /etc/selinux/config

sudo systemctl stop firewalld
sudo systemctl disable firewalld

sudo yum -y install docker

sudo systemctl enable docker

if grep -Fxq "$FILENAME" my_list.txt
then
    echo "Warning: inseruce-registry already set. Not doing again"
else
    sudo tee -a /etc/sysconfig/docker <<-'EOF'
INSECURE_REGISTRY='--insecure-registry 172.30.0.0/16'
EOF

sudo systemctl restart docker
fi

sudo yum -y install wget curl

wget https://github.com/openshift/origin/releases/download/v3.9.0/openshift-origin-client-tools-v3.9.0-191fece-linux-64bit.tar.gz -P /tmp

tar xzf /tmp/openshift-origin-client-tools-v3.9.0-191fece-linux-64bit.tar.gz -C /tmp

sudo mv /tmp/openshift-origin-client-tools-v3.9.0-191fece-linux-64bit/oc /usr/bin

rm -rf /tmp/openshift-origin-client-*
