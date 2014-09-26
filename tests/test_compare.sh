#!/bin/bash

source compare.sh

# is equal

function test_is_equal_using_string
{
	is_equal string string
	assert $?
}

function test_is_equal_using_number
{
	is_equal 1 1
	assert $?
}

function test_is_equal_using_number_as_string
{
	is_equal 1 "1"
	assert $?
}

function test_is_equal_using_string_return_false
{
	is_equal string string1
	assert_false $?
}

function test_is_equal_using_number_return_false
{
	is_equal 1 11
	assert_false $?
}

function test_is_equal_using_number_and_string_return_false
{
	is_equal 1 "11"
	assert_false $?
}

# is not equal

function test_is_not_equal_using_string
{
	is_not_equal string string1
	assert $?
}

function test_is_not_equal_using_number
{
	is_not_equal 1 2
	assert $?
}

function test_is_not_equal_using_number_and_string
{
	is_not_equal 1 "2"
	assert $?
}

function test_is_not_equal_using_string_return_false
{
	is_not_equal string string
	assert_false $?
}

function test_is_not_equal_using_number_return_false
{
	is_not_equal 1 1
	assert_false $?
}

function test_is_not_equal_using_number_and_string_return_false
{
	is_not_equal 1 "1"
	assert_false $?
}

# is greater than

function test_is_greater_than_using_string
{
	is_greater_than string2 string1
	assert $?
}

function test_is_greater_than_using_number
{
	is_greater_than 2 1
	assert $?
}

function test_is_greater_than_using_number_and_string
{
	is_greater_than a 2
	assert $?
}

function test_is_greater_than_using_string_return_false
{
	is_greater_than string1 string2
	assert_false $?
}

function test_is_greater_than_using_number_return_false
{
	is_greater_than 1 2
	assert_false $?
}

function test_is_greater_than_using_number_and_string_return_false
{
	is_greater_than 2 a
	assert_false $?
}

# is less than

function test_is_less_than_using_string
{
	is_less_than string1 string2
	assert $?
}

function test_is_less_than_using_number
{
	is_less_than 1 2
	assert $?
}

function test_is_less_than_using_number_and_string
{
	is_less_than 2 a
	assert $?
}

function test_is_less_than_using_string_return_false
{
	is_less_than string2 string1
	assert_false $?
}

function test_is_less_than_using_number_return_false
{
	is_less_than 2 1
	assert_false $?
}

function test_is_less_than_using_number_and_string_return_false
{
	is_less_than a 2
	assert_false $?
}

# is greater than or equal to

function test_is_greater_than_or_equal_to_using_number_greater
{
	is_greater_than_or_equal_to 2 1
	assert $?
}

function test_is_greater_than_or_equal_to_using_number_equal
{
	is_greater_than_or_equal_to 2 2
	assert $?
}

function test_is_greater_than_or_equal_to_using_number_return_false
{
	is_greater_than_or_equal_to 1 2
	assert_false $?
}

function test_is_greater_than_or_equal_to_using_number_and_string
{
	is_greater_than_or_equal_to 1 a &> /dev/null
	assert_false $?
}

# is less than or equal to

function test_is_less_than_or_equal_to_using_number_greater
{
	is_less_than_or_equal_to 1 2
	assert $?
}

function test_is_less_than_or_equal_to_using_number_equal
{
	is_less_than_or_equal_to 2 2
	assert $?
}

function test_is_less_than_or_equal_to_using_number_return_false
{
	is_less_than_or_equal_to 2 1
	assert_false $?
}

function test_is_less_than_or_equal_to_using_number_and_string
{
	is_less_than_or_equal_to 1 a &> /dev/null
	assert_false $?
}