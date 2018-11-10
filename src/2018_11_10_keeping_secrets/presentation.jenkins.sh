#doitlive prompt: {user.dim}: {cwd.red}/ $
#doitlive speed: 2
#doitlive commentecho: true

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
#>>>

ls -la /shared/project
gpg --decrypt --use-agent --batch /shared/project/passphrase.gpg
gpg --armor --export jenkins@example.com > /shared/project/jenkins.gpg.asc
#>>>

gpg --decrypt --use-agent --batch /shared/project/passphrase.gpg
#>>>

cd /shared/project
ansible-playbook ./main.yml
