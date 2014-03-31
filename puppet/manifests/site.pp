user { "vagrant":
	ensure	=> present,
	shell	=> "/bin/bash"
}

Exec {
	path => ['/usr/sbin', '/usr/bin', '/sbin', '/bin', '/usr/local/bin']
}

class { 'nodejs':
  version => 'v0.10.25',
}

include git