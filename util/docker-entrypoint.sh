#!/bin/bash
set -e

cd /var/www
export NODE_ENV=production
export VERSION=$(git rev-parse HEAD)

# use forever to manage service
npm install -g forever
forever app.js
