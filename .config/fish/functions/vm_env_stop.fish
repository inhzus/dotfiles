# Defined in - @ line 1
function vm_env_stop --description 'alias vm_env_stop=sudo systemctl stop vmware-networks.service vmware-usbarbitrator.service vmware-hostd.service'
	sudo systemctl stop vmware-networks.service vmware-usbarbitrator.service vmware-hostd.service $argv;
end
