# Use powerline
ZSH_THEME="robbyrussell"

PROMPT="%F{171}%n%f in %F{197}%~%f -> "

# Basic auto/tab complete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)  #include hidden files

# vi mode
bindkey -v
export KEYTIMEOUT=1

# Use vim keys in tab complete menu
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char 
bindkey -M menuselect 'j' vi-down-line-or-history 
bindkey -M menuselect '^?' backward-delete-char

USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

fpath+=$HOME/.zsh/pure

# Set history caching
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# source ~/zsh-plugins/agnoster-zsh-theme/agnoster.zsh-theme
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# ZSH_THEME="powerlevel10k/powerlevel10k"
