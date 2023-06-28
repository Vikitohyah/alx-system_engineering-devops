#!/usr/bin/env bash
# To be able to use puppet to make changes to my ssh configuration file

file { 'ect/ssh/ssh_cofig':
	ensure => present,

content =>"

	#SSH client configuration
	host°
	IdentityFile ~/.ssh/school
	PasswordAuthentication no
	"

}
