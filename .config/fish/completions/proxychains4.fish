complete -c proxychains4 -n 'test (count (commandline -opc)) -eq 1' -s h -l help -d 'Display help and exit'
complete -c proxychains4 -xa "(__fish_complete_subcommand)"
