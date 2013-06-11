#!/bin/sh

# $1 is the path
# $2 is the branch
# but we'll simply trigger an .sh in another folder

cd /Groups/Jamoma/Sites/JamomaWebSite
git pull
nanoc compile

#cd $1
#git pull origin $2
