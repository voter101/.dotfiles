setopt appendhistory autocd nomatch autopushd pushdignoredups promptsubst
unsetopt beep
bindkey -e

# Disable ^S and ^Q for terminal
unsetopt flowcontrol

# Better history
export HISTSIZE=100000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE

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
