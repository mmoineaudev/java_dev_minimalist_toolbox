#!/bin/bash
# PROMPTS
# Option1
    
prompt_one="\💡 \$ "
# Option2
prompt_two='\[\033]0;$TITLEPREFIX:$PWD\007\]\n\[\033[32m\]\u@\h \[\033[35m\]$MSYSTEM \[\033[33m\]\w\[\033[36m\]`__git_ps1`\[\033[0m\]\n$'
# Option3
prompt_tree='\[\033]0;$PWD\007\]\n\[\033[32m\] - \h \[\033[35m\]\[\033[33m\]\w\[\033[36m\]`__git_ps1`\[\033[0m\]\n$'
####################

export PS1='$prompt_one'