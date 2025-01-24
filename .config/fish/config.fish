if status is-interactive
    # Commands to run in interactive sessions can go here
end

set PATH $HOME/.local/bin/ $PATH
set -x EDITOR /usr/bin/nvim

alias icat="kitty +kitten icat"
alias oscript="source ~/oscript/bin/activate.fish"

function y
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    yazi $argv --cwd-file="$tmp"
    if set cwd (command cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
        builtin cd -- "$cwd"
    end
    rm -f -- "$tmp"
end

zoxide init fish | source

alias codellama="ollama run codellama"
