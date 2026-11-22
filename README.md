# Bash Scripts Lab

Small, self-contained Bash scripts for practice.

## Scripts

- `hello-world`: prints colored “Hello World”.
- `timer`: prompts for seconds, counts down, prints “Time is up”.
- `fix-metadata.sh`: merges Google Takeout/JSON metadata into media files via `exiftool` (run in a folder with media + JSON).
- `merge-metadata.sh`: example `exiftool` command for merging metadata from a JSON into a file.

## Requirements

- Bash (`#!/usr/bin/env bash`)
- Unix-like OS (Linux/macOS/WSL)

## Usage

```bash
chmod +x hello-world timer
./hello-world
./timer
```

## Notes

- No build step/shared libs; scripts are independent.
- Some prompts/comments may be in Portuguese.
- Add new scripts with a `#!/usr/bin/env bash` shebang, `chmod +x`, and list them here.
