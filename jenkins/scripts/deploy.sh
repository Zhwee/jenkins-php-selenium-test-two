#!/usr/bin/env sh

set -x
# Clone the repository
git clone https://github.com/Zhwee/jenkins-php-selenium-test-two.git

# Change directory to the cloned repository
cd jenkins-php-selenium-test-two

# Run the Docker container

docker run -d -p 80:80 --name my-apache-php-app -v $(pwd)/src:/var/www/html php:7.2-apache
sleep 1
set +x

echo 'Now...'
echo 'Visit http://localhost to see your PHP application in action.'
