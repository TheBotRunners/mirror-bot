#!/bin/sh

echo "Setting up..."

# Update Hostname if supplied
if [ -n $HOSTNAME ]; then
    echo $HOSTNAME > /etc/hostname
fi

# Move to root
cd /

# Clone botkit
git clone https://github.com/howdyai/botkit.git

# Move to Source
cd botkit

# Install botkit
npm install -g --production

# Setup Token
sed -i "s/{{TOKEN}}/$TOKEN/g" /scripts/mirror-bot.js

rm -Rf /botkit

touch /initialized