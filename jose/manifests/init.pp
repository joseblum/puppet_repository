class jose {
notify {"\n===This is the JOSE module===\n ": }
group {'jbinst' :
    ensure   => 'present',
    gid      => '500',
#   members  => 'jbinst',
  }
  user {'jbinst' :
    ensure           => 'present',
    comment          => 'CTR deployment id',
    uid              => '500',
    gid              => '500',
    home             => '/home/jbinst',
#   password         => '$1$BKTYIuka$7qv4Sh4rctxIhV5ro6aPU.',
    shell            => '/sbin/nologin',
    require          => Group['jbinst'],
  }

  user { 'root':
    ensure    => 'present',
    comment   => 'root',
    uid       => '0',
    gid       => '0',
    home      => '/root',
#   password  => '$1$LxW7akUi$iD..bjtRtra4wASA9RiWa1',
    shell     => '/bin/bash',
  }

ssh_authorized_key { "jbinst@${::fqdn}":
    user    => 'root',
    type    => 'ssh-rsa',
#   key     => hiera('authkey', 'XXXXXX'),
    key     => 'AAAAB3NzaC1yc2EAAAABIwAAAQEAxaKAFmwXISqOjI3i1Wa86yaQvag+mKKsgwxYJA1sBMH1NjJP28H359/wn5B2TxiAr0f8ZTh7H7a+FnHF99vFB1iS8MRbgq6/RPvmqclrxqthX12i7LVhjZLMUkxtHPuFb89k2151PdifgkDLP/Hh41d4vItiMGY8kZHFxPDaceo2qst7fn+f4sS/0xqgKAP4xLM9TbJ/4L8Af5FGRjxqU3CZbICv2qZHvnr8+rMyZh9YKr96a9AnHbtXN5s9ORE59K3amEPx3YqdTynUdvnAfd3nBSxIkJHX9ewdW6iYufBW3l0ZWaSiieWKbGSBJmn4RvanNPtpItbrhe3S9+aF5Q==',
  }


}
