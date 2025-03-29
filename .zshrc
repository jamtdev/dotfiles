export NVM_DIR="$HOME/.nvm"

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

[ "$(uname)" = "Linux" ] && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

source ~/.zsh_plugins/agkozak-zsh-prompt/agkozak-zsh-prompt.plugin.zsh
source ~/.zsh_plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source ~/.zsh_plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh