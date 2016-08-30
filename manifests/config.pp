class mygit::config inherits mygit {

file {'/etc/gitconfig':
    ensure => 'file',
    owner => 'root',
    group => 'root',
    mode => '0644',
    content => template('mygit/gitconfig.erb'),
}
}
