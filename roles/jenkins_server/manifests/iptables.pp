class jenkins_server::iptables {
  firewall {
    '000 accept all icmp requests':
      proto  => 'icmp',
      action => 'accept';

    '100 allow ssh':
      port   => 22,
      proto  => 'tcp',
      action => 'accept';

    '200 allow http and https access':
      port   => [80, 443],
      proto  => 'tcp',
      action => 'accept';

    '999 drop all other requests':
      action => 'drop';
  }
}
