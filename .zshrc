
#-------all norms and checkers--------------#
alias francinette=/Users/fgabler/francinette/tester.sh
alias paco=/Users/fgabler/francinette/tester.sh
#------------------------------------------#

PROMPT='%F{#41393a}%n%F{#00fff7}@%m %~ %# %f'



ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#aaaaaa'


#--------------ALIAS----------------------#

#GIT
alias ga='git add'
alias gc='git commit -m'
alias gp='git push'
alias glo='git log --oneline'
alias gits='git status'
alias gsub="git submodule update --init"
alias gsubup="git submodule update --remote"

#DAY TO DAY
alias j='cd /Users/fritzgabler/Documents/megaProjects'
alias ev='cd /Users/fgabler/Documents/42_exercise/Eval'
alias exam='cd /Users/fritzgabler/Documents/42/exam'
alias code="'/Volumes/Macintosh HD/Applications/Visual Studio Code.app/Contents/Resources/app/bin/code'"
alias cclean='bash ~/Cleaner_42.sh'
alias see_space="du -h -d 2 ./* | sort -hr > analyze.log && cat analyze.log && rm analyze.log"
alias gs="lazygit"
alias tree='find . -path "*/.git*" -prune -o -print | sed -e "s/[^-][^\/]*\// |/g" -e "s/|\([^ ]\)/|-\1/"'
#bear -- make


#NVIM
alias n="/opt/homebrew/bin/nvim"
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
alias sP='bash ~/bashScripts/basic_nvim_setup/add_basic_nvim_setup.sh'

#TURN ON AUTO COMPLITIONS
autoload -Uz compinit && compinit

zstyle ':completion:*' use-cache true # Cache completion to `${ZDOTDIR}/.zcompcache`.
zstyle ':completion:*' menu 'select' # Make the menu interactive with arrow keys.
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}" # Use LS_COLORS for completion colors.
#enable colors for ls, etc.
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd

# PYTHON
alias py='python3'

#-------------------GIT-----------------------------------#

# PROMPT
function parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/\1/p'
}
COLOR_DEF=$'%f'
COLOR_USR=$'%F{243}'
COLOR_DIR=$'%F{45}'
COLOR_GIT=$'%F{36}'
setopt PROMPT_SUBST
export PROMPT='${COLOR_USR}%n ${COLOR_DIR}%~ ${COLOR_GIT}$(parse_git_branch)${COLOR_DEF} > '

# better git log
alias gl="git log --graph --pretty=format:'%C(auto)%h -%d %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gll="git log --graph --pretty=format:'%C(auto)%h -%d %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --all"

#---------------------------------------#

#eval "$(starship init zsh)"

#--------------EXPROT--------------------#
export PATH=$HOME/.brew/bin:$PATH
export PATH=$HOME/goinfre/.brew/bin:$PATH
CLICOLOR=1
export CLICOLOR
export PATH=~/.npm-global/bin:$PATH
#---------------------------------------#


#---------------USER---------------------#
USER=fritzgabler
MAIL=fritzlmgaebler@gmail.com
let g:user42 = 'fgabler'
let g:mail42 = 'notMyEmail@student.42.fr'
#---------------------------------------#

export PATH="$HOME/.local/bin:$PATH"

if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then  exec tmux
fi
# first in .vimrc set up
set expandtab
set tabstop=4
#!/bin/zsh

# Dorker commands
#source /Users/fgabler/Documents/42_exercise/Dorker/init.sh



export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# API KEY
export OPENROUTER_API_KEY="$(< ~/.config/nvim/.open_router_api_key)"
