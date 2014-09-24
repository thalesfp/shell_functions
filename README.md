Shell Functions
===============

### How to install ###

Clone the repository

```
git clone https://github.com/thalesfp/shell_functions.git ~/.shell_functions
```

Then add to to your script to load all modules

```
source ~/.shell_functions/load_modules.sh
```

Or load a specific module

```
source ~/.shell_functions/load_modules.sh module_name.sh
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
replace_line_in_file | 1 file <br />2 line number <br />3 line content <br />4 new line | replaces a content of a line
get_line_number_by_content | 1 file <br />2 text | get a number of a line based on a content
get_line_content_by_number | 1 file <br />2 line number | get a content of a specific line
