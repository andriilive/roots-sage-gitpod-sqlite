echo "wp/web: $(gp url 8080)"
echo "wp/admin: $(gp url 8080)/wp/wp-admin/"
echo "wp/user:"
echo "username: root"
echo "password: root"
echo "wp/env:"
wp dotenv list
echo "--------------------------------------"
echo "gp/path:" $(readlink -f .)
echo "gp/workspace info:"
gp info
echo "gp/git remotes"
git remote -v