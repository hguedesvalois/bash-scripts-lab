#!/usr/bin/env bash
set -uo pipefail

SRC="/DATA/Gallery/immich/library/admin/"
DEST="/DATA/HenriqueShared/HenriqueBackup/2025-2026/ImmichUploadsBackup/"
LOG="$HOME/.local/log/immich-backup.log"
LOCK="/temp/immich-backup.lock"

mkdir -p "$(dirname "$LOG")" "$DEST"

exec 9>"$LOCK"
if ! flock -n 9; then
  echo"$(date '+%F %T') [SKIP] Backup anterior ainda em execução." >>"$LOG"
  exit 0
fi

{
  echo "=== $(date '+%F %T') Início ==="
  /usr/bin/rsync -ahi --stats \
    "$SRC" "$DEST"
  rc=$?
  echo "=== $(date '+%F %T') Fim (exit=$rc) ==="
  exit "$rc"
} >>"$LOG" 2>&1
