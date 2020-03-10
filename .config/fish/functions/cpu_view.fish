function cpu_view
	watch -n.1 "cat /proc/cpuinfo | grep \"^[c]pu MHz\""
end
