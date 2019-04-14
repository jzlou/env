# this .dotfile is okay

## VIM

Use pathogen and the following things:

- auto-pairs
- ctrlp
- ale
- vim-json
- vim-tmux-navigator
- vim-polyglot
- YouCompleteMe

## TMUX

Use the following tmux things:

- tmux-themepack
- tmuxp

## Installation

```
git init
git remote add origin git@github.com:jzlou/env.git
git fetch origin
git checkout -b master --track origin/master
git reset origin/master
git submodule init
git submodule update --recursive
```

## adding new vim plugin

`cd ~/.vim/bundle && git submodule add <submodule-url>`

### YouCompleteMe

Install Jedi for Python autocomplete. Install node and npm first.

- `pip install jedi`
- `cd ~/.vim/bundle/YouCompleteMe && python3 ./install.py --ts-completer`

# Things that I seem to install on Ubuntu commonly

i.e. install with a bash script maybe?

- curl
- docker
- node & npm & yarn
- python3 & pip & flake8 & virtualenvwrapper
- tmux
