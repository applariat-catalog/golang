#! /bin/sh
# appLariats generic tomcat build script
# Requirements - A valid war file exists within the code_dir
# Copies the war file from the code_dir and copies it into /usr/local/tomcat/webapps

#TO DO - Add an if to check for file and throw error if not present

mkdir -p /go/src/app
cp -f $artifact_root/ /go/src/app
cd /go/src/app

go-wrapper download
go-wrapper install
