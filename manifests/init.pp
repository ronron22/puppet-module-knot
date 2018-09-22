class knot {

	Boolean $service_manage = true
	Boolean $service_enable = true
	String	$service_ensure = 'running'
	String	$service_name = 'knot'

	class { knot::install

  class { '::ntp::install': } ->
  class { '::ntp::config': } ~>
  class { '::ntp::zones': } ~>
  class { '::ntp::service': } ->

}
