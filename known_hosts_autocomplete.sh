# add to ~/.bash_profile, and close/reopen a shell.  Will autocomplete any hosts found in known_hosts.

complete -W "$(echo `cat ~/.ssh/known_hosts | cut -f 1 -d ' ' | sed -e s/,.*//g | uniq | grep -v "\["`;)" ssh
