function ffind
	set dir .
set typ f
if test (count $argv) -gt 0
set dir = $argv[1]
end
if test (count $argv) -gt 1
set typ = $argv[2]
end
sudo find $dir -type $typ 2>/dev/null | fzf -e --reverse 
end
