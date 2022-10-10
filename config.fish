# theme
# set -g theme_color_scheme terminal-dark
# set -g fish_prompt_pwd_dir_length 1
# set -g theme_display_user yes
# set -g theme_hide_hostname no
# set -g theme_hostname always

set fish_greeting ""
if status is-interactive
    # Commands to run in interactive sessions can go here
end

#pyenv
alias brew="env PATH=(string replace (pyenv root)/shims '' \"\$PATH\") brew"
set -Ux PYENV_ROOT $HOME/.pyenv
set -U fish_user_paths $PYENV_ROOT/bin $fish_user_paths
pyenv init - | source

#java
function jdk
	set java_version $argv
	set -Ux JAVA_HOME (/usr/libexec/java_home -v $java_version)
	java -version
end

#alias
alias ll "exa -l -g --icons"
alias lla "ll -a"
alias ls "exa"

set -x LANG en_US.UTF-8

#vscode
function code
  open -a "Visual Studio Code.app" $argv
end


#PATH
contains /usr/local/bin $PATH
or set PATH /usr/local/bin $PATH
# On M1 Macs, homebrew installs things in /opt/homebrew
contains /opt/homebrew/bin
or set PATH /opt/homebrew/bin $PATH

#alias
alias tn "tmux new -s"
alias tl "tmux ls"
alias ta "tmux attach-session -t"
alias tk "tmux kill-session -t"
alias tka "tmux kill-session -a"

set -x GOPATH ~/go # the -x flag exports the variable
set PATH $PATH $GOPATH/bin

set -gx EDITOR 'nvim'
alias vim "nvim"

kubectl completion fish | source


set --universal nvm_default_version v15.3.0
set --universal nvm_default_packages yarn np

#pyenv
status --is-interactive; and pyenv virtualenv-init - | source

alias py3nvim "source ~/.pyenv/versions/3.10.6/envs/py3nvim/bin/activate.fish"

alias nvim 'nvimvenv'

set -Ux PYENV_ROOT $HOME/.pyenv
fish_add_path $PYENV_ROOT/bin


