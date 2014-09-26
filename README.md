Shell Functions
===============

### How to install ###

Clone the repository

```
git clone https://github.com/thalesfp/shell_functions.git ~/.shell_functions
```

Then add to your script to load all modules

```
source ~/.shell_functions/load_modules.sh
```

Or load a specific module

```
source ~/.shell_functions/load_modules.sh module_name.sh
```

### Example ###

```
#!/bin/bash

source ~/.shell_functions/load_modules.sh

var1=10
var2=20

if is_less_than $var1 $var2; then
 echo "var1 is less than var2"
fi

execute_each echo one two tree
```

### Modules ###

**function.sh**

 Name | Params | Usage 
:-----------|:------------|:------------
function_exists | 1 function_name | checks if a function exists
execute_if_function_exists | 1 function_name | checks if a function exists and execute it

**file.sh**

 Name | Params | Usage 
:-----------|:------------|:------------
replace_line_in_file | 1 file <br />2 line number <br />3 new line | replaces a content of a line
replace_word_in_file | 1 file <br />2 line number <br />3 line content <br />4 new line | replaces a word in a line
get_line_number_by_content | 1 file <br />2 text | get a number of a line based on a content
get_line_content_by_number | 1 file <br />2 line number | get a content of a specific line

**cmd.sh**

 Name | Params | Usage 
:-----------|:------------|:------------
execute_each | 1 command <br />n params | execute the command n times passing each parameter at a time

**compare.sh**

 Name | Params | Usage 
:-----------|:------------|:------------
is_equal | 1 string/number <br />2 string/number | checks if param 1 is equal to param 2
is_not_equal | 1 string/number <br />2 string/number | checks if param 1 is not equal to param 2
is_greater_than | 1 string/number <br />2 string/number | checks if param 1 is greater than param 2
is_greater_than_or_equal_to | 1 string/number <br />2 string/number | checks if param 1 is greater than or equal to param 2
is_less_than | 1 string/number <br />2 string/number | checks if param 1 is less than param 2
is_less_than_or_equal_to | 1 string/number <br />2 string/number | checks if param 1 is less than or equal to param 2
is_null | 1 string | checks if param 1 is null
is_not_null | 1 string | checks if param 1 is not null
is_dir | 1 string | checks if param 1 is a dir
