#!/bin/bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
PATH=$CURRENT_DIR:$CURRENT_DIR/modules:$CURRENT_DIR/tests:$PATH

source unittest.sh
source commands.sh
source utils.sh

source $1

ALL_FUNCTIONS=$(typeset -F)

for i in $ALL_FUNCTIONS
do
	if [[ $i =~ ^test_.* ]] ;
	then
		printf "Testing $i..."
		execute_if_function_exists setup		
		$i
		execute_if_function_exists teardown
	fi
done