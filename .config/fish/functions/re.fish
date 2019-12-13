# Defined in - @ line 1
function re --description 'alias re=tee /tmp/bash.record'
	tee /tmp/bash.record $argv;
end
