class jenkins_server::nginx {

  class { '::nginx':
    configtest_enable => true,
    service_ensure    => 'running',
    service_restart   => '/sbin/service nginx restart',
  }

  nginx::resource::upstream { 'jenkins':
    members => [
      'localhost:8080',
      ],
  }

  nginx::resource::vhost { '_':
    proxy => 'http://jenkins',
  }

}
