# read ~/.profile if present
if [ -f ~/.profile ]; then
    source ~/.profile
fi

# read ~/.bashrc if present
if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi
