#!/usr/bin/env bash
echo "Iniciando Backup..."
rsync -rtvhP --modify-window=1 --no-owner --no-group --no-perms --delete-excluded "/home/henrique/Documents/Obsidian-Vault/" "/run/media/henrique/External HD/HenriqueBackup/Obsidian-Vault/"

rsync -rtvhP --modify-window=1 --no-owner --no-group --no-perms --delete-excluded "/home/henrique/Documents/2025-2026/" "/run/media/henrique/External HD/HenriqueBackup/2025-2026/"

echo "backup finalizado."
