automatic options added
setopt appendhistory autocd nomatch autopushd pushdignoredups promptsubst
unsetopt beep
bindkey -e
PATH="`ruby -e 'puts Gem.user_dir'`/bin:$PATH"

autoload -U promptinit
promptinit
prompt bart

. ~/.shell/aliases

# Run on new shell
have_fortune=`which fortune`
if [ -e have_fortune ]; then
    echo ""
    fortune
    echo ""
fi

source ~/.rvmrc
