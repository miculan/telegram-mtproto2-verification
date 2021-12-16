#!/bin/bash

# Example of usage:
#
#  ./benchmark.sh -r 10 *query-auth-prot* >benchmark.csv

echo_stderr() {
  echo "$@" >&2
}

echon_stderr() {
  echo -n "$@" >&2
}


benchmark() { # $1: num. repeats, $2: filename
  repeats=$1
  times=$2
  for (( i = 1; i <= $repeats; i++ ))
  do
    p=$(( $i * 100 / $repeats)) # percentage completion
    l=$(seq -s "█" $i | sed 's/[0-9]//g') # indicator of progress

    times+=','
    times+=$(/usr/bin/time -p bash -c "proverif -lib mtproto2 $2 >/dev/null" 2>&1 | awk '$1 == "real" {print $2}')

    echon_stderr ${l}' ('${p}'%)' $'\r'
  done;
  echo ${times}
}

if [ $# -eq 0 ]
then
  echo "Syntax: ./benchmark [-r <N>] <query> [<query> ...]"
  exit 1
fi

repeats=10
scripts=()

while [[ $# -gt 0 ]];
do
  case "$1" in
    -r|--repeat)
      repeats="$2"
      shift 2
      ;;
    *)
      scripts+=("$1")
      shift
      ;;
  esac
done

echo_stderr "I am going to benchmark the following scripts:"

for arg in ${scripts[@]}
do
  echo_stderr "$arg"
done;

echo_stderr "--- STARTING! ---"

for arg in ${scripts[@]}
do
  echo_stderr "QUERY: $arg"
  benchmark "$repeats" "$arg"
done
echo_stderr "--- FINISHED! ---"

