#!/bin/bash

REMOTE_USER=username
REMOTE_HOST=your.server.com
TARGET_DIR=/var/www/html/myapp

echo "Deploying release.zip to remote server..."
scp release.zip $REMOTE_USER@$REMOTE_HOST:$TARGET_DIR/

ssh $REMOTE_USER@$REMOTE_HOST << EOF
  cd $TARGET_DIR
  unzip -o release.zip
  echo "✅ Deployed successfully!"
EOF
