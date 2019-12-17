# Defined in /tmp/fish.AkrOr9/vm_env_stop.fish @ line 2
function vm_env_stop
	sudo systemctl stop vmware-networks.service vmware-usbarbitrator.service vmware-hostd.service;
end
