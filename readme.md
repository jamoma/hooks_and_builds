## jamoma builds and hooks

This is were our automated builds and hooks lives.

When Jamoma repository gets a push on "master" it will notify bec's server
which will compile the last verson of the source, download the latest version
of the website repository, update the download page, and push back to the
"master" branch on the website repository.


When JamomaWebsite gets a new push on "master" it will notify's jamoma.org server
which will download the latest version of the website repository and compile it.

## in short

	- push to "master" on Jamoma repository and a new build will born

	- push to "master" on JamomaWebsite and the website will be updated

## credits

A simple php hook for github was used, you can check the original repository [here](https://github.com/kwangchin/GitHubHook.git)





## Jamoma's 2013 workshop @ Albi, France