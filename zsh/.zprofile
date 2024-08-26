# For neovim
export PATH="$PATH:/opt/neovim/bin"

# For pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv > /dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export PATH=$PATH:$HOME/.local/bin

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
