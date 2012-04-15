autoload -U compinit
compinit
export LANG='ja_JP.UTF-8'

zstyle ':completion:*' list-colors 'di=36'
zstyle ':completion:*:default' menu select=1

setopt CORRECT
setopt AUTO_CD
setopt AUTO_RESUME
setopt NOAUTOREMOVESLASH
setopt complete_aliases

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_dups     # ignore duplication command history list
setopt share_history        # share command history data 

PROMPT='%B%U%n%#%b%u '
SPROMPT="correct?;%R to %r [n,y,a,e]:%{[m%] "
RPROMPT='[ %29<...<%~]'

export PATH="/usr/local/sbin:~/bin:/sw/bin:/sw/sbin:/usr/local/teTeX/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/usr/X11R6/bin"

export PATH=/Applications/pTeX.app/teTeX/bin:$PATH

export PATH=/opt/local/bin:/opt/local/sbin/:$PATH
export MANPATH=/opt/local/man:$MANPATH

export LSCOLORS=exfxcxdxbxegedabagacad
alias ls="ls --color=auto"
alias zshrc="emacs ~/.zshrc"
alias vimp="emacs ~/.vimperatorrc"

function chpwd(){ls}

[[ $EMACS = t ]] && unsetopt zle
