# Defined in - @ line 1
function dual_screen --description 'alias dual_screen=xrandr --output eDP1 --left-of DP1 --auto && xrandr --output DP1 --left-of eDP1 --auto'
	xrandr --output eDP1 --left-of DP1 --auto && xrandr --output DP1 --left-of eDP1 --auto $argv;
end
