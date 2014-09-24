#!/bin/bash

function assert_equal {
	if [ "$1" != "$2" ]; then
		echo "Fail"
		return 1
	fi

	echo "OK"

	return 0
}