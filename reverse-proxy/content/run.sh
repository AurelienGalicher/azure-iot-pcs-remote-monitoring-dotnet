#!/usr/bin/env bash
set -e
set -x

mkdir -p /app/logs
sudo nginx -c /app/config/nginx.conf
