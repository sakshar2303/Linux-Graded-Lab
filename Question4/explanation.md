# Question 4 - Command Explanations

## tail -f system.log
Continuously monitors the log file and displays newly added entries in real time.

## grep "ERROR"
Filters only the lines containing the word ERROR.

## |
The pipe operator sends the output of `tail` directly to `grep` without creating temporary files.

## >>
Appends the filtered ERROR messages to `error_report.log` without overwriting existing data.

## 2>/dev/null
Redirects error messages to `/dev/null`, suppressing unnecessary output.

## cat error_report.log
Displays the generated report containing only ERROR messages.
