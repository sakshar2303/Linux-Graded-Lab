# Question 2 - Command Explanations

## gcc process_manager.c -o process_manager
Compiles the C program into an executable file named `process_manager`.

## ls
Lists the files in the current directory and verifies that the executable was created successfully.

## ./process_manager
Runs the program. It creates a child process using `fork()`, monitors it, terminates it if it becomes unresponsive using `SIGTERM`, and prevents zombie processes using `waitpid()`.

## ./process_manager > output.txt
Redirects the program's output to `output.txt` for documentation.

## cat output.txt
Displays the contents of the saved output file.

## Process Creation
The `fork()` system call creates a child process that runs independently of the parent.

## Process Monitoring
The parent process uses `waitpid()` to wait for the child process and collect its exit status, preventing zombie processes.

## Signal Handling
The `kill()` system call sends the `SIGTERM` signal to terminate an unresponsive child process safely.
