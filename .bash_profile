# Work stuff
# Tell docker our "local" user ID, so it starts up with that UID
export LOCAL_UID=$(id -u)

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

