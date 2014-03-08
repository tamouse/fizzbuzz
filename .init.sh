#!/bin/sh
#
# Run initial setup and deactivate self.
#

set -e

bundle install
sed -i.bak '/Gemfile.lock/s/^/# /' .gitignore
git remote rm origin
hub create
git add --all --verbose
git commit -m 'Initial Commit'
git push -u origin master

chmod a-x .init.sh

echo "project setup complete. commence coding!"
