#!/bin/bash
set -e

pg_restore -U postgres -d dvdrental /docker-entrypoint-initdb.d/dvdrental.tar