#!/bin/bash

# exit the script if any of the commands fail.
# further discussion: http://www.davidpashley.com/articles/writing-robust-shell-scripts/
echo BEGINNING SETUP APP

set -e

# Do not run script as root.  Will fail installing pdfium if you do...
test $USER != 'root' || { echo do NOT run as root >&2; exit 1; }
LOGINUSER=$(logname)      # login user is ubuntu for a vanilla ubuntu installation.
USERNAME=${1:-$LOGINUSER} # but this can be overridden by passing a username as the first argument.

echo "executing as $USERNAME"
# Make sure you have your github keys authorized, installed, and chmod to 600!
sudo grep -q github /home/$USERNAME/.ssh/known_hosts 2>/dev/null || sudo ssh-keyscan -t rsa github.com > /home/$USERNAME/.ssh/known_hosts

test -e /home/$USERNAME/sourceAFRICA || git clone git@github.com:CodeForAfrica/sourceAFRICA.git sourceAFRICA

cd /home/$USERNAME/sourceAFRICA

# Install bundler and install gems
gem install bundler
bundle

# Install bower
sudo npm install -g bower
bower install --config.interactive=false

# # Set password in environment.
# sudo su -l ubuntu <<EOF
# cd /home/ubuntu/sourceAFRICA && rails runner "ENV['PASSWORD']='hi'"
# EOF


# Don't forget to download your secrets file into sourceAFRICA/secrets!

#./bin/rails runner -e production 'puts "You already have #{Document.count} documents"'

# if you would like to use git hooks to automatically bundle the app's gem dependencies:

# sudo ln -s /home/$USERNAME/sourceAFRICA/config/server/files/git-post-merge.sh /home/$USERNAME/sourceAFRICA/.git/hooks/post-merge
echo SETUP APP COMPLETED SUCCESSFULLY
