exec { "apt-get update":
    command => "/usr/bin/apt-get update",
    onlyif => "/bin/sh -c '[ ! -f /var/cache/apt/pkgcache.bin ] || /usr/bin/find /etc/apt/* -cnewer /var/cache/apt/pkgcache.bin | /bin/grep . > /dev/null'",
}


package { "git-core":
	ensure => "installed",
}

package {'wget':
	ensure => 'installed',
}

package {'octave':
    ensure => 'installed',
}

package {'gnuplot':
    ensure => 'installed',
}