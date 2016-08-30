class mygit::install inherits mygit {

   package { $package_name:
     ensure => $package_ensure,
   }
}
