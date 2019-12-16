function find_exec
	for _p in $PATH 
ls $_p | grep -E $argv[1] | xargs -I {} echo $_p"/"{}
end
end
