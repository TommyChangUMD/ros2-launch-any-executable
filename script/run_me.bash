#!/bin/bash

set -eu                         # catch and stop at first error

PROG_DIR=$(dirname $(readlink -f "$0")) # where is the program located
EXEC_DIR=$(pwd -P)                      # where are we executing from
PROG_NAME=$(basename "$0")

echo
echo "Hello, you are running this program '$PROG_NAME' from:"
echo "    $EXEC_DIR"
echo
echo "Adnd this program '$PROG_NAME' is located at:"
echo "    $PROG_DIR"
echo

cat $PROG_DIR/some_input_file.txt

while (true); do
  sleep 1;
  echo "doing something useful"
done

