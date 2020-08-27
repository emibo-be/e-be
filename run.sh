#!/bin/bash
url=https://raw.githubusercontent.com/emibo-be/e-be/master/DNS/CGBH/r
cdate=$(date +"%Y/%m/%d")

if curl -f -s --head --silent --fail $url 2> /dev/null;
 then
  wget -q $url -O r
  r=$(<r)
  echo $r
  if grep -q $cdate "r"; then
   echo "RUN"
  else
   echo "NO RUN"
  fi
  rm r
 else
  echo "This page does not exist."
fi
