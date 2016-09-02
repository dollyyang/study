#!/bin/bash
for filename in `ls linux*`
do
	/bin/mv $filename yyh-`echo $filename|cut -d '-' -f2`
done
