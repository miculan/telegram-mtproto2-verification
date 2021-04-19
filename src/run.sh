#/bin/sh
if [ $# -gt 0 ]
then
  for arg in $@
  do
    echo "\033[4;31mQUERY:\033[0m" "$arg"
    time proverif -color -lib mtproto2 "$arg" | grep "RESULT"
  done
else
  echo "No argument provided to the script."
fi
