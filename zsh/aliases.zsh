alias reload!='. ~/.zshrc'

alias cls='clear' # Good 'ol Clear Screen command

alias k="kubectl" # Kubernetes CLI Tool

# Various useful utility commands
alias brewup="brew update && brew doctor && brew outdated && brew upgrade && brew cleanup"
alias uuid="python -c 'import sys,uuid; sys.stdout.write(uuid.uuid4().hex)' | pbcopy && pbpaste && echo"

# Enable Docker aliases
if [ -f ~/.docker_aliases ]; then
    . ~/.docker_aliases
fi