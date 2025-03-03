function auto_eza --on-variable PWD
    eza -a --icons
end

function e
    eza $argv --icons
end

function ll
    if type -q eza
        eza -la --icons
    end
end
