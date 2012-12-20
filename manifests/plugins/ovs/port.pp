define quantum::plugins::ovs::port {
  $mapping = split($name, ":")
  $bridge = $mapping[0]
  $port = $mapping[1]
  vs_port {$port:
    ensure => present,
    bridge => $bridge,
  } <- Vs_bridge[$bridge]
}

