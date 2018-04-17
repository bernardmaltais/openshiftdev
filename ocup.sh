#!/bin/bash
cur_dir=`pwd`

if [ ! -d "$cur_dir/ocdata" ]; then
  mkdir $cur_dir/ocdata
fi

public_ip=`curl -s http://myip.dnsomatic.com`
sudo oc cluster up --create-machine=false --host-data-dir=$curdir/ocdata --metrics=false --public-hostname=$public_ip --routing-suffix=$public_ip.xip.io
