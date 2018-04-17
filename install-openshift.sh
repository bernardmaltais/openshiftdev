sudo yum -y install docker

sudo tee -a /etc/sysconfig/docker <<-'EOF'
INSECURE_REGISTRY='--insecure-registry 172.30.0.0/16'
EOF

sudo systemctl restart docker

sudo yum -y install wget curl

wget https://github.com/openshift/origin/releases/download/v3.9.0/openshift-origin-client-tools-v3.9.0-191fece-linux-64bit.tar.gz

tar xzf openshift-origin-client-tools-v3.9.0-191fece-linux-64bit.tar.gz

sudo mv openshift-origin-client-tools-v3.9.0-191fece-linux-64bit/oc /usr/bin