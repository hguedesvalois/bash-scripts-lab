# Bash Scripts Lab

A personal sandbox for practicing Bash scripting. Each file is a small,
self-contained script written to explore a language feature, command, or
concept — from colored terminal output to loops and user input.

## Contents

| Script        | Description                                                                 |
| ------------- | --------------------------------------------------------------------------- |
| `hello-world` | Prints a colored `Hello World` message using ANSI escape codes.             |
| `timer`       | Asks for a number of seconds and counts down to zero, printing `Time is up`. |

## Requirements

- Bash (`#!/usr/bin/env bash` is used so the interpreter is resolved from `PATH`)
- A Unix-like system (Linux, macOS, WSL)

## Usage

Make a script executable if needed, then run it:

```bash
chmod +x hello-world
./hello-world
```

Scripts that read input are meant to be run interactively:

```bash
./timer
# Tempo em segundos?
# 3
# 3
# 2
# 1
# Time is up
```

## Notes

- Scripts are intentionally simple and independent; there is no shared library
  or build step.
- Comments and prompts in some scripts are in Portuguese, as part of the
  learning process.
- New scripts are added here as practice continues.

## Adding a script

1. Create the file with a `#!/usr/bin/env bash` shebang.
2. Make it executable with `chmod +x <script>`.
3. Add a row to the **Contents** table above.
