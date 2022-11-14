# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

# ZSH_THEME="robbyrussell"

ZSH_THEME="dracula"

plugins=(
	git
	zsh-syntax-highlighting
	zsh-autosuggestions
	brew
	web-search
)


# export TERM="xterm-256color"                      # getting proper colors



alias zshrc="vim ~/.zshrc"
alias reload="source ~/.zshrc"

export EDITOR="nvim"
alias vim="nvim"

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8

# export PROMPT='${ret_status}%{$fg_bold[green]%}%p %{$fg[pink]%}%D{%T}%{$reset_color%} [$(whoami)] %{$fg_bold[blue]%}%c $(git_prompt_info)% %{$reset_color%}'


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


##pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# export PYENV_VIRTUALENV_ENABLE_PROMPT=0
export PYENV_VIRTUALENV_DISABLE_PROMPT=1
# alias python="python3"


##java
jdk() {
        version=$1
        export JAVA_HOME=$(/usr/libexec/java_home -v"$version");
        java -version 
}

#alias exa
# alias ll="exa -l -g --icons"
# alias lla="ll -a"
# alias ls="exa"
alias ls='exa -al --color=always --group-directories-first' # my preferred listing
alias la='exa -a --color=always --group-directories-first'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first'  # long format
alias lt='exa -aT --color=always --group-directories-first' # tree listing
alias l.='exa -a | egrep "^\."'


# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

# git
alias addup='git add -u'
alias addall='git add .'
alias branch='git branch'
alias checkout='git checkout'
alias clone='git clone'
alias commit='git commit -m'
alias fetch='git fetch'
alias pull='git pull origin'
alias push='git push origin'
alias status='git status'  # 'status' is protected name so using 'stat' instead
alias tag='git tag'
alias newtag='git tag -a'


function nvimvenv {
  if [[ -e "$VIRTUAL_ENV" && -f "$VIRTUAL_ENV/bin/activate" ]]; then
    source "$VIRTUAL_ENV/bin/activate"
    command nvim $@
    # deactivate
  else
    command nvim $@
  fi
}

alias nvim=nvimvenv

# go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# tmux
alias tn="tmux new -s"
alias tl="tmux ls"
alias ta="tmux attach-session -t"
alias tk="tmux kill-session -t"
alias tka="tmux kill-session -a"


#kubemestes
source <(kubectl completion zsh)



alias lg='lazygit'



alias py3nvim="pyenv activate py3nvim"


eval "$(starship init zsh)"

