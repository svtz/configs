# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]
then
  . /etc/bashrc
fi

# User specific aliases and functions
#
alias g="git"
alias go="git checkout"
alias gl="git log --pretty=format:\"%C(bold blue)%h%C(bold yellow)%d %Creset%s%C(dim white) [%cn]\" --decorate"
alias gll="git log --pretty=format:\"%C(bold blue)%h%C(bold yellow)%d %Creset%s%C(dim white) [%cn]\" --decorate --numstat"
alias gld="git log --pretty=format:\"%C(bold blue)%h %ad%C(bold yellow)%d %Creset%s%C(dim white) [%cn]\" --decorate --date=short"
alias glg="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(white)%<(50,trunc)%s%C(reset) %C(dim white)- %an%C(reset)' --all"
alias glgl="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%n''         %C(bold yellow)%d%C(reset)' --all"
alias gs="git status"
alias gb="git branch"
alias greb="git rebase"
alias grebi="git rebase -i"
alias gc="git clean"
alias gres="git reset"
alias gm="git merge"
alias gp="git pull"
alias gcp="git cherry-pick"

# Git branch bash completion
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
  
  # Add git completion to aliases
  __git_complete g __git_main
  __git_complete go _git_checkout
  __git_complete gm _git_merge
  __git_complete gp _git_pull
fi