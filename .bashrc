
# History Options
bind '"\e[A": history-search-backward'
bind '"\eOA": history-search-backward'
bind '"\e[B": history-search-forward'
bind '"\eOB": history-search-forward'

# History environment variables
 export HISTCONTROL=ignoredups:erasedups 	# no duplicate entries
 export HISTSIZE=1000000					# big history
 export HISTFILESIZE=1000000				# big history file
 export HISTTIMEFORMAT="%d/%m/%y %T "		# add date to every history entry
 shopt -s histappend						# appedn to history, don't overwrite it
 export PROMPT_COMMAND="history -a;history -c;history -r;$PROMPT_COMMAND" # save and reload the history after each command finishes

# Aliases
 alias df='df -h'
 alias du='du -h'
 alias less='less -r'                          # raw control characters
 alias grep='grep --color'                     # show differences in colour
 alias l='ls'
 alias ls='ls -hF --color=tty'                 # classify files in colour
 alias ll='ls -la'                              # long list                              #
 alias ..='cd ..'
 alias ...='cd ..; cd ..'
 alias ....='cd ..; cd ..; cd ..'
 alias joe='joe -backpath ~/joebackups'
 alias git-branch='git rev-parse --abbrev-ref HEAD | tr -d "\n" | pbcopy'

# MacOS-like shortcuts 
 alias pbcopy='xclip -selection clipboard'
 alias pbpaste='xclip -selection clipboard -o'
 alias open="xdg-open"

# Environment variables
export PATH=$PATH:~/opt/bin
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk
export PS1="\[\033[36m\]\u:\[\033[33;1m\]\w\[\033[m\]\$ "	# describes the terminal start of the line
export CLICOLOR=1
export LSCOLORS=GxBxCxDxexegedxbxgxced
export LANG="en_US.UTF-8"
