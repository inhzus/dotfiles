
set -x EDITOR vim
set -x LC_ALL en_US.UTF-8
set fish_command_timer_min_cmd_duration 1000

switch (uname)
case Linux
    $HOME/.local/bin/mise activate fish | source
case Darwin
    fish_add_path /opt/homebrew/bin $HOME/.local/bin /Applications/WezTerm.app/Contents/MacOS/
end

set -x VCPKG_ROOT $HOME/vcpkg
bind ctrl-c cancel-commandline

