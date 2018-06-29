# openshiftdev
## VM Requirements

- 8 GB of RAM or more. Less might work but mileage may vary
- 8+ GB of dosk. Preferably SSD.
- 2+ vcpu. Recommend 4 to be comfortable.
- CentOS 7. Other distro will work but you will have to adapt the scripts slightly.

## Instructions

Simply clone the project to the centos 7 VM you want to run openshiftdev on:

```shell
sudo yum -y install git
git clone https://github.com/bernardmaltais/openshiftdev.git
```

and then run:

```shell
cd openshiftdev
./install-openshift.sh
```

When everything is installed start openshift with:

```shell
./ocup
```

Wait a bit (2 to 5 minutes usually) and use the https:// link returned to connect to the Openshift console. For example, if everything goes well ocup.sh will return something like:

```shell
[centos@openshiftdemo openshiftdev]$ ./ocup.sh
Pulling image openshift/origin:v3.9.0
Pulled 1/4 layers, 31% complete
Pulled 2/4 layers, 69% complete
Pulled 3/4 layers, 82% complete
Pulled 4/4 layers, 100% complete
Extracting
Image pull complete
Using nsenter mounter for OpenShift volumes
Using public hostname IP 40.71.224.118 as the host IP
Using 40.71.224.118 as the server IP
Starting OpenShift using openshift/origin:v3.9.0 ...
OpenShift server started.

The server is accessible via web console at:
    https://40.71.224.118:8443

You are logged in as:
    User:     developer
    Password: <any value>

To login as administrator:
    oc login -u system:admin
```

To bring it down, either delete the VM or use the following command:

```shell
./ocdown
```

If you used ocdown you can bring the environment up at a later point by simply using the ocup.sh command again. Make sure that the VM you run this on has a static public IP. Any change in public IP associated to this VM will result in a total breakdown ;-) This is why is is called dev.
