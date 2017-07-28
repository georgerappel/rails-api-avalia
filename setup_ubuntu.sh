apt-get install software-properties-common

apt-add-repository -y ppa:rael-gc/rvm
apt-get update
apt-get install rvm

. ~/.bashrc

rvm install 2.3.1
rvm use 2.3.1

bundle install
