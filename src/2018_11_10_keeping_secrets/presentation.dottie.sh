#doitlive prompt: {user.dim}: {cwd.red}/ $
#doitlive speed: 2
#doitlive commentecho: true

# This is bootstrap code. Please continue until you get the presentation header.
sudo mkdir -p /shared/project
sudo chown dottie_demo /shared/project
cp ./project/* /shared/project/

clear

#
#
#Keeping Secrets in your code
#
#- https://github.com/krotscheck/presentations/tree/master/src/2018_11_10_keeping_secrets
#- Michael Krotscheck<krotscheck@gmail.com>
#
#

more gpg.config
gpg --generate-key --batch gpg.config
gpg --list-keys
gpg --list-secret-keys
#<<<

openssl rand -base64 32 > passphrase
more passphrase
cat passphrase | gpg --encrypt -r dottie@example.com -o /shared/project/passphrase.gpg
xxd /shared/project/passphrase.gpg
gpg --decrypt --use-agent --batch /shared/project/passphrase.gpg
gpg --decrypt --use-agent --batch /shared/project/passphrase.gpg

#<<<
more /shared/project/jenkins.gpg.asc
gpg --import /shared/project/jenkins.gpg.asc
gpg --list-keys
gpg --list-secret-keys

cat passphrase | gpg --encrypt -r dottie@example.com -r jenkins@example.com -o /shared/project/passphrase.gpg
#<<<

cd /shared/project
ls -la

more passphrase.sh
./passphrase.sh
more ansible.cfg

ansible-vault create ./group_vars/all/main.yml
more ./group_vars/all/main.yml
ansible-playbook ./main.yml
