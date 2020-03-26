complete -c sp -n 'test (count (commandline -opc)) -eq 1' -s h -l help -d 'Display help and exit'
complete -c sp -xa "(__fish_complete_subcommand)"
