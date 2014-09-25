#!/bin/bash

source cmd.sh

function test_execute_each
{
	execute_each echo one two tree &> /dev/null
	assert $?
}

function test_execute_each_wrong_params
{
	execute_each echo
	assert_false $?
}

function test_execute_each_invalid_command
{
	execute_each echo_fake one two tree &> /dev/null
	assert_false $?
}