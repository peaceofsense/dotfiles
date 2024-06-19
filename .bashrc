# Sample .bashrc for SUSE Linux
# Copyright (c) SUSE Software Solutions Germany GmbH

# There are 3 different types of shells in bash: the login shell, normal shell
# and interactive shell. Login shells read ~/.profile and interactive shells
# read ~/.bashrc; in our setup, /etc/profile sources ~/.bashrc - thus all
# settings made here will also take effect in a login shell.
#
# NOTE: It is recommended to make language settings in ~/.profile rather than
# here, since multilingual X sessions would not work properly if LANG is over-
# ridden in every subshell.

test -s ~/.alias && . ~/.alias || true
# export PATH="/home/peaceofsense/miniconda3/bin:$PATH"  # commented out by conda initialize  

export TERMINAL=kitty

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/peaceofsense/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/peaceofsense/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/peaceofsense/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/peaceofsense/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/peaceofsense/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/peaceofsense/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/peaceofsense/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/peaceofsense/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Prevent automatic activation of base environment
# conda activate base
#
#
alias connect-fau='sudo openconnect --authgroup=FAU-Fulltunnel vpn.fau.de'
alias jnb='jupyter-notebook'


#eval "$(ssh-agent -s)"
#ssh-add ~/.ssh/github_peaceofsense
git-push() {
    # Prompt for commit message
    read -p "Enter commit message: " message

    # Prompt for branch name
    read -p "Enter branch name (default: main): " branch
    branch=${branch:-main}  # Default to 'main' if no input provided

    # Add all changes to the staging area
    git add .

    # Commit changes with the provided message
    git commit -m "$message"

    # Push changes to the specified branch on 'origin' remote
    git push origin "$branch"
}
