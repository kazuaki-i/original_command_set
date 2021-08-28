#!/bin/bash

if [ $# != '0' ]; then
  cd $1
fi

cur_dir=`pwd`
lst=${cur_dir//\// }
for prefix in ${lst[@]};
do
  :
done

i=1
for f in `ls`
do
  s=`printf %02d $i`
  e=${f##*.}
  g=../_${prefix}_${s}.${e}
  echo $f $g
  # cp "${f}" $g
  let i++
done
