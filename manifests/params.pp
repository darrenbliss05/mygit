class mygit::params {

 case $::osfamily {
  'RedHat': {
     $package_name = 'git'
     $package_ensure = 'present'
     #$package_ensure = hiera('git::ensure','present')
     $config_template = 'mygit/gitconfig.erb'
  } 
  default: {
      fail("The git module is not supported on an ${::operatingsystem} distribution.")
  }
 }
}
