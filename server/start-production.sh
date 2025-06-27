#!/bin/bash

# Absolute path to your user-installed NVM (adjust if needed)
export NVM_DIR="/home/ualikhanov/.nvm"

# Load nvm and set correct Node version
if [ -s "$NVM_DIR/nvm.sh" ]; then
  source "$NVM_DIR/nvm.sh"
else
  echo "nvm not found at $NVM_DIR"
  exit 1
fi

# Optional: load .nvm/bash_completion
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Use specific Node version (adjust as needed)
nvm use 22 >/dev/null

# Go to your app directory
cd /home/ualikhanov/apps/admission-shoqan/server/ || exit 1

# Start your app
npm run start
