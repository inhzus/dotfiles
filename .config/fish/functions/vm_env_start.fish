# Defined in /tmp/fish.eHvmUb/vm_env_start.fish @ line 2
function vm_env_start
	sudo systemctl start vmware-networks.service  vmware-usbarbitrator.service vmware-hostd.service;
end
