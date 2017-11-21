#!/bin/bash
echo "...syncing..."
aws s3 sync ./www/ s3://ninjawars-splash/ --profile=bitdog --exclude ".git/*" --exclude "deploy.sh" --exclude "README.md" --delete
echo "---------------------------------------------------------------------------------------"
echo ""
echo "Site should be uploaded at: http://ninjawars-splash.s3-website-us-east-1.amazonaws.com"
echo "Done."