
switch (uname)
case Linux
    ~/.local/bin/mise activate fish | source
case Darwin
    fish_add_path /opt/homebrew/bin $HOME/.local/bin /Applications/WezTerm.app/Contents/MacOS/
end

