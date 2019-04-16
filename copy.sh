#!/usr/bin/sh

# Assumes $1 is the apache group ("daemon" if installed from source)
GROUP=$1
if [ -z "$1" ]
  then
    GROUP="daemon"
fi

# Copies files from this repo to their proper place in the VM
cp -ruv ./var/www/* /var/www
chown -R vagrant:${GROUP} /var/www
chmod -R 775 /var/www
cp -ruv ./home/vagrant/* /home/vagrant
chown -R vagrant:${GROUP} /home/vagrant
chmod -R 775 /home/vagrant
