#!/bin/bash

set -eu                         # catch and stop at first error

PROG_DIR=$(dirname $(readlink -f "$0")) # where is the program located
EXEC_DIR=$(pwd -P)                      # where are we executing from
PROG_NAME=$(basename "$0")              # the program name without the path
MY_PARAM=${MY_PARAM:-"None"}            # initalize the MY_PARAM to "None" if not defined

function printUsage() {
    cat <<EOF
Usage:
  $PROG_NAME [-h | -m message]

Example:
  $PROG_NAME
  $PROG_NAME -m hello
  MY_PARAM=hello $PROG_NAME
EOF
}

# parse the command line arguments
if [[ $# -gt 3 ]]; then
    printUsage
    exit 1
fi
if [[ $# -ge 2 ]]; then # expecting 2 arguments (and ignore the 3rd "--ros-args" arguments injected by ROS)
    if [[ "$1" = "-m" ]]; then
        MY_PARAM=$2
    fi
fi
if [[ $# -eq 1 ]]; then
    if [[ "$1" = "-h" ]]; then
        printUsage
        exit 1
    fi
fi

# print debug info:
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


# show to to access the data directory:
cat $PROG_DIR/some_input_file.txt


# run the program:
while (true); do
  sleep 1;

  if [[ "$MY_PARAM" == "None" ]]; then
      echo "I will just run with default parameters, MY_PARAM = '$MY_PARAM'"
  else
      echo "I see you want to run with custom parameters, MY_PARAM = '$MY_PARAM'"
  fi
done

