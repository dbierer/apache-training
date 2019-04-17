# apache-training.

This repository contains infrastructure and configuration file examples which match the Apache Fundamentals course.

## Clone this repository:
* As the normal user "vagrant", open a terminal window
* Change to the home directory `/home/vagrant`:
```
cd /home/vagrant
```
* Clone the repository:
```
git clone https://github.com/dbierer/apache-training
```
* You will see a new directory: `/home/vagrant/apache-training`
* Change to super user.  Password is "vagrant"
```
su
```
* Change to the directory for the newly cloned repository:
```
cd /home/vagrant/apache-training
```
* Copy the files to the right places using the new shell script:
```
chmod +x ./copy.sh
./copy.sh
```
* Set permissions for the apache user (which defaults to "daemon"):
```
chown -R vagrant:daemon /home/vagrant
chmod -R 775 /home/vagrant
chown -R vagrant:daemon /var/www
chmod -R 775 /var/www
```

## Refresh the files in the repository
After each class session the files in this repository will be updated.  To perform a refresh, proceed as follows:
* Open a terminal window
* Change to super user.  Password is "vagrant"
```
su
```
* Change to the directory for the repository:
```
cd /home/vagrant/apache-training
```
* Refresh the files
```
git pull
```
* Copy the files to the right places using the shell script:
```
./copy.sh
```
* Set permissions for the apache user (which defaults to "daemon"):
```
chown -R vagrant:daemon /home/vagrant
chmod -R 775 /home/vagrant
chown -R vagrant:daemon /var/www
chmod -R 775 /var/www
```

## Directory Structure
* `home/vagrant`
  * Contains files which should be placed in `/home/vagrant`
* `var/www`
  * Contains files which should be placed in `/var/www`
  * This assumes that you have set the web server's `DocumentRoot` to `/var/www`
  * If that is not the case, substitute `/var/www` with whatever you have set to be the `DocumentRoot` 
* `/usr/local/apache2/conf/extra`
  * Contains solutions to labs + examples of configuration scripts
  
## Directory Tree
├── README.md
├── copy.sh
├── home
│   └── vagrant
│       ├── alias_test
│       │   ├── images
│       │   │   ├── cat.png
│       │   │   └── dog.png
│       │   └── index.html
│       ├── basetest
│       │   ├── images
│       │   │   ├── cat.png
│       │   │   ├── dog.png
│       │   │   ├── original
│       │   │   │   ├── animals
│       │   │   │   │   ├── cat.png
│       │   │   │   │   └── dog.png
│       │   │   │   ├── people
│       │   │   │   │   ├── man.png
│       │   │   │   │   └── woman.png
│       │   │   │   └── vehicles
│       │   │   │       ├── car.png
│       │   │   │       └── truck.png
│       │   │   ├── width_100
│       │   │   │   ├── animals
│       │   │   │   │   ├── cat.png
│       │   │   │   │   └── dog.png
│       │   │   │   ├── people
│       │   │   │   │   ├── man.png
│       │   │   │   │   └── woman.png
│       │   │   │   └── vehicles
│       │   │   │       ├── car.png
│       │   │   │       └── truck.png
│       │   │   ├── width_200
│       │   │   │   ├── animals
│       │   │   │   │   ├── cat.png
│       │   │   │   │   └── dog.png
│       │   │   │   ├── people
│       │   │   │   │   ├── man.png
│       │   │   │   │   └── woman.png
│       │   │   │   └── vehicles
│       │   │   │       ├── car.png
│       │   │   │       └── truck.png
│       │   │   └── width_300
│       │   │       ├── animals
│       │   │       │   ├── cat.png
│       │   │       │   └── dog.png
│       │   │       ├── people
│       │   │       │   ├── man.png
│       │   │       │   └── woman.png
│       │   │       └── vehicles
│       │   │           ├── car.png
│       │   │           └── truck.png
│       │   └── index.html
│       ├── cgi
│       │   ├── error
│       │   │   ├── 0.pl
│       │   │   ├── emerg.pl
│       │   │   └── numbers
│       │   │       └── 0.pl
│       │   ├── hello.pl
│       │   ├── one
│       │   │   └── hello.pl
│       │   └── two
│       │       └── hello.pl
│       ├── content
│       │   ├── tarzan.epub
│       │   └── tarzan.pdf
│       ├── errors
│       │   ├── 0.html
│       │   ├── 1.html
│       │   ├── 2.html
│       │   ├── 3.html
│       │   ├── 4.html
│       │   ├── 5.html
│       │   ├── 6.html
│       │   ├── 7.html
│       │   └── index.html
│       ├── images
│       │   ├── animals
│       │   │   ├── cat.png
│       │   │   └── dog.png
│       │   ├── people
│       │   │   ├── man.png
│       │   │   └── woman.png
│       │   └── vehicles
│       │       ├── car.png
│       │       └── truck.png
│       ├── maptest
│       │   ├── 0.html
│       │   ├── 1.html
│       │   ├── 2.html
│       │   ├── 3.html
│       │   ├── 4.html
│       │   ├── 5.html
│       │   ├── 6.html
│       │   ├── 7.html
│       │   ├── index.html
│       │   └── log_levels.txt
│       ├── secure
│       │   └── index.html
│       ├── slash
│       │   ├── images
│       │   │   ├── cat.png
│       │   │   └── dog.png
│       │   └── index.html
│       └── test.php
├── usr
│   └── local
│       └── apache2
│           └── conf
│               └── extra
│                   ├── httpd-alias.conf
│                   ├── httpd-cgi.conf
│                   ├── httpd-headers.conf
│                   ├── httpd-logs.conf
│                   ├── httpd-rewrite.conf
│                   ├── httpd-security.conf
│                   ├── httpd-ssl.conf
│                   ├── httpd-vhosts.conf
│                   └── test.conf
└── var
    └── www
        ├── contents
        │   ├── gettysburg_address.pdf
        │   ├── index.html
        │   ├── romeo_and_juliet.pdf
        │   ├── tarzan.epub
        │   └── tarzan.pdf
        ├── header
        │   └── index.html
        ├── homepage.mobile.html
        ├── homepage.std.html
        ├── illegal
        │   └── index.html
        ├── images
        │   ├── cat.png
        │   └── dog.png
        ├── index.html
        ├── index.php
        ├── json
        │   ├── index.html
        │   └── test.json
        ├── new_stuff
        │   └── index.html
        ├── old_stuff
        │   └── index.html
        ├── safe
        │   └── index.html
        ├── super_secret
        │   └── index.html
        ├── test.php
        └── work_in_progress
