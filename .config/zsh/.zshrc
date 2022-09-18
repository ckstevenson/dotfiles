# vi mode
#bindkey -v
bindkey -e
# bring back my bash habits
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

#export KEYTIMEOUT=1

HISTFILE=~/.cache/zsh/history
HISTSIZE=1000
SAVEHIST=1000

autoload -U colors && colors

zstyle :compinstall filename '/home/cameron/.zshrc'

# completions baybay
autoload -U compinit && compinit -u
autoload bashcompinit && bashcompinit
zstyle ':completion:*' menu select
# Auto complete with case insenstivity
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
# allow approximations
zstyle ':completion:*' completer _complete _approximate
# better completion formatting
zstyle ':completion:*:*:*:*:descriptions' format '%F{cyan}-- %d --%f'
# better approximations formatting
zstyle ':completion:*:*:*:*:corrections' format '%F{yellow}!- %d (errors: %e) -!%f'
# use grouping
zstyle ':completion:*' group-name ''
# color listing
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.
# use the vi navigation keys in menu completion
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

# prompt
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
zstyle ':vcs_info:git:*' formats ' %F{green}( %b)'
zstyle ':vcs_info:*' enable git
PROMPT='%F{blue}%m %F{magenta}%2~'\$vcs_info_msg_0_' %F{yellow}>%f '

# Enable searching through history
bindkey '^R' history-incremental-pattern-search-backward

# ci", ci', ci`, di", etc
autoload -U select-quoted
zle -N select-quoted
for m in visual viopp; do
  for c in {a,i}{\',\",\`}; do
    bindkey -M $m $c select-quoted
  done
done

# ci{, ci(, ci<, di{, etc
autoload -U select-bracketed
zle -N select-bracketed
for m in visual viopp; do
  for c in {a,i}${(s..)^:-'()[]{}<>bB'}; do
    bindkey -M $m $c select-bracketed
  done
done

# Control bindings for programs
bindkey -s "^b" "bc -l\n"
bindkey -s "^f" "$FILE\n"
#bindkey -s "^m" "$MAIL\n"
bindkey -s "^n" "khal calendar\n"
bindkey -s "^q" "pritunl-client list\n"
#bindkey -s "^l" "clear\n"

for f in ~/.config/shell/*; do source "$f"; done

source <(awless completion zsh)
complete -C '/usr/bin/aws_completer' /usr/bin/aws
