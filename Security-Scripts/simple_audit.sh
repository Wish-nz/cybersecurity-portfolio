#!/usr/bin/env bash
# Very simple security audit script
# - Non-destructive, prints a few basic checks useful for a quick manual review.
# Usage: sudo ./simple_audit.sh

set -euo pipefail

echo "Simple security audit - minimal checks"
if [ "$(id -u)" -ne 0 ]; then
  echo "Warning: some checks need sudo/root to be comprehensive. Rerun with sudo if possible." >&2
fi

echo
echo "1) SUID/SGID files (may take a while)"
# Find files with SUID or SGID bits set
find / -path /proc -prune -o -perm /6000 -type f -exec ls -ld {} \; 2>/dev/null || true

echo
echo "2) World-writable files (excluding /proc and /sys)"
find / -path /proc -prune -o -path /sys -prune -o -xdev -type f -perm -0002 -ls 2>/dev/null || true

echo
echo "3) SSH daemon config checks (/etc/ssh/sshd_config)"
if [ -r /etc/ssh/sshd_config ]; then
  grep -E '^\s*(PermitRootLogin|PasswordAuthentication)' /etc/ssh/sshd_config || echo "No explicit PermitRootLogin/PasswordAuthentication lines found"
else
  echo "Cannot read /etc/ssh/sshd_config"
fi

echo
echo "4) Listening TCP ports (shows process if available)"
if command -v ss >/dev/null 2>&1; then
  ss -ltnp 2>/dev/null || true
elif command -v netstat >/dev/null 2>&1; then
  netstat -ltnp 2>/dev/null || true
else
  echo "Neither ss nor netstat found on PATH"
fi

echo
echo "Done. This is a tiny, non-exhaustive script intended for quick, manual checks only."
