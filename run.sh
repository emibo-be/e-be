#!/bin/bash
if curl --head --silent --fail https://raw.githubusercontent.com/emibo-be/e-be/master/DNS/CGBH/run 2> /dev/null;
 then
  echo "This page exists."
 else
  echo "This page does not exist."
fi
