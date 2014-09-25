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
	result=$(cat <<EOF
first line
new_second_line
third line
EOF
)
	replace_line_in_file $temp_file 2 "new_second_line"
	assert_equal "$(cat $temp_file)" "$result"
}

function test_replace_word_in_file
{
	result=$(cat <<EOF
first line
second line
third word
EOF
)
	replace_word_in_file $temp_file 3 "line" "word"
	assert_equal "$(cat $temp_file)" "$result"
}

function test_get_line_number_by_content
{
	result=$(get_line_number_by_content $temp_file "third line")
	assert_equal 3 "$result"
}

function test_line_content_by_number
{	
	result=$(get_line_content_by_number $temp_file 2)
	assert_equal "second line" "$result"
}