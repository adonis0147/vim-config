# vim-config

---------------------

## Dependencies
  1. Vim 7.3.584+ with python scripting support
  2. [xsel](http://www.kfish.org/software/xsel/)
  3. [exuberant-ctags](http://ctags.sourceforge.net/)
  4. [ack-grep](http://betterthangrep.com/)

``` bash
# For Debian/Ubuntu
sudo apt-get install xsel exuberant-ctags ack-grep
```

## Installation

  1. Install the dependencies
  2. Run the install.sh
  3. Run the install.sh in the extra folder (optional)

``` bash
# For Debian/Ubuntu
sudo apt-get install xsel exuberant-ctags ack-grep
bash install.sh

# optional (install YouCompleteMe)
cd extra
bash install.sh
```

## Plugins

  1. [Vundle](https://github.com/gmarik/vundle) -The plug-in manager for Vim
  2. [Molokai](https://github.com/tomasr/molokai) -Molokai color scheme for Vim
  3. [Vim-powerline](https://github.com/Lokaltog/vim-powerline) -The ultimate statusline/prompt utility.
  4. [GoldenView.Vim](https://github.com/zhaocai/GoldenView.Vim) -Always have a nice view for vim split windows!
  5. [PrettyGuides](https://github.com/adonis0147/prettyGuides) -Indent guides - displaying indent levels by vertical lines for Vim editor
  6. [Ctrlp.vim](https://github.com/kien/ctrlp.vim) -Fuzzy file, buffer, mru, tag, etc finder.
  7. [Ack.vim](https://github.com/mileszs/ack.vim) -Vim plugin for the Perl module / CLI script 'ack'
  8. [Vim-easymotion](https://github.com/Lokaltog/vim-easymotion) -Vim motions on speed!
  9. [Nerdtree](https://github.com/scrooloose/nerdtree) -A tree explorer plugin for vim
  10. [Tagbar](https://github.com/majutsushi/tagbar) -Vim plugin that displays tags in a window, ordered by class etc
  11. [Nerdcommenter](https://github.com/scrooloose/nerdcommenter) -Vim plugin for intensely orgasmic commenting
  12. [Auto-pairs](https://github.com/jiangmiao/auto-pairs) -Vim plugin, insert or delete brackets, parens, quotes in pair
  13. [Vim-surround](https://github.com/tpope/vim-surround) -Quoting/parenthesizing made simple
  14. [Emmet-vim](https://github.com/mattn/emmet-vim) -emmet for vim: http://emmet.io/ http://mattn.github.io/emmet-vim
  15. [Ultisnips](https://github.com/SirVer/ultisnips) -This is an implementation of TextMates Snippets for the Vim Text Editor.
  16. [a.vim](https://github.com/vim-scripts/a.vim) -Alternate Files quickly (.c --> .h etc)
  17. [YouCompleteMe](https://github.com/Valloric/YouCompleteMe) -A code-completion engine for Vim.  http://valloric.github.io/YouCompleteMe/

**If you want to install _YouCompleteMe_, you should run the _install.sh_ in the extra folder.**

## Shortcuts

  - `,e`  ==> quit
  - `,E`  ==> quit all without saving
  - `,<enter>`  ==> don't highlight the search results
  - Easier moving between windows:
    + `ctrl-j`  ==> down
    + `ctrl-k`  ==> up
    + `ctrl-h`  ==> left
    + `ctrl-l`  ==> right
  - Easier moving between tabs
    + `,n`  ==> previous tab
    + `,m`  ==> next tab
  - Copy content to clipboard
    1. Select the content
    2. In visual mode, press `ctrl-c`
  - `,f`  ==> toggle ctrlp
  - `<F3>`  ==> toggle nerdtree
  - `<F4>`  ==> toggle tagbar
  - `<F5>`  ==> build a project
  - `<F9>`  ==> build and run(only available for a single source code file)
  - ack a word which is under the cursor
    1. `,a` ==> toggle ack command
    2. Edit the command
    3. Press `enter`
  - `ctrl-j`  ==> UltiSnipsExpandTrigger
  - `,s`    ==> GoldenViewSwitchMain
  - `,S`    ==> GoldenViewSwitchToggle

## Plugins Management

### Install

  1. Edit *~/.vim/plugins.vim*
  2. Add the name of the plugin you want to install
  3. In normal mode, type `:BundleInstall`
  4. Press `enter`

### Uninstall

  1. Edit *~/.vim/plugins.vim*
  2. Comment the name of the plugin you want to uninstall
  3. In normal mode, type `:BundleClean`
  4. Press `enter`

### Update

  1. In normal mode, type `:BundleInstall!`
  2. Press `enter`

For details, you can see [https://github.com/gmarik/vundle](https://github.com/gmarik/vundle).

## Remarks

#### Full Installation Guide for *YouCompleteMe* On Unix-like Systems
You can also reference the home page of [YouCompleteMe](http://valloric.github.io/YouCompleteMe/)

  1. Compile *LLVM* and *Clang*
    1. Checkout LLVM:
      - `svn co http://llvm.org/svn/llvm-project/llvm/trunk llvm`
    2. Checkout Clang:
      - `cd llvm/tools`
      - `svn co http://llvm.org/svn/llvm-project/cfe/trunk clang`
    3. Checkout Compiler-RT:
      - `cd llvm/projects`
      - `svn co http://llvm.org/svn/llvm-project/compiler-rt/trunk compiler-rt`
    4. Compile
      - `mkdir -p llvm/build`
      - `cd llvm/build`
      - `mkdir -p $HOME/ycm_temp/`
      - `../configure --prefix=$HOME/ycm_temp/llvm_root_dir --enable-optimized`
      - `make`
      - `make install`
  2. Compile *YouCompleteMe*
    - `cd ~`
    - `mkdir ycm_build`
    - `cd ycm_build`
    - `cmake -G "Unix Makefiles" -DPATH_TO_LLVM_ROOT=~/ycm_temp/llvm_root_dir . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp`
    - `make ycm_support_libs`

## References

  1. [https://github.com/amix/vimrc](https://github.com/amix/vimrc)
  2. [https://github.com/mbrochh/vim-as-a-python-ide](https://github.com/mbrochh/vim-as-a-python-ide)

