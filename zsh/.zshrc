### 加载外部其他设置，包括主题，插件 ###
# theme(prompt)设置
if [[ -e ~/.zsh/themes/lime.plugin.zsh  ]]; then
    source ~/.zsh/themes/lime.plugin.zsh
fi
# z quick jump plugin
if [[ -e ~/.zsh/plugins/zsh-z/zsh-z.plugin.zsh  ]]; then
    source ~/.zsh/plugins/zsh-z/zsh-z.plugin.zsh
fi
# Auto suggestion
if [[ -e ~/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh  ]]; then
    source ~/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
fi
# Syntax highlighting
if [[ -e ~/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh  ]]; then
    source ~/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

### Basic ###
# Turn off the beep/bell
unsetopt beep

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

export COLORTERM=truecolor
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

### 外部引用命令 ###
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
