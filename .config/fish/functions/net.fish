# Defined in - @ line 1
function net --description 'alias net=sh ~/scripts/net.sh && pm2 restart clash -a'
	sh ~/scripts/net.sh && pm2 restart clash -a $argv;
end
