DotFiles

Refer to [Atlassian Dotfiles](https://www.atlassian.com/git/tutorials/dotfiles) to see the original solution.

## Setup

```shell
# fish shell
git clone --bare https://github.com/inhzus/dotfiles ~/.dot
alias -s dot 'git --git-dir=$HOME/.dot --work-tree=$HOME'

```

