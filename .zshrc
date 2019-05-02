### OSX antigen file
source /usr/local/share/antigen/antigen.zsh
### Load the oh-my-zsh's library.
antigen use oh-my-zsh

### Bundles
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen bundle autojump
antigen bundle brew
antigen bundle common-aliases
antigen bundle compleat
antigen bundle git-extras
antigen bundle git-flow
antigen bundle npm
antigen bundle osx
antigen bundle web-search
antigen bundle vi-mode
antigen bundle z
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search ./zsh-history-substring-search.zsh
antigen bundle zdharma/history-search-multi-word
antigen bundle zsh-users/zsh-autosuggestions

### Theme
# antigen theme robbyrussell
# NOTE: pure
# antigen theme refined
# TODO: https://github.com/bhilburn/powerlevel9k/wiki/Install-Instructions#option-4-install-for-antigen
# antigen theme powerlevel9k 
# NOTE: A little slow to paint the git prompt
# antigen theme https://github.com/denysdovhan/spaceship-prompt spaceship 
antigen theme denysdovhan/spaceship-prompt

# NVM bundle
export NVM_LAZY_LOAD=true
antigen bundle lukechilds/zsh-nvm
antigen bundle Sparragus/zsh-auto-nvm-use

# Tell Antigen that you're done.
antigen apply

# Setup zsh-autosuggestions and completions
# source "$HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh"

# Load broken out config files
[[ -s "$HOME/.zsh_aliases" ]] && source "$HOME/.zsh_aliases"
[[ -s "$HOME/.zsh_env" ]] && source "$HOME/.zsh_env"
[[ -s "$HOME/.zsh_secret" ]] && source "$HOME/.zsh_secret"

# Up the default ulimit
ulimit -n 2048
