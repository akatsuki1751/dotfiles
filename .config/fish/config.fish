if status is-interactive
    # Commands to run in interactive sessions can go here
end


#-------------------------- ENV_VAR --------------------------#
set PATH $HOME/.local/bin/ $PATH
set -x EDITOR /usr/bin/nvim
set -Ux GRIM_DEFAULT_DIR $HOME/pictures/Screenshots/

#--------------------------- ALIAS ---------------------------#
alias icat="kitty +kitten icat"
alias oscript="source ~/oscript/bin/activate.fish"
alias code="vscodium"

#-------------------------- FUNCTION --------------------------#
# use `y` to enter `yazi`
function y
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    yazi $argv --cwd-file="$tmp"
    if set cwd (command cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
        builtin cd -- "$cwd"
    end
    rm -f -- "$tmp"
end


#---------------------------- INIT ----------------------------#

zoxide init fish | source
starship init fish | source
