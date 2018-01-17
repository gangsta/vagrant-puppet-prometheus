# Vagrant-Puppet-Prometheus

[![Jexia](https://forum.golangbridge.org/uploads/default/optimized/2X/c/c4746b35435181e88a330357f4feb5566d3fbbe2_1_690x324.png)](http://jexia.com)

## Overview

* The Vagrant-Puppet-Prometheus module provides the installation procedure for Prometheus,alertmanager,node_exporter with Puppet at CentOS7_vagrantbox

## Setup

### Usage


To get started, perform a git clone on. Make sure you have [Vagrant installed](https://docs.vagrantup.com/v2/installation/), and also [VirtualBox](https://www.virtualbox.org/).

```
git clone https://github.com/kalinux/vagrant-puppet-prometheus.git
cd vagrant-puppet-prometheus/
git submodule update --init

In case if you want to test latest puppet-prometheus!
cd puppet/modules/prometheus
git pull


vagrant up --provider virtualbox
```

Once vagrant is done provisioning the VMs run `vagrant status` to confirm all instances are running:

You can run rich Proetheus web interface by http://192.168.10.60:9090

if web is not reachable
```
  vagrant ssh Prometheus
  sudo su -
  firewall-cmd --reload
```

When you're done, you can shut down the cluster using
```
vagrant destroy -f
```
### If you want to change any of the configuration/scripts run
```
vagrant provision
```

## Info

Vagrant version will not work until https://github.com/voxpupuli/puppet-prometheus/pull/144 is merged .
you can change prometheus module from voxpupuli/puppet-prometheus to kalinux/puppet-prometheus.
