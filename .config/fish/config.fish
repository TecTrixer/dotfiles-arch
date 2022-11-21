# Change greeting
set fish_greeting
fish_vi_key_bindings
fastfetch

# StarShip prompt
starship init fish | source

# source cargo and Rust
set -U fish_user_paths $HOME/.cargo/bin $fish_user_paths

# aliases
function cheat
    cht.sh $argv | bat
end
alias pls 'eval sudo $history[1]'
