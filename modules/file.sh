#!/bin/bash

# - Params
# 1 file
# 2 line number
# 3 line content
# 4 new line
function replace_line_in_file
{	
	$sed -i "" -e "$(echo $2)s/$(echo $3 | sed 's/[\/&]/\\&/g')/$(echo $4 | sed 's/[\/&]/\\&/g')/" $1
}

# - Params
# 1 file
# 2 text
function get_line_number_by_content
{
	$awk "/$2/{ print NR; exit }" $1
}

# - Params
# 1 file
# 2 line number
function get_line_content_by_number
{
	$awk "NR==$2" $1
}