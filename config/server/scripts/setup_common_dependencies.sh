#!/bin/bash

#################################
# SCRIPT SETUP
#################################

# exit the script if any of the commands fail.
# further discussion: http://www.davidpashley.com/articles/writing-robust-shell-scripts/
set -e

# This script needs to be run as root for permission purposes
test $USER = 'root' || { echo run this as root >&2; exit 1; }
# but the user we actually care about is the default ubuntu user.
USERNAME=ubuntu

#################################
# INSTALL SYSTEM DEPENDENCIES
#################################

# Make sure that apt-get doesn't attempt to load up any guis.
DEBIAN_FRONTEND=noninteractive

# Always make sure that we have up to date postgres packages by adding their apt repository.
echo "deb http://apt.postgresql.org/pub/repos/apt/ utopic-pgdg main" > /etc/apt/sources.list.d/pgdg.list

# and make sure that we have the key to verify their repository
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -
apt-get update

# List all the common system dependencies that all of our machines need.
PACKAGES='
postgresql-client-9.3
libpq-dev
git-core
postfix
sqlite3
libsqlite3-dev
libcurl4-openssl-dev
graphicsmagick
pdftk
xpdf
libreoffice
libreoffice-common
libjpeg-dev
libtiff5-dev
libpng12-dev
libleptonica-dev
tesseract-ocr-dev
tesseract-ocr
libpcre3-dev
sysstat
libbz2-dev
libfreetype6-dev
libfreeimage-dev
make
ntp
'

RUBY_DEPENDENCIES='
build-essential
libffi-dev
libgdbm-dev
libncurses5-dev
libreadline-dev
libssl-dev
libyaml-dev
libxml2-dev
libxslt-dev
libexpat1-dev
zlib1g-dev
ruby
ri
ruby-dev
'

TESSERACT_LANGUAGES='tesseract-ocr-*'

# Fonts to support Chinese, Japanese, and Korean character sets
FONT_PACKAGES='
ttf-wqy-microhei
ttf-wqy-zenhei
ttf-kochi-gothic
ttf-kochi-mincho
fonts-nanum
ttf-baekmuk
'

# install all system dependencies
echo $PACKAGES $TESSERACT_LANGUAGES $RUBY_DEPENDENCIES $FONT_PACKAGES | xargs apt-get install -y

#################################
# INSTALL RUBY SWITCHER
#################################

# Despite the fact that a system ruby has been installed via apt
# we'll use ruby-install and chruby to install a more recent ruby

installer_tmp="/home/$USERNAME/downloads/"
mkdir -p $installer_tmp
cd $installer_tmp

ruby_install_version='0.5.0'
chruby_version='0.3.9'

wget -O ruby-install-$ruby_install_version.tar.gz https://github.com/postmodern/ruby-install/archive/v$ruby_install_version.tar.gz
tar -xzvf ruby-install-$ruby_install_version.tar.gz

wget -O chruby-$chruby_version.tar.gz https://github.com/postmodern/chruby/archive/v$chruby_version.tar.gz
tar -xzvf chruby-$chruby_version.tar.gz

# # OPTIONAL signature checking
# # Import Postmodern's key.
# wget https://raw.github.com/postmodern/postmodern.github.io/master/postmodern.asc
# gpg --import postmodern.asc
#
# # Verify that ruby-install was signed by postmodern
# wget https://raw.github.com/postmodern/ruby-install/master/pkg/ruby-install-$ruby_install_version.tar.gz.asc
# gpg --verify ruby-install-$ruby_install_version.tar.gz.asc ruby-install-$ruby_install_version.tar.gz
#
# # Verify that chruby was signed by postmodern
# wget https://raw.github.com/postmodern/chruby/master/pkg/chruby-$chruby_version.tar.gz.asc
# gpg --verify chruby-$chruby_version.tar.gz.asc chruby-$chruby_version.tar.gz

cd "$installer_tmp/ruby-install-$ruby_install_version/"
make install

cd "$installer_tmp/chruby-$chruby_version/"
make install

# Ensure that chruby is available to login shells and that
# the current stable version of ruby is set to
echo 'if [ -n "$BASH_VERSION" ] || [ -n "$ZSH_VERSION" ]; then
  source /usr/local/share/chruby/chruby.sh
  source /usr/local/share/chruby/auto.sh
  chruby ruby stable
fi' > /etc/profile.d/chruby.sh

# Install the current stable version of ruby.
ruby-install ruby

# turn off rdoc/ri generation for gems
echo 'gem: --no-document' > /home/$USERNAME/.gemrc
chown $USERNAME.$USERNAME /home/$USERNAME/.gemrc


#################################
# SYSTEM CONFIG
#################################

# disable ssh dns to avoid long pause before login
grep -q '^UseDNS no' /etc/ssh/sshd_config || echo 'UseDNS no' >> /etc/ssh/sshd_config
service ssh reload

# postfix configuration
perl -pi -e 's/smtpd_use_tls=yes/smtpd_use_tls=no/' /etc/postfix/main.cf

# load chruby (and thereby the current stable ruby)
source /etc/profile.d/chruby.sh

## Cleanup after ourselves
rm -rf "$installer_tmp/ruby-install-$ruby_install_version/"
rm -rf "$installer_tmp/chruby-$chruby_version/"

# replace annoying motd with new one
test -e /etc/motd && rm /etc/motd
cat >/etc/motd <<'EOF'

                                 _    _____ ____  ___ ____    _    
 ___  ___  _   _ _ __ ___ ___   / \  |  ___|  _ \|_ _/ ___|  / \   
/ __|/ _ \| | | | '__/ __/ _ \ / _ \ | |_  | |_) || | |     / _ \  
\__ \ (_) | |_| | | | (_|  __// ___ \|  _| |  _ < | | |___ / ___ \ 
|___/\___/ \__,_|_|  \___\___/_/   \_\_|   |_| \_\___\____/_/   \_\

EOF
uname -a | tee -a /etc/motd

echo COMMON DEPENDENCY SETUP COMPLETED SUCCESSFULLY
