#!/usr/bin/sh

# Copies files from this repo to their proper place in the VM
cp -r ./var/www/* /var/www
cp -r ./home/vagrant/* /home/vagrant

