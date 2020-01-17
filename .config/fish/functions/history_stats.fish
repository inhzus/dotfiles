function history_stats
	history | awk '{print $1}' | sort  | uniq --count | sort --numeric-sort --reverse | head -10
end
