#!/bin/bash

function function_exists
{
	type -t $1 &> /dev/null
}

function execute_if_function_exists
{
	if type -t $1 &> /dev/null; then
		$1
	fi
}