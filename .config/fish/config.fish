if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_add_path /usr/local/bin
fish_add_path ~/.cargo/bin
fish_add_path ~/.local/bin

fish_vi_key_bindings
fish_user_key_bindings
zoxide init fish | source
