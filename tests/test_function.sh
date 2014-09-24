#!/bin/bash

source function.sh

function setup
{
	return 0
}

function test_function_exists
{
	function_exists setup
	assert $?
}

function test_function_exists_invalid_function
{
	function_exists setup1
	assert_false $?
}

function test_execute_if_function_exists
{
	execute_if_function_exists setup
	assert $?
}

function test_execute_if_function_exists_invalid_function
{
	execute_if_function_exists setup1
	assert_false $?
}