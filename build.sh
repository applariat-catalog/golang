#! /bin/sh
# appLariats generic golang build script

#Log everything in /src/build.log
logfile=/src/build.log
exec > $logfile 2>&1
set -x

mkdir -p /go/src/app
cp -rf /src/* /go/src/app
cd /go/src/app

go-wrapper download
go-wrapper install
