alias vim='mvim -v'
COPYFILE_DISABLE=1; export COPYFILE_DISABLE

export EDITOR=vim
alias crontab="VIM_CRONTAB=true crontab"

# Add GHC 7.8.4 to the PATH, via http://ghcformacosx.github.io/
export GHC_DOT_APP="/Applications/Haskell.app"
if [ -d "$GHC_DOT_APP" ]; then
    export PATH="${HOME}/.cabal/bin:${GHC_DOT_APP}/Contents/bin:${PATH}"
fi
