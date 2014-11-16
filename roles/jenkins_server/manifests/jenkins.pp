class jenkins_server::jenkins {

  class { '::jenkins':
    configure_firewall => false,
  }

}
