#!/bin/csh

set cuser = `whoami`
setenv PRJ_DIR "/home/"$cuser"/ASIC-W-ICONS/Cadence/w_icons"
alias cdu 'cd ${PRJ_DIR}/units'
alias cdg 'cd ${PRJ_DIR}/units/w_icons_top/source/gen'
alias cdi 'cd ${PRJ_DIR}'
alias ll 'ls -la'
alias gits 'git status'
alias gita 'git add'
alias gitc 'git commit'
alias gitl 'git log'
alias gitlr 'git fetch & git log main..origin/main'
alias gitsh 'git show'
alias gitm 'git difftool'
# find a folder in the current directory
alias findfl 'find . -type d -name'
# find a file in the current directory
alias findf 'find . -type f -name'
alias subl 'sublime_text'
