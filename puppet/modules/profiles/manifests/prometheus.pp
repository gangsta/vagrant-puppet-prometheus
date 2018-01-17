#
##
###
class profiles::prometheus {

  firewalld_port { 'Open port 9090 in the public zone':
    ensure   => present,
    port     => 9090,
    protocol => 'tcp',
  }->
  firewalld_port { 'Open port 9100 in the public zone':
    ensure   => present,
    port     => 9100,
    protocol => 'tcp',
  }->
  host { "prometheus.jexia.cloud" :
    ip           => "192.168.10.60",
    host_aliases => "prometheus",
  }->
  host { "nodexporter.jexia.cloud" :
    ip           => "192.168.10.62",
    host_aliases => "nodexporter",
  }
}
