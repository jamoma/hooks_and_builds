#!/usr/bin/env ruby

require 'rubygems'
require 'net/ssh'

# setup your keys, or hardcode a password?? be or not to be?

s = Net::SSH.start( "server", "user", :password => "password" ) do |ssh|
  ssh.exec "cd /Groups/Jamoma/Sites/JamomaWebSite && git pull && nanoc compile"
end