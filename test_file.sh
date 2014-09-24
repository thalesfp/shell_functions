#!/bin/bash

source file.sh

function setup
{
	temp_file=file.tmp

	cat <<EOF > $temp_file
first line
second line
third line
EOF
}

function teardown
{
	rm -rf $temp_file
}

function test_replace_line_in_file_in_line
{
	replace_line_in_file $temp_file 2 "second line" "new_second_line"

	echo $temp_file
	cat $temp_file	
}

function test_get_line_number_by_content
{
	get_line_number_by_content $temp_file "third line"
}

function test_line_content_by_number
{	
	get_line_content_by_number $temp_file 2
	
	rm -rf $temp_file
}

ALL_FUNCTIONS=$(typeset -F)

for i in $ALL_FUNCTIONS
do
	if [[ $i =~ ^test_.* ]] ;
	then
		echo "Testing $i..."
		setup
		$i
		teardown
	fi
done