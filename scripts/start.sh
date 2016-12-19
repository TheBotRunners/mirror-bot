#!/bin/sh

set -e

# Verify Token
if [ -z $TOKEN ]; then
    echo -n "\$TOKEN has not been set"
    exit 1
fi

# Check that Initialization has been done
if [ ! -e /initialized ]; then
    ./setup.sh
fi

echo "Starting bot..."

nodejs mirror-bot.js