#!/bin/bash

# - Params
# 1 command
# n params
function execute_each
{
	if [ "$#" -lt 2 ] ; then
		return 1
	fi

	cmd=$1
	shift

	for i in $@ ; do
		$cmd $i
	done
}