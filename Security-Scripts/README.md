# Security-Scripts

Small utilities and scripts for quick local checks.

Included
- simple_audit.sh — lists SUID/SGID files, world-writable files, basic SSH settings, and listening TCP ports.

Usage
1. Make executable:
   chmod +x Security-Scripts/simple_audit.sh
2. Run:
   sudo ./Security-Scripts/simple_audit.sh

Notes
- Non-destructive: prints system info only.
- Review before sharing output publicly — it may reveal sensitive system details.
- Author: Daniel Thrasyvoulou
