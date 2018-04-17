sudo yum -y install docker

sudo tee -a /etc/sysconfig/docker <<-'EOF'
INSECURE_REGISTRY='--insecure-registry 172.30.0.0/16'
EOF

sudo systemctl restart docker

sudo yum -y install wget curl

wget https://github.com/openshift/origin/releases/download/v3.9.0/openshift-origin-client-tools-v3.9.0-191fece-linux-64bit.tar.gz

tar xzf /tmp/openshift-origin-client-tools-v3.9.0-191fece-linux-64bit.tar.gz -C /tmp

sudo mv /tmp/openshift-origin-client-tools-v3.9.0-191fece-linux-64bit/oc /usr/bin

rm -rf /tmp/openshift-origin-client-*
