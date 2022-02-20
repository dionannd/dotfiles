# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export NVM_LAZY_LOAD=true
export NVM_COMPLETION=true

# Update automatically without asking
zstyle ':omz:update' mode auto
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Plugin.
plugins=(
    git 
    node
    npm
    nvm
    vscode 
    postgres 
    python
    zsh-syntax-highlighting
    zsh-autosuggestions
    zsh-completions
    zsh-history-substring-search
)

source $ZSH/oh-my-zsh.sh

lazynvm() {
    unset -f nvm node npm
    export NVM_DIR=~/.nvm
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
}

nvm() {
    lazynvm
    nvm $@
}

node() {
    lazynvm
    node $@
}

npm() {
    lazynvm
    npm $@
}

# Aliases
alias ls="colorls"
alias ll="colorls -l"
alias la="colorls -la"
alias tree="colorls --tree"
alias v="nvim"
alias vim="nvim"
alias TERM="xterm-256color"
alias cls="clear"
alias towedd="cd ~/Developer/towedd"
alias homepage="cd ~/Developer/my-homepage"
alias clr="clear"

# Git Aliases
alias gst="git status"
alias gadd="git add ."
alias gcm="git commit -m"
alias gbr="git branch"
alias gck="git checkout"
alias gps"git push origin"

# Initialize the completion system
autoload -U compinit && compinit

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
    export EDITOR='nvim'
fi

# Cache completion if nothing changed - faster startup time
typeset -i updated_at=$(date +'%j' -r ~/.zcompdump 2>/dev/null || stat -f '%Sm' -t '%j' ~/.zcompdump 2>/dev/null)
if [ $(date +'%j') != $updated_at ]; then
  compinit -i
else
  compinit -C -i
fi

# Enhanced form of menu completion called `menu selection'
zmodload -i zsh/complist

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# find out which distribution we are running on
_distro=$(awk '/^ID=/' /etc/*-release | awk -F'=' '{ print tolower($2) }')

# set an icon based on the distro
case $_distro in
    *kali*)                  ICON="ﴣ";;
    *arch*)                  ICON="";;
    *debian*)                ICON="";;
    *raspbian*)              ICON="";;
    *ubuntu*)                ICON="";;
    *elementary*)            ICON="";;
    *fedora*)                ICON="";;
    *coreos*)                ICON="";;
    *gentoo*)                ICON="";;
    *mageia*)                ICON="";;
    *centos*)                ICON="";;
    *opensuse*|*tumbleweed*) ICON="";;
    *sabayon*)               ICON="";;
    *slackware*)             ICON="";;
    *linuxmint*)             ICON="";;
    *alpine*)                ICON="";;
    *aosc*)                  ICON="";;
    *nixos*)                 ICON="";;
    *devuan*)                ICON="";;
    *manjaro*)               ICON="";;
    *rhel*)                  ICON="";;
    *)                       ICON="";;
esac

export STARSHIP_DISTRO="$ICON "

# Load  config
# Starship
eval "$(starship init zsh)"

# z jump directory
. ~/z.sh

# source vte.sh
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

# Colorls
source $(dirname $(gem which colorls))/tab_complete.sh

# Created by `pipx` on 2022-02-14 12:04:31
export PATH="$PATH:/home/dion/.local/bin"

alias luamake=/home/dion/.config/nvim/lua-language-server/3rd/luamake/luamake
