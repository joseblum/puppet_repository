class augeasproviders_sysctl {
sysctl { "net.ipv4.tcp_timestamps":
  ensure  => present,
  value  => "0",
  comment => "This value is managed by Puppet",
}
sysctl { "net.ipv4.conf.all.accept_redirects":
  ensure  => present,
  value  => "0",
  comment => "This value is managed by Puppet",
}
sysctl { "net.ipv4.conf.default.accept_redirects":
  ensure  => present,
  value  => "0",
  comment => "This value is managed by Puppet",
}
sysctl { "net.ipv4.conf.all.secure_redirects":
  ensure  => present,
  value  => "0",
  comment => "This value is managed by Puppet",
}
sysctl { "net.ipv4.conf.default.secure_redirects":
  ensure  => present,
  value  => "0",
  comment => "This value is managed by Puppet",
}

}

