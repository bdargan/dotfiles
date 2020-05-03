# Report command running time if it is more than 3 seconds
REPORTTIME=3
# Keep a lot of history
#HISTFILE=$HOME/.zsh_history
HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt extended_history         # Write history in :start:elasped;command format
setopt append_history           # allow multiple sessions to append to one history
setopt hist_expire_dups_first   # expire duplicates first when trimming history
setopt hist_find_no_dups        # When searching history, don't repeat
setopt hist_ignore_dups         # ignore duplicate entries of previous events
setopt hist_ignore_space        # prefix command with a space to skip it's recording
setopt hist_reduce_blanks       # Remove extra blanks from each command added to history
setopt hist_verify              # Don't execute immediately upon history expansion
setopt inc_append_history       # Write to history file immediately, not when shell quits
setopt share_history            # Share history among all sessions

# Correct spelling of all arguments in the command line
#setopt CORRECT_ALL

# Enable autocompletion
# zstyle ':completion:*' completer _complete _correct _approximate 
