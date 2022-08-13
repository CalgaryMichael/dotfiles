export LANG=en_US.UTF-8
export EDITOR='vim'

export ZSH="/Users/cm/.oh-my-zsh"
ZSH_THEME="robbyrussell"
HISTFILE="/Users/cm/.config/zsh/history"
ZSH_COMPDUMP="$ZSH/cache/.zcompdump-$HOST"

source ~/.config/zsh/rc/git
source ~/.config/zsh/rc/tmux
source ~/.config/zsh/rc/homebrew
source ~/.config/zsh/rc/node
source ~/.config/zsh/rc/golang
source ~/.config/zsh/rc/python
source ~/.config/zsh/rc/java
source ~/.config/zsh/rc/local

source $ZSH/oh-my-zsh.sh
source ~/.config/zsh/aliases
source ~/.config/zsh/funcs

eval "$(starship init zsh)"
