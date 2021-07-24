if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -x PATH $PATH /usr/local/bin
set -x PATH $PATH (go env GOPATH)/bin
set -x PATH $PATH /Users/ark/.nvm/versions/node/v14.15.0/bin
fish_vi_key_bindings default
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'

