# pyenv
eval "$(pyenv init -)"

# zsh autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# informative git prompt for zsh
source /opt/homebrew/opt/zsh-git-prompt/zshrc.sh
PROMPT='%B%n@%m:%~%b$(git_super_status)$ '

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
alias vs='code'
alias py='python3'

# mangled commands
alias gti='git'

# vi keybinding
# bindkey -v
# bindkey -v '^?' backward-delete-char
