# Bash Scripting: Understanding Variables, Quotes, and Symbols

This guide provides a quick overview of how to use variables, different types of brackets, quotes, and common symbols in Bash scripting, along with the importance of spacing.

## Variables in Bash

- **Defining a Variable:** `variable_name=value` (no spaces around `=`)
- **Accessing a Variable:** Use `$variable_name` or `${variable_name}`

## Quotes

| Type   | Usage                                | Example                                  |
|--------|-------------------------------------|------------------------------------------|
| `' '`  | Literal value, no substitutions     | `echo '$name'` → `$name`                 |
| `" "`  | Allows variable substitution        | `echo "Hello, $name"` → `Hello, John`    |

## Brackets

| Type     | Usage                                    | Example                                  |
|----------|-----------------------------------------|------------------------------------------|
| `()`     | Subshell or command substitution        | `files=$(ls)`                            |
| `(( ))`  | Arithmetic operations                   | `result=$((num1 + num2))`                |
| `[ ]`    | Basic conditionals                      | `if [ "$a" -gt 5 ]; then ... fi`         |
| `[[ ]]`  | Enhanced conditionals                   | `if [[ "$name" == *"Doe" ]]; then ... fi`|
| `{ }`    | Variable expansion, command grouping    | `echo "${greeting} World"`               |

## Common Bash Symbols

| Symbol       | Description                                     | Example                                   |
|--------------|-------------------------------------------------|-------------------------------------------|
| `` ` ` ``    | Command substitution                            | ``date=`date` ``                          |
| `$`          | Variable/command substitution, arithmetic       | `echo $USER`                              |
| `&`          | Run command in background                       | `sleep 10 &`                              |
| `&&`         | Logical AND                                     | `mkdir dir && cd dir`                     |
| `|`          | Pipe output to another command                  | `ls -l | grep "txt"`                      |
| `||`         | Logical OR                                      | `cd /dir || echo "Failed"`                |
| `;`          | Command separator                               | `echo "Hello"; echo "World"`              |
| `:`          | No-op (null command)                            | `: # This does nothing`                   |
| `~`          | Home directory                                  | `cd ~`                                    |
| `>`          | Redirect output (overwrite)                     | `echo "Hello" > file.txt`                 |
| `>>`         | Redirect output (append)                        | `echo "World" >> file.txt`                |
| `<`          | Redirect input                                  | `cat < file.txt`                          |
| `<<`         | Heredoc                                         | `cat <<EOF ... EOF`                       |
| `!`          | Logical NOT                                     | `if ! command; then echo "Failed"; fi`    |
| `*`          | Wildcard (matches zero or more characters)      | `echo *.txt`                              |
| `?`          | Wildcard (matches exactly one character)        | `echo ?.txt`                              |

## Importance of Spaces

| Action                          | Correct Example                | Incorrect Example         |
|---------------------------------|--------------------------------|---------------------------|
| Variable assignment             | `name="John Doe"`              | `name = "John Doe"`       |
| Conditional expressions         | `if [ $x -eq 10 ]; then`       | `if [$x -eq 10]; then`    |
| Running commands with arguments | `echo Hello World`             | `echoHelloWorld`          |
| Strings with spaces             | `cp "file name.txt" /path/`    | `cp file name.txt /path/` |

### Key Takeaway:
**Spaces matter** in Bash scripting. Use them correctly to avoid syntax errors and ensure that your scripts run as expected.

## Example

```bash
#!/bin/bash

# Define a variable
name="John Doe"

# Using quotes
echo "Hello, $name"    # Correct: Will print "Hello, John Doe"
echo 'Hello, $name'    # Will print "Hello, $name" literally

# Using conditionals and spaces
if [ "$name" == "John Doe" ]; then
    echo "It's John!"
fi

# Arithmetic operation
num1=5
num2=3
result=$((num1 + num2))
echo "The sum is: $result"

# Redirect output
echo "Hello" > output.txt  # Overwrite
echo "World" >> output.txt # Append
