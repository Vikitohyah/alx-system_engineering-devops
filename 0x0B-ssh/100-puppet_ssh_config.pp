#!/usr/bin/env bash
# To be able to use puppet to make chabges to my ssh configuration file

file { 'etc/ssh/ssh_config':
	ensure => present,

content =>"

	#SSH client configuration
	host"
	identityFile ~/.ssh/school
	PasswordAuthentication no
}
