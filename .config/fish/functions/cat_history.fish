# Defined in - @ line 1
function cat_history --description 'alias cat_history=cat ~/.zsh_history | grep'
	cat ~/.zsh_history | grep $argv;
end
