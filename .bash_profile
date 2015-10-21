# Vim configuration.
alias vim='mvim -v'
COPYFILE_DISABLE=1; export COPYFILE_DISABLE

export EDITOR=vim
alias crontab="VIM_CRONTAB=true crontab"

# Brew Ruby & Gems instead of system install.
export PATH="$HOME/.rbenv/bin:$PATH"
export RBENV_ROOT="$(brew --prefix rbenv)"
export GEM_HOME="$(brew --prefix)/opt/gems"
export GEM_PATH="$(brew --prefix)/opt/gems"

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
