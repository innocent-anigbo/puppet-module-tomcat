class tomcat::install inherits tomcat {

      package {$::tomcat::params::package:}
      file {'/etc/tomcat/tomcat.conf':
           #source => "puppet:///modules/tomcat/tomcat.conf",
           content => template('tomcat/tomcat.conf.erb'),
           owner   => 'root',
           group   => $::tomcat::params::group,
           mode    => '0644',
           notify  => Service['tomcat']
           }
      service {"tomcat":
           ensure => $::tomcat::params::service_state,
           }
}
