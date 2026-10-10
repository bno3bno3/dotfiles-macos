# --- Modular Configuration ---
ZSH_CONFIG_DIR="$HOME/.config/zsh"

# Environment & Tools (Sets PATH, brew shellenv, etc.)
source "$ZSH_CONFIG_DIR/env.zsh"
source "$ZSH_CONFIG_DIR/tools.zsh"

# Load secrets if exists
[[ -f "$ZSH_CONFIG_DIR/secrets.zsh" ]] && source "$ZSH_CONFIG_DIR/secrets.zsh"

# Zsh Core (History, Completion)
source "$ZSH_CONFIG_DIR/history.zsh"
source "$ZSH_CONFIG_DIR/completion.zsh"

# Command line word behavior (e.g. Ctrl+W deletes one path segment)
autoload -U select-word-style
select-word-style bash

# User Config (Aliases, Functions)
source "$ZSH_CONFIG_DIR/aliases.zsh"
source "$ZSH_CONFIG_DIR/functions.zsh"

# Plugins (FZF, Autosuggestions, Syntax Highlighting)
source "$ZSH_CONFIG_DIR/plugins.zsh"

# --- Starship Prompt ---
eval "$(starship init zsh)"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/Caskroom/miniconda/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/Caskroom/miniconda/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

