#!/bin/sh
for filename in `ls *.jpg`
do
/bin/mv $filename `echo $filename|sed 's#.jpg#_finished.jpg#g'`
done
