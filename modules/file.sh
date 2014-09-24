#!/bin/bash

function replace_line_in_file
{
	file=$1
	line_number=$2
	line_content=$3
	new_line=$4
	
	$sed -i "" -e "$(echo $line_number)s/$(echo $line_content | sed 's/[\/&]/\\&/g')/$(echo $new_line | sed 's/[\/&]/\\&/g')/" $file
}

function get_line_number_by_content
{
	file=$1
	text=$2
	$awk "/$text/{ print NR; exit }" $file
}

function get_line_content_by_number
{
	file=$1
	line_number=$2
	$awk "NR==$line_number" $file
}