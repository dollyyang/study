#!/bin/bash
for a in `seq 1 9`
do
	for b in `seq 1 9`
	do
		if [ $a -ge $b ]
		then
			echo -en "$b x $a = $(expr $b \* $a)  "
		fi
	done
echo " "
done
