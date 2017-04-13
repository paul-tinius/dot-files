# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH to include 'go' it its installed
if [ -d "/usr/local/go/bin" ] ; then
    PATH="/usr/local/go/bin:/usr/local/go/src/bin/:$PATH"
    export GOPATH=/usr/local/go/src
fi

set -o vi

export JAVA_HOME=/opt/jdk
export PATH=${PATH}:${JAVA_HOME}/bin

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/ptinius/.sdkman"
[[ -s "/home/ptinius/.sdkman/bin/sdkman-init.sh" ]] && source "/home/ptinius/.sdkman/bin/sdkman-init.sh"
