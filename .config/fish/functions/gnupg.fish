# Start or re-use a gpg-agent.
#
# Requires gpgtools v2.1+
#
# Taken from http://deferred.io/2017/08/03/yubikey4-gpg-ssh-u2f.html

gpg-connect-agent /bye
export SSH_AUTH_SOCK=(gpgconf --list-dirs agent-ssh-socket)
