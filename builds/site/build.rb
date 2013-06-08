#!/usr/bin/env ruby

# updating the website based on latest master version

unless File.directory?("JamomaWebSite")
	puts `git@github.com:jamoma/JamomaWebSite.git`
end

puts `cd JamomaWebSite && nanoc`
puts `cd JamomaWebSite && git commit -am "building latest version of the website"`
puts `cd JamomaWebSite && git push origin master`