export HOMEBREW_NO_AUTO_UPDATE=true
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/nchen/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/nchen/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/nchen/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/nchen/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# openjdk, brew installed
export PATH="/Users/nchen/bin:/usr/local/opt/openjdk/bin:$PATH"

# terminal proxy
# export https_proxy=http://127.0.0.1:7890
# export http_proxy=http://127.0.0.1:7890
# export all_proxy=socks5://127.0.0.1:7891

# tmux conda
source /Users/nchen/miniconda3/etc/profile.d/conda.sh
[[ -z $TMUX ]] || conda deactivate; conda activate base

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# the fuck config, must brew install thefuck
eval $(thefuck --alias)

# autojump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# vi-mode key bind
bindkey jk vi-cmd-mode

# autosuggestions
bindkey ',' autosuggest-accept

alias vi="\vim"
alias vim="nvim"
alias cl="clear"
alias ex="extract"

# conda
alias cel="conda env list"
alias ca="conda activate"

# docker
alias dp="docker ps"
alias dpa="docker ps -a"
alias drm="docker rm"
alias dim="docker images"
alias dstop="docker stop"
alias da="docker attach"
alias dstart="docker start"

# tmux
alias tnew="tmux new -s"
alias tsw="tmux select-window -t"
alias tnw="tmux new-window -n"
alias ta="tmux attach -t"
alias tls="tmux ls"
alias trs="tmux rename-session -t"
alias tk="tmux kill-session -t"
