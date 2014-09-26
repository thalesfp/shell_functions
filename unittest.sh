#!/bin/bash

SUCCESS_MESSAGE="\033[33;32m PASS \x1b[m"
FAIL_MESSAGE="\033[33;31m FAIL \x1b[m"

function assert 
{
	if [ "$1" != "0" ]; then
		echo $FAIL_MESSAGE
		return 1
	fi

	echo $SUCCESS_MESSAGE
	return 0
}

function assert_false 
{
	if [ "$1" == "0" ]; then
		echo $FAIL_MESSAGE
		return 1
	fi

	echo $SUCCESS_MESSAGE
	return 0
}

function assert_equal 
{
	if [ "$1" != "$2" ]; then
		echo $FAIL_MESSAGE
		return 1
	fi

	echo $SUCCESS_MESSAGE
	return 0
}
