#!/bin/bash
sudo mkdir /mydata

public_ip=`curl http://myip.dnsomatic.com`
sudo oc cluster up --create-machine=false --host-data-dir=/mydata --metrics=true --public-hostname=$public_ip --routing-suffix=$public_ip.xip.io