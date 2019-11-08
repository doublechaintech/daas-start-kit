#!/bin/bash

currentDir=$(cd `dirname $0`; pwd)
PDIR=$currentDir

modelFile=$1
filename=$(basename -- "$modelFile")
project="${filename%.*}"

if [ ! -n "$project" ]; then
 echo "bad command"
 echo "$0 modelFile [genScope]"
 echo "for example: $0 bank.xml"
 exit -1
fi

if [ -f "$currentDir/getToken.sh" ]; then
  echo "refresh token"
  sh $currentDir/getToken.sh
fi

scope=$2
if [ ! -n "$scope" ]; then
 scope=all
fi

target=$3
if [ ! -n "$target" ]; then
 target=$PDIR
fi

java -jar $PDIR/daas-client/daas-client-all.jar $project $scope $target $modelFile "https://daas.doublechaintech.com" $PDIR/daas.tok
