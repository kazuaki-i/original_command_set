#!/bin/bash

argn=$#
if [ ${argn} = '0' ]; then
  echo "No arguments: set args of port number"
  exit 1
fi

args=("$@")
for p in $(seq $argn)
do
  pid=`lsof -i:4000 | tail -n +2 | sed -E "s/[ ]+/\t/g" | cut -f2 | uniq`
  echo ${pid} | xargs kill -9
done
