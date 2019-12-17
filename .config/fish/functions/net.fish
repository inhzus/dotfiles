# Defined in /tmp/fish.d8QUOU/net.fish @ line 2
function net
	sh ~/scripts/net.sh && pm2 restart clash -a;
end
