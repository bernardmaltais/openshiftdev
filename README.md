# openshiftdev

Simply clone the project to the centos 7 VM you want to run openshiftdev on:

```shell
sudo yum -y install git
git clone https://github.com/bernardmaltais/openshiftdev.git
```

on and then run:

```shell
cd openshiftdev
./install-openshift.sh
```

When everything is installed start openshift with:

```shell
./ocup
```

Wait a bit (2 to 5 minutes usually) and use the https:// link returned to connect to the Openshift console.

To bring it down, either delete the VM or use the following command:

```shell
./ocdown
```
