# openshiftdev

Simply clone the project to the VM you want to run openshift:

```shell
sudo yum -y install git
git clone https://github.com/bernardmaltais/openshiftdev.git
```

on and then run:

```shell
./install-openshift.sh
```

When everything is installed start openshift with:

```shell
./ocup
```

To bring it down, either delete the VM or use the following command:

```shell
./ocdown
```
