function view_cpu
	watch -n.1 "cat /proc/cpuinfo | grep \"^[c]pu MHz\""
end
