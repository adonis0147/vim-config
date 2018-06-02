# vim-config

---------------------

## Dependencies
  1. Vim 8.0+ with python scripting support
  2. [xsel](http://www.kfish.org/software/xsel/)
  3. [ctags](https://github.com/universal-ctags/ctags)
  4. [ripgrep](https://github.com/BurntSushi/ripgrep)

## Installation

  1. Install the dependencies
  2. Run the install.sh

## Shortcuts

  - `<space>e`  ==> quit
  - `<space>E`  ==> quit all without saving
  - `<space><enter>`  ==> don't highlight the search results
  - Easier moving between windows:
    + `ctrl-j`  ==> down
    + `ctrl-k`  ==> up
    + `ctrl-h`  ==> left
    + `ctrl-l`  ==> right
  - Easier moving between tabs
    + `<space>n`  ==> previous tab
    + `<space>m`  ==> next tab
  - Copy content to clipboard
    1. Select the content
    2. In visual mode, press `ctrl-c`
  - `<space>f`  ==> toggle ctrlp
  - `<F3>`  ==> toggle nerdtree
  - `<F4>`  ==> toggle tagbar
  - `<F5>`  ==> build a project
  - `<F9>`  ==> build and run(only available for a single source code file)
  - `ctrl-j`  ==> UltiSnipsExpandTrigger
  - `<space>s`    ==> GoldenViewSwitchMain
  - `<space>S`    ==> GoldenViewSwitchToggle

## Plugins Management

### Install

  1. Edit *~/.vim/plugins.vim*
  2. Add the name of the plugin you want to install
  3. In normal mode, type `:PlugInstall`
  4. Press `enter`

### Uninstall

  1. Edit *~/.vim/plugins.vim*
  2. Comment the name of the plugin you want to uninstall
  3. In normal mode, type `:PlugClean`
  4. Press `enter`

### Update

  1. In normal mode, type `:PlugUpdate`
  2. Press `enter`

For details, you can see [https://github.com/junegunn/vim-plug](https://github.com/junegunn/vim-plug).

## References

  1. [https://github.com/amix/vimrc](https://github.com/amix/vimrc)
  2. [https://github.com/mbrochh/vim-as-a-python-ide](https://github.com/mbrochh/vim-as-a-python-ide)

