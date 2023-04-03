# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

# ZSH_THEME="robbyrussell"

ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(
	git
	zsh-syntax-highlighting
	zsh-autosuggestions
	brew
	web-search
)

source $ZSH/oh-my-zsh.sh


alias brew='env PATH="${PATH//$(pyenv root)\/shims:/}" brew'

# User configuration

alias zshrc="vim ~/.zshrc"
alias reload="source ~/.zshrc"

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



# export ARCHFLAGS="-arch x86_64"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

#java 
jdk() {
      version=$1
      unset JAVA_HOME;
      export JAVA_HOME=$(/usr/libexec/java_home -v"$version");
      java -version
}
alias lg='lazygit'
export EDITOR="nvim"
alias vim="nvim"
export LANG=en_US.UTF-8
# tmux
alias tn="tmux new -s"
alias tl="tmux ls"
alias ta="tmux attach-session -t"
alias tk="tmux kill-session -t"
alias tka="tmux kill-session -a"

alias py3nvim="pyenv activate py3nvim"
# export PYENV_VIRTUALENV_ENABLE_PROMPT=0
export PYENV_VIRTUALENV_DISABLE_PROMPT=1

#function nvimvenv {
#  if [[ -e "$VIRTUAL_ENV" && -f "$VIRTUAL_ENV/bin/activate" ]]; then
#    source "$VIRTUAL_ENV/bin/activate"
#    command nvim $@
#    # deactivate
#  else
#    command nvim $@
#  fi
#}

#alias nvim=nvimvenv

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# android_home 
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/platform-tools


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

source /Users/kaiz/.docker/init-zsh.sh || true # Added by Docker Desktop

alias djproject="django-admin startproject"
alias pymn="python manage.py"

alias ts='ts-node'
