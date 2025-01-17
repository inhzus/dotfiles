function dot --wraps='git --git-dir=$HOME/.dot --work-tree=$HOME' --description 'alias dot git --git-dir=$HOME/.dot --work-tree=$HOME'
  git --git-dir=$HOME/.dot --work-tree=$HOME $argv
        
end
