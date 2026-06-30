# Security-Scripts

This directory contains a very small, non-destructive "very very simple" security script for quick local checks.

Files:
- simple_audit.sh — a tiny Bash script that lists SUID/SGID files, world-writable files, checks basic SSH daemon settings, and shows listening TCP ports.

Usage:
1. Make the script executable: `chmod +x Security-Scripts/simple_audit.sh`
2. Run it (preferably as root for more complete results): `sudo Security-Scripts/simple_audit.sh`

Notes:
- This script is intentionally minimal and not a replacement for a full security audit or hardening guide.
- It is non-destructive and only prints information.
