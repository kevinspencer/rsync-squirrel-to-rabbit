#!/bin/bash

if [ ! -d "/Volumes/rabbit" ]; then
    echo "rabbit is not connected. Exiting."
    exit 1
fi

rsync -avhi --delete \
  --filter='protect home/' \
  --exclude=".Spotlight-V100" \
  --exclude=".fseventsd" \
  --exclude=".Trashes" \
  --exclude=".TemporaryItems" \
  --exclude=".DocumentRevisions-V100*" \
  "/Volumes/squirrel/" \
  "/Volumes/rabbit/"

date > /Volumes/rabbit/.lastran-$(basename "$0" .sh)
date > /Users/kevin/.lastran-$(basename "$0" .sh)
