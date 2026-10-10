# Language & Editor
export LANG=en_US.UTF-8

# Manpath
export MANPATH="/usr/local/man:$MANPATH"

# --- PATH Configuration ---

# User Local Binaries
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/bin:$PATH"

# Deduplicate PATH (Remove redundant entries)
typeset -U PATH
