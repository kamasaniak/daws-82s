#!/bin/bash
set -euo pipefail

USERID=$(id -u)

if [ "$USERID" -ne 0 ]; then
  echo "ERROR: You must run this script as root (sudo)." >&2
  exit 1
fi

# refresh metadata (optional but helpful)
dnf makecache --refresh

# NOTE: on RHEL9, 'mysql-server' may not be in the default repos.
# If you want the MariaDB server instead, replace mysql-server with mariadb-server.
MYSQL_PKG="mysql-server"

# Install MySQL (or change to mariadb-server if needed)
if dnf install -y "$MYSQL_PKG"; then
  echo "installing mysql ... SUCCESS"
else
  echo "installing mysql ... FAILURE" >&2
  exit 1
fi

# Install Git
if dnf install -y git; then
  echo "installing Git ... SUCCESS"
else
  echo "installing Git ... FAILURE" >&2
  exit 1
fi
