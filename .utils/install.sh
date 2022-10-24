# wp core install --skip-email --admin_email=test@test.com --admin_password=root --admin_user=root --title=test --url=http://roots.devs

# Install wp-cli dotenv package
wp package install aaemnnosttv/wp-cli-dotenv-command:^2.0
# Install vendor
composer install --no-dev --prefer-dist --optimize-autoloader --no-interaction

# Create .env file
wp dotenv init --template=.env.example --with-salts --force
wp dotenv set WP_HOME $(gp url 8080)