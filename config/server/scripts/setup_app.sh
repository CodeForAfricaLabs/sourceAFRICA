#!/bin/bash

# approve github ssh host key
grep -q github .ssh/known_hosts 2>/dev/null || ssh-keyscan -t rsa github.com > .ssh/known_hosts

# Make sure you have your github keys authorized, installed, and chmod to 600!

USERNAME=ubuntu
RAILS_ENVIRONMENT=production

chown -R $USERNAME .
test -e documentcloud || sudo -u $USERNAME git clone git@github.com:CodeForAfrica/sourceAFRICA.git sourceAFRICA
cd /home/$USERNAME/sourceAFRICA

sudo -u $USERNAME gem install bundler
sudo -u $USERNAME ./bin/bundle install

# Don't forget to download your secrets file into sourceAFRICA/secrets!

#./bin/rails runner -e production 'puts "You already have #{Document.count} documents"'

# if you would like to use git hooks to automatically bundle the app's gem dependencies:
# sudo ln -s /home/$USERNAME/sourceAFRICA/config/server/files/git-post-merge.sh /home/$USERNAME/sourceAFRICA/.git/hooks/post-merge