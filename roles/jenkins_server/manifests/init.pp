class jenkins_server {
  contain jenkins_server::iptables
  contain jenkins_server::jenkins
  contain jenkins_server::nginx
  contain jenkins_server::package
}
