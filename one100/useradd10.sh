#!/bin/bash
userchars="yyh"
passfile="/tmp/user.log"
for num in `seq 2 10`
do
  useradd $userchars$num
  passwd="`echo "date $RANDOM"|md5sum|cut -c 3-11 `"
  echo "$passwd"|passwd --stdin $userchars$num
  echo -e "user:$userchars$num\tpasswd:$passwd" >> $passfile
done

