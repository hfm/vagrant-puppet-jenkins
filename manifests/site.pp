Package {
  allow_virtual => true,
}

node 'ci001.vagrant.dev' {
  hiera_include('classes')
}
