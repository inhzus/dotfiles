function nova_ssh
	ssh -o ProxyCommand="nc -x localhost:1080 %h %p" $argv
end
