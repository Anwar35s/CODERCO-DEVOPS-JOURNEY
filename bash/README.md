# Bash Scripting

I’ve completed the Bash Scripting module with CoderCo DevOps Academy. The module helped me practise turning repeatable tasks into scripts, including through the Bash Battle Arena exercises.

## Topics practised

- Shebangs, comments, and running scripts
- Variables, parameters, and arithmetic
- `if` statements, loops, and flow control
- Functions, user input, and handling invalid data
- Pipes, redirection, error handling, and exit codes
- Environment variables and `PATH`
- Reading and writing files, and checksums

## Portfolio projects

The scripts in [scripts/](scripts/) are portfolio implementations based on the four projects I completed:

1. Arithmetic calculator
2. File operations automation
3. File permission checker
4. Timestamped backup script

I also included [fly35x.sh](scripts/fly35x.sh), my first small “Hello World” script.

## Run the scripts

From this directory:

```bash
chmod +x scripts/*.sh
./scripts/arithmetic_calculator.sh 7 5 +
./scripts/file_operations.sh ./Arena ./Backup
./scripts/file_permission_checker.sh ./Arena
./scripts/timestamped_backup.sh ./Arena ./backups
./scripts/fly35x.sh
```

The backup script checks that its source directory exists before creating an archive.
