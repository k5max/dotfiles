### 加载 zsh prompt/插件 ###
# prompt设置
if [ -f ~/.zsh/prompts/lime.plugin.zsh ]; then
    source ~/.zsh/prompts/lime.plugin.zsh
fi
# z quick jump plugin
if [ -f ~/.zsh/plugins/zsh-z/zsh-z.plugin.zsh ]; then
    source ~/.zsh/plugins/zsh-z/zsh-z.plugin.zsh
fi
# Auto suggestion
if [ -f ~/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
    source ~/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
fi
# Syntax highlighting
if [ -f ~/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
    source ~/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

### 加载 Shell extentsions ###
# fzf
if [ -f ~/.zsh/extentsions/fzf/key-bindings.zsh ]; then
    source ~/.zsh/extentsions/fzf/key-bindings.zsh
fi
if [ -f ~/.zsh/extentsions/fzf/completion.zsh ]; then
    source ~/.zsh/extentsions/fzf/completion.zsh
fi

### Basic ###
# 关闭beep声音
unsetopt beep
# 设置历史命令记录数
HISTSIZE=1000
# 设置记录历史文件大小
HISTFILESIZE=2000

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    #alias grep='grep --color=auto'
    #alias fgrep='fgrep --color=auto'
    #alias egrep='egrep --color=auto'
fi

### alias ###
alias ll='ls -hl'
alias la='ls -al'
alias lg='lazygit'

# export COLORTERM=truecolor
# export CLICOLOR=1
# export LSCOLORS=GxFxCxDxBxegedabagaced
export PATH="$HOME/.local/bin:$PATH"

# fzf设置
export FZF_COMPLETION_TRIGGER='\'
export FZF_DEFAULT_OPTS='--preview "[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (ccat --color=always {} || highlight -O ansi -l {} || cat {}) 2> /dev/null | head -500"'

### 外部引用命令 ###
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
