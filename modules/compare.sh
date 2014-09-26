#!/bin/bash

# - Params
# 1 string/number to test
function is_number
{	
	exp='^[0-9]+$'
	[[ $1 =~ $exp ]]
}

# - Params
# 1 string/number
# 2 string/number
function is_equal
{
	if is_number $1 && is_number $2 ; then
		[ "$1" -eq "$2" ]
	else
		[ "$1" == "$2" ]
	fi
}

# - Params
# 1 string/number
# 2 string/number
function is_not_equal
{
	if is_number $1 && is_number $2 ; then
		[ "$1" -ne "$2" ]
	else
		[ "$1" != "$2" ]
	fi
}

# - Params
# 1 string/number
# 2 string/number
function is_greater_than
{
	if is_number $1 && is_number $2 ; then
		[ "$1" -gt "$2" ]
	else
		[[ "$1" > "$2" ]]
	fi
}

# - Params
# 1 string/number
# 2 string/number
function is_greater_than_or_equal_to
{
	if is_number $1 && is_number $2 ; then
		[ "$1" -ge "$2" ]
	else
		echo "Invalid string comparison"
		return 1
	fi
}

# - Params
# 1 string/number
# 2 string/number
function is_less_than
{
	if is_number $1 && is_number $2 ; then
		[ "$1" -lt "$2" ]
	else
		[[ "$1" < "$2" ]]
	fi
}

# - Params
# 1 string/number
# 2 string/number
function is_less_than_or_equal_to
{
	if is_number $1 && is_number $2 ; then
		[ "$1" -le "$2" ]
	else
		echo "Invalid string comparison"
		return 1
	fi
}

# - Params
# 1 string
function is_null
{
	[ -z "$1" ]
}

# - Params
# 1 string
function is_not_null
{
	[ -n "$1" ]
}

# - Params
# 1 string
function is_dir
{
	[ -d "$1" ]
}