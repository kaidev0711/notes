# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git
	zsh-syntax-highlighting
	zsh-autosuggestions
	brew
	web-search
)

source $ZSH/oh-my-zsh.sh

# export LANG=en_US.UTF-8
# export ARCHFLAGS="-arch x86_64"

alias zshrc="vim ~/.zshrc"
alias reload="source ~/.zshrc"
jdk() {
        version=$1
        export JAVA_HOME=$(/usr/libexec/java_home -v"$version");
        java -version 
}


export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"


alias brew='env PATH="${PATH//$(pyenv root)\/shims:/}" brew'

alias python="python3"


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"



export PROMPT='${ret_status}%{$fg_bold[green]%}%p %{$fg[pink]%}%D{%T}%{$reset_color%} [$(whoami)] %{$fg_bold[blue]%}%c $(git_prompt_info)% %{$reset_color%}'

# tmux
alias tn="tmux new -s"
alias tl="tmux ls"
alias ta="tmux attach-session -t"
alias tk="tmux kill-session -t"
alias tka="tmux kill-session -a"



export EDITOR="nvim"
alias vim="nvim"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# tmux
# [[ -n $TMUX ]] && export TERM="xterm-256color"
