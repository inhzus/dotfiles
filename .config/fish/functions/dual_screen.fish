function dual_screen
	if test (xrandr | grep " connected " | wc -l) -gt 1
xrandr --output eDP1 --left-of DP1 --auto
xrandr --output DP1 --left-of eDP1 --auto
end
end
