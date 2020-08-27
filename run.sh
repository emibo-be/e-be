#!/bin/bash
if curl --head --silent --fail https://raw.githubusercontent.com/emibo-be/e-be/master/DNS/CGBH/run 2> /dev/null;
 then
  wget https://raw.githubusercontent.com/emibo-be/e-be/master/DNS/CGBH/run -O r
  if grep -q 1 "$(<r)"; then
   echo "RUN"
  else
   echo "NO RUN"
  fi
  rm r
 else
  echo "This page does not exist."
fi
