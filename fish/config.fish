if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -x PATH $PATH /usr/local/bin
fish_vi_key_bindings default
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'

