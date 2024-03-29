# Snipux. Snippet Linux terminal viewer

A simple script to load a markdown documentation inside a terminal.
A couple of Linux snippet are availlable in `snippets/`

![snipuw Demo](./snipux_demo.gif)

## Installation

The script is based on [bat](https://github.com/sharkdp/bat).
Follow instructions on the Github repository to install it.

Place the folder doc_viewer somewhere, for example in `~Document/snipux`
```
tree Documents/snipux
Documents/snipux
├── snipux
├── snipux.sh
└── README
```

Create a symlink to be able to run the script from everywhere
```
cd ~Document/snipux
sudo ln -s ~/Documents/snipux/snipux.sh /usr/bin/snipux
```

Copy the bash completion script into `/etc/bash_completion.d`
```
sudo cp snipux /etc/bash_completion.d
```

Also, edit the line in this file to set the right path to your installation
```
_script_commands=$(/path/to/Documents/snipux/snipux.sh list)
```

If zsh is used instead of bash, update the zshrc with following lines:
```
autoload bashcompinit
bashcompinit
source /etc/bash_completion.d/snipux
```

Source the bash completion file or load a new terminal
```
source snipux
```
