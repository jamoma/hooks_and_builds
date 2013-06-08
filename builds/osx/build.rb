#!/usr/bin/env ruby

# building jamoma master repository

unless File.directory?("Jamoma")
	puts `git clone git@github.com:jamoma/Jamoma.git`
end

puts `cd Jamoma`
puts `cd Jamoma/Tools && ruby update.rb`
puts `cd Jamoma/Tools && ruby all.rb master Deployment clean install && ruby installer.rb`