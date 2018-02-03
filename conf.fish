# Created by newuser for 4.3.17
# LANG
#set -g TERM xterm-256color

set -x PATH /usr/local/bin $PATH
set -x PATH /usr/local/sbin $PATH
#set -x PATH $HOME/node_modules/.bin $PATH
set -x HOMEBREW_GITHUB_API_TOKEN "aaff693ab47af8de072021211c44e0be4a14eace"
set -x PATH $HOME/.anyenv/bin $PATH
set -x PYENV_ROOT $HOME/.pyenv
set -x PATH $PYENV_ROOT/shims $PATH
#set -x PHPENV_ROOT $HOME/.phpenv
#set -x PATH $PHPENV_ROOT/bin $PATH
#eval (rbenv init - | source)
#eval (anyenv init - | source)
#
##phpenv by anyenv
set -x PHPENV_ROOT $HOME/.anyenv/envs/phpenv
set -x PATH $PATH $PHPENV_ROOT/bin
set -x PATH $PATH $PHPENV_ROOT/shims


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/masatakeyamauchi/google-cloud-sdk/path.fish.inc' ]; if type source > /dev/null; source '/Users/masatakeyamauchi/google-cloud-sdk/path.fish.inc'; else; . '/Users/masatakeyamauchi/google-cloud-sdk/path.fish.inc'; end; end
