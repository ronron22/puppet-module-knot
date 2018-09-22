class knot {

  class { '::knot::install': } ->
  class { '::knot::config': } ~>
  class { '::knot::zones': } ~>
  class { '::knot::service': } ->

}
