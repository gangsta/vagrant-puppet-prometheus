#
##
###
class roles::prometheus {

  include profiles::prometheus

# If you want to use below classes please make sure that you set '#' in hiera prometheus.yaml
#  class { '::prometheus':
#    version => '2.0.0',
#    alerts => { 'groups' => [{ 'name' => 'alert.rules', 'rules' => [{ 'alert' => 'InstanceDown', 'expr' => 'up == 0', 'for' => '5m', 'labels' => { 'severity' => 'page', }, 'annotations' => { 'summary' =>
#    scrape_configs => [
#      { 'job_name' => 'prometheus',
#        'scrape_interval' => '10s',
#        'scrape_timeout'  => '10s',
#        'static_configs'  => [
#           { 'targets' => [ 'localhost:9090' ],
#             'labels'  => { 'alias'=> 'Prometheus'}
#           }
#        ]
#      },
#      { 'job_name' => 'node',
#        'scrape_interval' => '5s',
#        'scrape_timeout'  => '5s',
#        'static_configs'  => [
#           { 'targets' => [ 'nodexporter.jexia.cloud:9100' ],
#             'labels'  => { 'alias'=> 'Node'}
#           }
#        ]
#      }
#    ],
#    alertmanagers_config => [{ 'static_configs' => [{'targets' => [ 'localhost:9093' ]}]}],
#  }
#  class { '::prometheus::alertmanager':
#    version       => '0.13.0',
#    route         => { 'group_by' => [ 'alertname', 'cluster', 'service' ], 'group_wait'=> '30s', 'group_interval'=> '5m', 'repeat_interval'=> '3h', 'receiver'=> 'slack' },
#    receivers     => [ { 'name' => 'slack', 'slack_configs'=> [ { 'api_url'=> 'https://hooks.slack.com/services/ABCDEFG123456', 'channel' => '#channel', 'send_resolved' => true, 'username' => 'username'}] }]
#  }
}
