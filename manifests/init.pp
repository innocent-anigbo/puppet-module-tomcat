class tomcat(
  $xms            = $::tomcat::params::xms, 
  $xmx            = $::tomcat::params::xmx,
  $user           = $::tomcat::params::user,
  $group          = $::tomcat::params::group, 
  $service_name   = $::tomcat::params::service_name,
  $service_state  = $::tomcat::params::service_state,
  $java_opts      = $::tomcat::params::java_opts
) inherits tomcat::params{

     include tomcat::install
}
