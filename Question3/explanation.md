# Question 3 - Command Explanations

## gcc employee_records.c -o employee_records
Compiles the C source file into an executable named `employee_records`.

## ./employee_records
Runs the program to create a file, write employee records, update a specific record using `lseek()`, and read the records.

## cat employees.dat
Displays the contents of the employee records file to verify that the update was successful.

## ./employee_records > output.txt
Redirects the program's output to a file for documentation.

## cat output.txt
Displays the saved output.

## open()
Creates or opens the employee data file.

## write()
Writes employee records into the file.

## lseek()
Moves the file pointer to a specific position, allowing only the required record to be updated instead of rewriting the whole file.

## read()
Reads employee records from the file.

## close()
Closes the file and releases the associated system resources.
