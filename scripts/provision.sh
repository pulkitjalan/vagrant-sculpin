#!/bin/bash

# Update
apt-get update
apt-get -y upgrade

apt-get -y install curl git awscli zip unzip
apt-get -y install imagemagick
apt-get -y install php5 php5-curl

# Install composer
curl -sS https://getcomposer.org/installer | php
chmod +x composer.phar
mv composer.phar /bin/composer

# Install sculpin
curl -sS -O https://download.sculpin.io/sculpin.phar
chmod +x sculpin.phar
mv sculpin.phar /bin/sculpin

# cleanup
apt-get autoclean
apt-get clean

echo "#!/bin/bash
sculpin generate --watch --server" > /bin/serve
chmod +x /bin/serve
