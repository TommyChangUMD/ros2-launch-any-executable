#!/bin/bash

set -eu                         # catch and stop at first error

PROG_DIR=$(dirname $(readlink -f "$0")) # where is the program located
EXEC_DIR=$(pwd -P)                      # where are we executing from
PROG_NAME=$(basename "$0")              # the program name without the path
MY_PARAM=${MY_PARAM:-"None"}            # initalize the MY_PARAM to "None" if not defined

echo
echo "Hello, you are running this program '$PROG_NAME' from:"
echo "    $EXEC_DIR"
echo
echo "And this program '$PROG_NAME' is located at:"
echo "    $PROG_DIR"
echo
echo "This program was launched with these parameters:"
echo "    $PROG_NAME $*"
echo
echo "This program is looking for the environment variable \$MY_PARAM:"
echo "    \$MY_PARAM = '$MY_PARAM'"
echo

cat $PROG_DIR/some_input_file.txt

while (true); do
  sleep 1;

  if [[ "$MY_PARAM" == "None" ]]; then
      echo "I will just run with default parameters, MY_PARAM = '$MY_PARAM'"
  else
      echo "I see you want to run with custom parameters, MY_PARAM = '$MY_PARAM'"
  fi
done

