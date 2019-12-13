# Defined in - @ line 1
function vm_env_start --description 'alias vm_env_start=sudo systemctl start vmware-networks.service  vmware-usbarbitrator.service vmware-hostd.service'
	sudo systemctl start vmware-networks.service  vmware-usbarbitrator.service vmware-hostd.service $argv;
end
