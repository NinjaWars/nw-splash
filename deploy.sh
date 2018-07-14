#!/bin/bash
echo "...syncing..."
aws s3 sync ./www/ s3://ninjawars-splash/ --profile=bitdog --exclude ".git/*" --exclude "deploy.sh" --exclude "README.md" --delete
echo "---------------------------------------------------------------------------------------"
echo ""
echo "Site should be uploaded at: https://splash.ninjawars.net"
echo "Done."