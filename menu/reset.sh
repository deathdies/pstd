clear
screenfetch -A "Android"
source "$HOME/.termux/zsh/powerlevel10k.zsh-theme"
source "$HOME/.termux/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh"
source "$HOME/.termux/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh"
alias pstd="/data/data/com.termux/files/home/.termux/menu/pstd.sh"
alias zfonts="/data/data/com.termux/files/home/.termux/menu/fonts.sh"
alias zthemes="/data/data/com.termux/files/home/.termux/menu/themes.sh"
alias zcolors="/data/data/com.termux/files/home/.termux/menu/colors.sh"
alias zdistro="/data/data/com.termux/files/home/.termux/menu/screenfetch.sh"
alias zupdate="/data/data/com.termux/files/home/.termux/menu/update.sh"
alias zguide="/data/data/com.termux/files/home/.termux/menu/guide.sh"
alias zreset="/data/data/com.termux/files/home/.termux/menu/reset.sh"
alias zexit="/data/data/com.termux/files/home/.termux/menu/exit.sh"
alias zuninstall="/data/data/com.termux/files/home/.termux/menu/uninstall.sh"
alias ls="lsd"
alias l="ls -l"
alias la="ls -a"
alias lla="ls -la"
alias lt="ls --tree"
alias q="exit"
alias h="cd $HOME"
alias gc="git clone"
alias cx="chmod +x"
alias csd="cd $HOME/storage/downloads"
HISTFILE="$HOME/.cache/.zsh_history"
HIST_STAMPS="mm/dd/yyyy"
DISABLE_UPDATE_PROMPT="true"
HISTSIZE="100000"
SAVEHIST="100000"
ZLE_RPROMPT_INDENT="0"
POWERLEVEL9K_MODE="nerdfont-complete"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=white"
autoload -Uz add-zsh-hook
setopt hist_expire_dups_first
setopt always_to_end
setopt correct_all
setopt autocd
setopt append_history
setopt auto_list
setopt auto_menu
setopt auto_pushd
setopt extended_history
setopt hist_expire_dups_first
setopt hist_find_no_dups
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt hist_reduce_blanks
setopt hist_save_no_dups
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_ignore_dups
setopt hist_reduce_blanks
setopt hist_save_no_dups
setopt ignore_eof
setopt inc_append_history
setopt interactive_comments
setopt no_beep
setopt no_hist_beep
setopt no_list_beep
setopt magic_equal_subst
setopt notify
setopt print_eight_bit
setopt print_exit_value
setopt prompt_subst
setopt pushd_ignore_dups
setopt rm_star_wait
setopt share_history
setopt transient_rprompt
watch=(notme)
LOGCHECK="60"
REPORTTIME="5"
KEYTIMEOUT="1"
WORDCHARS="*?_-[]~=./&;!#$%^(){}<>"
POWERLEVEL9K_PROMPT_ON_NEWLINE="true"
POWERLEVEL9K_RPROMPT_ON_NEWLINE="true"
POWERLEVEL9K_PROMPT_ADD_NEWLINE="true"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon context dir background_jobs status)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(time virtualenv vcs command_execution_time_joined)
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%F{014}"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{014}\u2570%F{cyan}\uF054%F{073}\uF054%F{109}\uF054%f "
POWERLEVEL9K_CONTEXT_TEMPLATE="de@hdies \uf489"
POWERLEVEL9K_COMMAND_EXECUTION_TIME_PRECISION="2"
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD="1"
POWERLEVEL9K_DIR_SHOW_WRITABLE="true"
POWERLEVEL9K_BACKGROUND_JOBS_VERBOSE_ALWAYS="true"
POWERLEVEL9K_SHORTEN_DIR_LENGTH="2"
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
POWERLEVEL9K_STATUS_VERBOSE="true"
POWERLEVEL9K_TIME_FORMAT="%D{%a%l:%M %P}"
VIRTUAL_ENV_DISABLE_PROMPT="1"
POWERLEVEL9K_COLOR_SCHEME="dark"
POWERLEVEL9K_BACKGROUND_JOBS_BACKGROUND="yellow"
POWERLEVEL9K_BACKGROUND_JOBS_FOREGROUND="black"
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND="blue"
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND="black"
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND="white"
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND="black"
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="black"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="white"
POWERLEVEL9K_DIR_ETC_BACKGROUND="black"
POWERLEVEL9K_DIR_ETC_FOREGROUND="white"
POWERLEVEL9K_DIR_HOME_BACKGROUND="black"
POWERLEVEL9K_DIR_HOME_FOREGROUND="white"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="black"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="white"
POWERLEVEL9K_DIR_NOT_WRITABLE_BACKGROUND="black"
POWERLEVEL9K_DIR_NOT_WRITABLE_FOREGROUND="white"
POWERLEVEL9K_HISTORY_BACKGROUND="green"
POWERLEVEL9K_LOAD_NORMAL_BACKGROUND="green"
POWERLEVEL9K_LOAD_WARNING_BACKGROUND="yellow"
POWERLEVEL9K_OS_ICON_FOREGROUND="green"
POWERLEVEL9K_STATUS_ERROR_BACKGROUND="red"
POWERLEVEL9K_STATUS_ERROR_FOREGROUND="black"
POWERLEVEL9K_STATUS_OK_BACKGROUND="green"
POWERLEVEL9K_STATUS_OK_FOREGROUND="black"
POWERLEVEL9K_TIME_BACKGROUND="black"
POWERLEVEL9K_TIME_FOREGROUND="white"
