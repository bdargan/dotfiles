source $HOME/.fs.profile
source $HOME/.aliases
eval "$(fasd --init auto)"
export ICLOUD="$HOME/Library/Mobile Documents/com~apple~CloudDocs"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
