#!/usr/bin/env ruby

# building jamoma master repository

unless File.directory?("Jamoma")
	puts `git clone git@github.com:jamoma/Jamoma.git`
end

puts `cd Jamoma && git submodule update --init && git pull origin master`
puts `cd Jamoma/Tools && build.rb clean Deployment clang`

# cd Implementations/Max/Jamoma
# compress and upload to website repository