# Work stuff
# Tell docker our "local" user ID, so it starts up with that UID
export LOCAL_UID=$(id -u)

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi
