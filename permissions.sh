#!/usr/local/bin/bash
SCRIPTS_DIR="./scripts"
SCRIPTS=${SCRIPTS_DIR}/*

echo "Adding permissions..."
for file in $SCRIPTS ; do
  chmod -v u+x $file | xargs echo "Added permissions to"
done
echo "Done."
