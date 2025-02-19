# Created by newuser for 4.3.17
# LANG
export LANG=ja_JP.UTF-8
export LESSCHARSET=utf-8

# 補完
autoload -U compinit
compinit
# bind key
bindkey -v
#bindkey "^?"    backward-delete-char
bindkey "^H"    backward-delete-char
bindkey "^[[3~" delete-char
bindkey "^[[1~" beginning-of-line
bindkey "^[[4~" end-of-line

# プロンプトが表示されるたびにプロンプト文字列を評価、置換する
setopt prompt_subst

# Default shell configuration
autoload colors

# 指定したコマンド名がなく、ディレクトリ名と一致した場合 cd する
setopt auto_cd

# cd でTabを押すとdir list を表示
setopt auto_pushd

# ディレクトリスタックに同じディレクトリを追加しないようになる
setopt pushd_ignore_dups

# コマンドのスペルチェックをする
setopt correct

# コマンドライン全てのスペルチェックをする
setopt correct_all

# 訂正無視リスト
CORRECT_IGNORE_FILE='.*'

# 上書きリダイレクトの禁止
setopt no_clobber

# 補完候補リストを詰めて表示
setopt list_packed

# auto_list の補完候補一覧で、ls -F のようにファイルの種別をマーク表示
setopt list_types

# 補完候補が複数ある時に、一覧表示する
setopt auto_list

# コマンドラインの引数で --prefix=/usr などの = 以降でも補完できる
setopt magic_equal_subst

# カッコの対応などを自動的に補完する
setopt auto_param_keys

# ディレクトリ名の補完で末尾の / を自動的に付加し、次の補完に備える
setopt auto_param_slash

# {a-c} を a b c に展開する機能を使えるようにする
#  setopt brace_ccl

# シンボリックリンクは実体を追うようになる
setopt chase_links

# 補完キー（Tab,  Ctrl+I) を連打するだけで順に補完候補を自動で補完する
setopt auto_menu

# sudoも補完の対象
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin

# 色付きで補完する
zstyle ':completion:*' list-colors di=34 fi=0

# 保管候補のカーソル選択
#zstyle ':completion:*:default' menu select=1

# 複数のリダイレクトやパイプなど、必要に応じて tee や cat の機能が使われる
setopt multios

# 最後がディレクトリ名で終わっている場合末尾の / を自動的に取り除かない
setopt noautoremoveslash

# beepを鳴らさないようにする
setopt nolistbeep

#  # Match without pattern
#  # ex. > rm *~398
#  # remove * without a file "398". For test, use "echo *~398"
#  setopt extended_glob

# historical backward/forward search with linehead string binded to ^P/^N

# history関連
export HISTTIMEFORMAT='%F %T '
setopt extended_history
alias history='history -t "%F %T"'

autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^p" history-beginning-search-backward-end
bindkey "^n" history-beginning-search-forward-end
bindkey "\\ep" history-beginning-search-backward-end
bindkey "\\en" history-beginning-search-forward-end
#
#  # glob(*)によるインクリメンタルサーチ
bindkey '^R' history-incremental-pattern-search-backward
bindkey '^S' history-incremental-pattern-search-forward

## Command history configuration
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# 登録済コマンド行は古い方を削除
setopt hist_ignore_all_dups

# historyの共有
setopt share_history

# 余分な空白は詰める
setopt hist_reduce_blanks

# add history when command executed.
setopt inc_append_history

# history (fc -l) コマンドをヒストリリストから取り除く。
#  setopt hist_no_store
#  # サスペンド中のプロセスと同じコマンド名を実行した場合はリジュームする
#  #setopt auto_resume
#
#  # =command を command のパス名に展開する
#  #setopt equals
#
#  # ファイル名で #, ~, ^ の 3 文字を正規表現として扱う
#  #setopt extended_glob

# zsh の開始・終了時刻をヒストリファイルに書き込む
setopt extended_history

# Ctrl+S/Ctrl+Q によるフロー制御を使わないようにする
#  #setopt NO_flow_control
#
#  # 各コマンドが実行されるときにパスをハッシュに入れる
#  #setopt hash_cmds
#

# コマンドラインの先頭がスペースで始まる場合ヒストリに追加しない
setopt hist_ignore_space

#  # ヒストリを呼び出してから実行する間に一旦編集できる状態になる
#  #setopt hist_verify
#
#  # シェルが終了しても裏ジョブに HUP シグナルを送らないようにする
#  #setopt NO_hup
#
#  # Ctrl+D では終了しないようになる（exit, logout などを使う）
#  #setopt ignore_eof
#
#  # コマンドラインでも # 以降をコメントと見なす
#  #setopt interactive_comments
#
#  # メールスプール $MAIL が読まれていたらワーニングを表示する
#  #setopt mail_warning
#
#  # ファイル名の展開でディレクトリにマッチした場合末尾に / を付加する
#  #setopt mark_dirs
#
#  # ファイル名の展開で、辞書順ではなく数値的にソートされるようになる
#  #setopt numeric_glob_sort
#
#  # コマンド名に / が含まれているとき PATH 中のサブディレクトリを探す
setopt path_dirs

# 戻り値が 0 以外の場合終了コードを表示する
setopt print_exit_value

# pushd を引数なしで実行した場合 pushd $HOME と見なされる
#  #setopt pushd_to_home

# rm * などの際、本当に全てのファイルを消して良いかの確認しないようになる
#  #setopt rm_star_silent

#  # rm_star_silent の逆で、10 秒間反応しなくなり、頭を冷ます時間が与えられる
setopt rm_star_wait

#autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
#add-zsh-hook chpwd chpwd_recent_dirs

# alias設定
[ -f ~/.zshrc.alias ] && source ~/.zshrc.alias

case "${OSTYPE}" in
darwin*)
 [ -f ~/.zshrc.osx ] && source ~/.zshrc.osx
 ;;
linux*)
 [ -f ~/.zshrc.linux ] && source ~/.zshrc.linux
 ;;
 esac

# load zgen
source "${HOME}/.zshrc.zgen"

# Added by Amplify CLI binary installer
export PATH="$HOME/.amplify/bin:$PATH"

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/masatake.yamauchi/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)
