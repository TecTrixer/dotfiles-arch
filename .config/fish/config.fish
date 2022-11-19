# Change greeting
set fish_greeting
fastfetch

# StarShip prompt
starship init fish | source

# source cargo and Rust
set -U fish_user_paths $HOME/.cargo/bin $fish_user_paths

