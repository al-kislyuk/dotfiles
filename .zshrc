# pyenv
eval "$(pyenv init -)"

# zsh autosuggestions
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# informative git prompt for zsh
PROMPT='%B%n@%m:%1~%b >'

# aliases
# common
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
alias l.='ls -d .* --color=auto'
alias ll='ls -alF'
alias ls='ls --color=auto'
alias mc='. /usr/libexec/mc/mc-wrapper.sh'
alias vi='vim'
alias vs='codium'
alias py='python3'
alias pyc='pycharm-ce'

# mangled commands
alias gti='git'

# vi keybinding
# bindkey -v
# bindkey -v '^?' backward-delete-char

# zsh-completions
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -Uz compinit
  compinit
fi

