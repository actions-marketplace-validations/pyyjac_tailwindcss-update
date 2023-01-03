#!/bin/sh

apk add --no-cache git
yarn add --no-lockfile -D tailwindcss $INPUT_PLUGINS
yarn run tailwindcss -f -i $INPUT_INPUT -o $INPUT_OUTPUT
git config --global --add safe.directory /github/workspace
git add $INPUT_OUTPUT
