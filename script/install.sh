#!/bin/bash

#instalação para linux
sudo apt-get update
sudo apt-get install build-essential openssl libreadline6 libreadline6-dev git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-0 libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev automake libtool bison subversion git-core

bash -s stable < <(curl -s https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer )

echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function' >> ~/.bashrc
source ~/.bashrc
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

rvm install 1.9.3
rvm use 1.9.3 --default
gem install bundler
git clone git://github.com/natanael-araujo/registro_academico.git
cd registro_academico
bundle install
bundle exec rake db:migrate
bundle exec rails s
