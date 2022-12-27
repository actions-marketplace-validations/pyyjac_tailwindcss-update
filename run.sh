#!/bin/sh

apk add --no-cache git
npm add --no-lockfile -D tailwindcss $INPUT_PLUGINS
npm run tailwindcss -i $INPUT_INPUT -o $INPUT_OUTPUT -f
git config --global --add safe.directory /github/workspace
git add $INPUT_OUTPUT
