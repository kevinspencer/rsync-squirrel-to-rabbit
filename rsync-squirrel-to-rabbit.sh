#!/bin/bash

rsync -avh --delete \
  --exclude=".Spotlight-V100" \
  --exclude=".fseventsd" \
  --exclude=".Trashes" \
  --exclude=".TemporaryItems" \
  --exclude=".DocumentRevisions-V100*" \
  "/Volumes/squirrel/" \
  "/Volumes/rabbit/"
