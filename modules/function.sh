#!/bin/bash

# - Params
# 1 function name
function function_exists
{
	type -t $1 &> /dev/null
}

# - Params
# 1 function name
function execute_if_function_exists
{
	if function_exists $1 ; then
		$1
		return $?
	fi

	return 1
}