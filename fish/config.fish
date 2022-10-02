if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -U fish_greeting

set -gx TERM xterm-256color

# Aliases override vim as nvim
command -qv nvim && alias vim nvim

set -gx EDITOR nvim

# Fish add path
fish_add_path /opt/homebrew/bin

# iTerm2 integration
source ~/.iterm2_shell_integration.fish

# Starship theme
starship init fish | source

# Adding $GOPATH/bin
fish_add_path $GOPATH/bin

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /Users/arnons/miniforge3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

