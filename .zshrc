########
# gitのbranch名表示
########
# git-promptの読み込み
source ~/.zsh/git-prompt.sh
# git-completionの読み込み
fpath=(~/.zsh $fpath)
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
autoload -Uz compinit && compinit
# プロンプトのオプション表示設定
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto
# プロンプトの表示設定(好きなようにカスタマイズ可)
setopt PROMPT_SUBST ; PS1='%F{cyan}%~ %f% %F{red}$(__git_ps1 "git:(%s) ")%f% $ '

#######
# anyenvの設定
#######
eval "$(anyenv init -)"

#######
# postgresql15用の設定
#######
export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"

######
# mysql client用の設定
######
export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"