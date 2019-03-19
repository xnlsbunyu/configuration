alias c='clear'
alias vim='/usr/local/Cellar/vim/8.1.0500/bin/vim'
#alias r="rtichoke"
alias starcode='~/starcode/starcode'
export BOOST_INSTALL_DIR=/usr/local
export PATH="/Library/TeX/Root/bin/x86_64-darwin/:$PATH"
export PATH="~/whole_genome/seqtk/:$PATH"
export PATH=$PATH:~/bwa
export PATH="~/whole_genome/FastQC/:$PATH"
export PATH="~/whole_genome/trim_galore_v0/:$PATH"
export PS1="\n\[\e[01;33m\]\u\[\e[0m\]\[\e[00;37m\]@\[\e[0m\]\[\e[01;36m\]\h\[\e[0m\]\[\e[00;37m\] \t \[\e[0m\]\[\e[01;35m\]\w\[\e[0m\]\[\e[01;37m\] \[\e[0m\]\n$ "
source ~/tmux_autocompletion.sh
# export TERM="xterm-256color"
export PATH="~/bin/blat/:$PATH"
#powerline-daemon -q
#POWERLINE_BASH_CONTINUATION=1
#POWERLINE_BASH_SELECT=1
#. //anaconda/lib/python3.5/site-packages/powerline/bindings/bash/powerline.sh
export LANG=en_US.UTF-8
function today {
    echo "Today's date is:"
    date +"%A, %B %-d, %Y"
}

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

#export PATH=/Users/xiananliu/anaconda/bin:$PATH

# powerline 
#function _update_ps1() {
#        PS1=$(powerline-shell $?)
#
#}

#if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1  ]]; then
#        PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
#fi

alias ctags='/usr/local/bin/ctags'
