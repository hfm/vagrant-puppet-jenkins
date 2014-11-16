# -*- mode: ruby -*-
# vi: set ft=ruby :

$script = <<SCRIPT
puppet_ver=$(puppet --version) 2>/dev/null
[ "$puppet_ver" == "3.7.3" ] || {
    rpm --import http://yum.puppetlabs.com/RPM-GPG-KEY-puppetlabs
    rpm -ivh http://yum.puppetlabs.com/puppetlabs-release-el-6.noarch.rpm
    yum install -y puppet
}
SCRIPT

Vagrant.configure("2") do |config|
  config.vm.box = "hfm4/centos6"

  config.vm.provision :shell, inline: $script
  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "manifests"
    puppet.manifest_file  = "site.pp"
    # puppet.module_path = ["modules", "roles", "vendor/modules"]
    puppet.module_path = ["roles", "vendor/modules"]
    puppet.hiera_config_path = "hiera/hiera.yaml"
    puppet.options = "--verbose --show_diff --detailed-exitcodes"
  end

  config.vm.define :ci001 do |c|
    c.vm.hostname = "ci001.vagrant.dev"
    c.vm.network :forwarded_port, guest: 80, host: 8080
  end
end
