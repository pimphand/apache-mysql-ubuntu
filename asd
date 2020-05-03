apt update
apt upgrade -y

apt install apache2 -y
systemctl status apache2

apt install software-properties-common -y
add-apt-repository ppa:ondrej/php
apt install php7.4-common php7.4-mysql php7.4-xml php7.4-xmlrpc php7.4-curl php7.4-gd php7.4-imagick php7.4-cli php7.4-dev php7.4-imap php7.4-mbstring php7.4-soap php7.4-zip php7.4-bcmath libapache2-mod-php7.4 -y

apt install software-properties-common
apt-key adv --fetch-keys 'https://mariadb.org/mariadb_release_signing_key.asc'
add-apt-repository 'deb [arch=amd64,arm64,ppc64el] http://sfo1.mirrors.digitalocean.com/mariadb/repo/10.4/ubuntu bionic main'

apt install mariadb-server
systemctl status mariadb
mysql_secure_installation

mysql -u root -p
CREATE DATABASE wordpress;
CREATE USER 'wordpress'@'localhost' IDENTIFIED BY 'rahasia';
GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpress'@'localhost';
FLUSH PRIVILEGES;

wget -c https://files.phpmyadmin.net/phpMyAdmin/5.0.2/phpMyAdmin-5.0.2-english.tar.gz
tar xzvf phpMyAdmin-5.0.2-english.tar.gz
mv phpMyAdmin-5.0.2-english /usr/share/phpmyadmin
ln -s /usr/share/phpmyadmin /var/www/html

http://IP_SERVER/phpmyadmin  
