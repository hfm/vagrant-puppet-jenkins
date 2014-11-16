class jenkins_server::package {

  ensure_packages( ['git','openssl'],
  { ensure => installed }
  )

}
