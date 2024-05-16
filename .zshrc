
#-------all norms and checkers--------------#
alias francinette=/Users/fgabler/francinette/tester.sh
alias paco=/Users/fgabler/francinette/tester.sh
#------------------------------------------#


#--------------ALIAS----------------------#

#GIT
alias ga='git add'
alias gc='git commit -m'
alias gp='git push'
alias glo='git log --oneline'
alias gs='git status'
alias gsub="git submodule update --init"
alias gsubup="git submodule update --remote"

#DAY TO DAY
alias j='cd /Users/fgabler/Documents/42_exercise/projects'
alias eval='cd /Users/fgabler/Documents/42_exercise/Eval'
alias exam='cd /Users/fgabler/Documents/42_exercise/Exam'
alias code="/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code"
alias cclean='bash ~/Cleaner_42.sh'
alias see_space="du -h -d 2 ./* | sort -hr > analyze.log && cat analyze.log && rm analyze.log"

#NVIM
alias nvim="$HOME/nvim-macos/bin/nvim"
alias nvim="$HOME/nvim-macos/bin/nvim"
alias vim="$HOME/nvim-macos/bin/nvim"
alias n="$HOME/nvim-macos/bin/nvim"
alias s='fg'

alias mstest="bash /Users/fgabler/42_minishell_tester/tester.sh"

#DOCKER
alias di="bash /Users/fgabler/.docker_valgrind_setup/init_docker.sh"
alias db="docker build -i valgrind - < /Users/fgabler/.docker_valgrind_setup/valgrind"
alias dv='docker run -ti -v $PWD:/code -v "/Users/fgabler/.docker_valgrind_setup/root":/root valgrind bash'
alias di="bash /Users/fgabler/.docker_valgrind_setup/init_docker.sh"
alias db="docker build -t valgrind - < /Users/fgabler/.docker_valgrind_setup/valgrind"
alias dv='docker run -ti -v $PWD:/code -v "/Users/fgabler/.docker_valgrind_setup/root":/root valgrind bash'

#CPP SETUP
alias create='bash ~/bashScripts/cppBash/createCppBasicStructure.sh'

#---------------------------------------#

#eval "$(starship init zsh)"

#--------------EXPROT--------------------#
export PATH=$HOME/.brew/bin:$PATH
export PATH=$HOME/goinfre/.brew/bin:$PATH
#---------------------------------------#


#---------------USER---------------------#
PATH="$HOME/homebrew/bin:$PATH"
USER=fgabler
MAIL=fritzlmgaebler@gmail.com
#---------------------------------------#

if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then  exec tmux
fi
# first in .vimrc set up
set expandtab
set tabstop=4
#!/bin/zsh


# Dorker commands
#source /Users/fgabler/Documents/42_exercise/Dorker/init.sh


