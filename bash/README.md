# Bash Scripting

I’ve completed the Bash Scripting module with CoderCo DevOps Academy. The module helped me practise turning repeatable tasks into scripts.

## Topics practised

- Shebangs, comments, and running scripts
- Variables, parameters, and arithmetic
- `if` statements, loops, and flow control
- Functions, user input, and handling invalid data
- Pipes, redirection, error handling, and exit codes
- Environment variables and `PATH`
- Reading and writing files, and checksums

## Challenges and scripts

1. **Basic arithmetic calculator** — prompts for two numbers, calculates addition, subtraction, multiplication, and division, and handles division by zero.
2. **File operations** — creates `bash_demo/demo.txt`, writes the current date, and displays the contents.
3. **File checker with permissions** — prompts for a filename and reports whether it exists and is readable, writable, and executable.
4. **Text file backup** — prompts for a source directory, creates a timestamped backup directory, copies its `.txt` files, and reports the count.
5. **Battlefield archive** — creates the Battlefield files, moves `knight.txt` into Archive when present, and lists both directories.

I also included [fly35x.sh](scripts/fly35x.sh), my first small “Hello World” script.

## Run the scripts

From this directory:

```bash
./scripts/arithmetic_calculator.sh
./scripts/file_operations.sh
./scripts/file_permission_checker.sh
./scripts/timestamped_backup.sh
./scripts/battlefield_archive.sh
./scripts/fly35x.sh
```

If needed, make the scripts executable first:

```bash
chmod +x scripts/*.sh
```

The backup script checks that the source directory exists before copying. Its timestamp includes seconds so separate runs get unique backup directory names.
