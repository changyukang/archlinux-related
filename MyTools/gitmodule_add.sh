#需要时可以先将文件夹删除
#当前由于下面库已经添加为了submodule，所以不需要执行该脚本了
	git rm --cached dotfiles-rsync/dotfiles/oh-my-zsh 
    git submodule add git@github.com:changyukang/oh-my-zsh.git dotfiles-rsync/dotfiles/oh-my-zsh
	git rm --cached dotfiles-rsync/dotfiles/z
	git submodule add git@github.com:changyukang/z.git dotfiles-rsync/dotfiles/z
	git rm --cached dotfiles-rsync/dotfiles/Font/powerline/fonts
	git submodule add git@github.com:powerline/fonts dotfiles-rsync/dotfiles/Font/powerline/fonts
	git rm --cached dotfiles-rsync/dotfiles/vim/bundle/Vundle.vim
	git submodule add git@github.com:gmarik/Vundle.vim dotfiles-rsync/dotfiles/vim/bundle/Vundle.vim
	git rm --cached dotfiles-rsync/dotfiles/vim/bundle/rails.vim
	git submodule add git@github.com:vim-scripts/rails.vim dotfiles-rsync/dotfiles/vim/bundle/rails.vim
	git rm --cached dotfiles-rsync/dotfiles/vim/bundle/taglist.vim
	git submodule add git@github.com:vim-scripts/taglist.vim dotfiles-rsync/dotfiles/vim/bundle/taglist.vim
	git rm --cached dotfiles-rsync/dotfiles/vim/bundle/tagbar
	git submodule add git@github.com:majutsushi/tagbar dotfiles-rsync/dotfiles/vim/bundle/tagbar
	git rm --cached dotfiles-rsync/dotfiles/vim/bundle/TxtBrowser
	git submodule add git@github.com:vim-scripts/TxtBrowser dotfiles-rsync/dotfiles/vim/bundle/TxtBrowser
	git rm --cached dotfiles-rsync/dotfiles/vim/bundle/nerdtree
	git submodule add git@github.com:scrooloose/nerdtree dotfiles-rsync/dotfiles/vim/bundle/nerdtree
	git rm --cached dotfiles-rsync/dotfiles/vim/bundle/bufkill.vim
	git submodule add git@github.com:vim-scripts/bufkill.vim dotfiles-rsync/dotfiles/vim/bundle/bufkill.vim
	git rm --cached dotfiles-rsync/dotfiles/vim/bundle/vimprj
	git submodule add git@github.com:vim-scripts/vimprj dotfiles-rsync/dotfiles/vim/bundle/vimprj
	git rm --cached dotfiles-rsync/dotfiles/vim/bundle/DfrankUtil
	git submodule add git@github.com:vim-scripts/DfrankUtil dotfiles-rsync/dotfiles/vim/bundle/DfrankUtil
	git rm --cached dotfiles-rsync/dotfiles/vim/bundle/cscope
	git submodule add git@github.com:lboulard/cscope dotfiles-rsync/dotfiles/vim/bundle/cscope
	git rm --cached dotfiles-rsync/dotfiles/vim/bundle/cscope_map.vim
	git submodule add git@github.com:wolfpython/cscope_map.vim dotfiles-rsync/dotfiles/vim/bundle/cscope_map.vim
	git rm --cached dotfiles-rsync/dotfiles/vim/bundle/minibufexpl.vim
	git submodule add git@github.com:fholgado/minibufexpl.vim dotfiles-rsync/dotfiles/vim/bundle/minibufexpl.vim
	git rm --cached dotfiles-rsync/dotfiles/vim/bundle/a.vim
	git submodule add git@github.com:vim-scripts/a.vim dotfiles-rsync/dotfiles/vim/bundle/a.vim
	git rm --cached dotfiles-rsync/dotfiles/vim/bundle/grep.vim
	git submodule add git@github.com:vim-scripts/grep.vim dotfiles-rsync/dotfiles/vim/bundle/grep.vim
	git rm --cached dotfiles-rsync/dotfiles/vim/bundle/Visual-Mark
	git submodule add git@github.com:vim-scripts/Visual-Mark dotfiles-rsync/dotfiles/vim/bundle/Visual-Mark
	git rm --cached dotfiles-rsync/dotfiles/vim/bundle/winmanager--Fox
	git submodule add git@github.com:vim-scripts/winmanager--Fox dotfiles-rsync/dotfiles/vim/bundle/winmanager--Fox
	git rm --cached dotfiles-rsync/dotfiles/vim/bundle/evening_2
	git submodule add git@github.com:vim-scripts/evening_2 dotfiles-rsync/dotfiles/vim/bundle/evening_2
	git rm --cached dotfiles-rsync/dotfiles/vim/bundle/xfce4-terminal-colors-solarized
	git submodule add git@github.com:sgerrand/xfce4-terminal-colors-solarized dotfiles-rsync/dotfiles/vim/bundle/xfce4-terminal-colors-solarized
	git rm --cached dotfiles-rsync/dotfiles/vim/bundle/vim-colors-solarized
	git submodule add git@github.com:altercation/vim-colors-solarized dotfiles-rsync/dotfiles/vim/bundle/vim-colors-solarized
	git rm --cached dotfiles-rsync/dotfiles/vim/bundle/solarized
	git submodule add git@github.com:altercation/solarized dotfiles-rsync/dotfiles/vim/bundle/solarized
	git rm --cached dotfiles-rsync/dotfiles/vim/bundle/csExplorer
	git submodule add git@github.com:scwbin/csExplorer dotfiles-rsync/dotfiles/vim/bundle/csExplorer
	git rm --cached dotfiles-rsync/dotfiles/vim/bundle/delimitMate
	git submodule add git@github.com:Raimondi/delimitMate dotfiles-rsync/dotfiles/vim/bundle/delimitMate
	git rm --cached dotfiles-rsync/dotfiles/vim/bundle/tabular
	git submodule add git@github.com:godlygeek/tabular dotfiles-rsync/dotfiles/vim/bundle/tabular
	git rm --cached dotfiles-rsync/dotfiles/vim/bundle/vim-markdown
	git submodule add git@github.com:plasticboy/vim-markdown dotfiles-rsync/dotfiles/vim/bundle/vim-markdown
	git rm --cached dotfiles-rsync/dotfiles/vim/bundle/vim-instant-markdown
	git submodule add git@github.com:suan/vim-instant-markdown dotfiles-rsync/dotfiles/vim/bundle/vim-instant-markdown
	git rm --cached dotfiles-rsync/dotfiles/vim/bundle/ack.vim
	git submodule add git@github.com:vim-scripts/ack.vim dotfiles-rsync/dotfiles/vim/bundle/ack.vim
	git rm --cached dotfiles-rsync/dotfiles/vim/bundle/ack2
	git submodule add git@github.com:petdance/ack2 dotfiles-rsync/dotfiles/vim/bundle/ack2
	git rm --cached dotfiles-rsync/dotfiles/vim/bundle/ag.vim
	git submodule add git@github.com:rking/ag.vim dotfiles-rsync/dotfiles/vim/bundle/ag.vim
	git rm --cached dotfiles-rsync/dotfiles/vim/bundle/ctrlsf.vim
	git submodule add git@github.com:dyng/ctrlsf.vim dotfiles-rsync/dotfiles/vim/bundle/ctrlsf.vim
	git rm --cached dotfiles-rsync/dotfiles/vim/bundle/ctrlp.vim
	git submodule add git@github.com:kien/ctrlp.vim dotfiles-rsync/dotfiles/vim/bundle/ctrlp.vim
	git rm --cached dotfiles-rsync/dotfiles/vim/bundle/ctrlp-funky
	git submodule add git@github.com:tacahiroy/ctrlp-funky dotfiles-rsync/dotfiles/vim/bundle/ctrlp-funky
	git rm --cached dotfiles-rsync/dotfiles/vim/bundle/vim-git
	git submodule add git@github.com:tpope/vim-git dotfiles-rsync/dotfiles/vim/bundle/vim-git
	git rm --cached dotfiles-rsync/dotfiles/vim/bundle/vim-fugitive
	git submodule add git@github.com:tpope/vim-fugitive dotfiles-rsync/dotfiles/vim/bundle/vim-fugitive
	git rm --cached dotfiles-rsync/dotfiles/vim/bundle/vim-commentary
	git submodule add git@github.com:tpope/vim-commentary dotfiles-rsync/dotfiles/vim/bundle/vim-commentary
	git rm --cached dotfiles-rsync/dotfiles/vim/bundle/vim-surround
	git submodule add git@github.com:tpope/vim-surround dotfiles-rsync/dotfiles/vim/bundle/vim-surround
	git rm --cached dotfiles-rsync/dotfiles/vim/bundle/vim-sensible
	git submodule add git@github.com:tpope/vim-sensible dotfiles-rsync/dotfiles/vim/bundle/vim-sensible
	git rm --cached dotfiles-rsync/dotfiles/vim/bundle/vim-unimpaired
	git submodule add git@github.com:tpope/vim-unimpaired dotfiles-rsync/dotfiles/vim/bundle/vim-unimpaired
	git rm --cached dotfiles-rsync/dotfiles/vim/bundle/vim-airline
	git submodule add git@github.com:vim-airline/vim-airline dotfiles-rsync/dotfiles/vim/bundle/vim-airline
	git rm --cached dotfiles-rsync/dotfiles/vim/bundle/vim-airline-themes
	git submodule add git@github.com:vim-airline/vim-airline-themes dotfiles-rsync/dotfiles/vim/bundle/vim-airline-themes
	git rm --cached dotfiles-rsync/dotfiles/vim/bundle/genutils
	git submodule add git@github.com:vim-scripts/genutils dotfiles-rsync/dotfiles/vim/bundle/genutils
	git rm --cached dotfiles-rsync/dotfiles/vim/bundle/lookupfile
	git submodule add git@github.com:vim-scripts/lookupfile dotfiles-rsync/dotfiles/vim/bundle/lookupfile
	git rm --cached dotfiles-rsync/dotfiles/vim/bundle/project.vim
	git submodule add git@github.com:vimplugin/project.vim dotfiles-rsync/dotfiles/vim/bundle/project.vim
	git rm --cached dotfiles-rsync/dotfiles/vim/bundle/vim-lastplace
	git submodule add git@github.com:dietsche/vim-lastplace dotfiles-rsync/dotfiles/vim/bundle/vim-lastplace
	git rm --cached dotfiles-rsync/dotfiles/vim/bundle/supertab
	git submodule add git@github.com:ervandew/supertab dotfiles-rsync/dotfiles/vim/bundle/supertab
	git rm --cached dotfiles-rsync/dotfiles/vim/bundle/neocomplcache.vim
	git submodule add git@github.com:shougo/neocomplcache.vim dotfiles-rsync/dotfiles/vim/bundle/neocomplcache.vim
	git rm --cached dotfiles-rsync/dotfiles/vim/bundle/vimux
	git submodule add git@github.com:benmills/vimux dotfiles-rsync/dotfiles/vim/bundle/vimux
	git rm --cached dotfiles-rsync/dotfiles/vim/bundle/VimIM
	git submodule add git@github.com:vim-scripts/VimIM dotfiles-rsync/dotfiles/vim/bundle/VimIM
	git rm --cached dotfiles-rsync/dotfiles/vim/bundle/YouCompleteMe
	git submodule add git@github.com:Valloric/YouCompleteMe dotfiles-rsync/dotfiles/vim/bundle/YouCompleteMe
	git rm --cached dotfiles-rsync/dotfiles/vim/bundle/YCM-Generator
	git submodule add git@github.com:rdnetto/YCM-Generator dotfiles-rsync/dotfiles/vim/bundle/YCM-Generator
	git rm --cached dotfiles-rsync/dotfiles/vim/bundle/vim-multiple-cursors
	git submodule add git@github.com:terryma/vim-multiple-cursors dotfiles-rsync/dotfiles/vim/bundle/vim-multiple-cursors
	git rm --cached dotfiles-rsync/dotfiles/vim/bundle/vim-expand-region
	git submodule add git@github.com:terryma/vim-expand-region dotfiles-rsync/dotfiles/vim/bundle/vim-expand-region
	git rm --cached dotfiles-rsync/dotfiles/vim/bundle/vim-signature
	git submodule add git@github.com:kshenoy/vim-signature dotfiles-rsync/dotfiles/vim/bundle/vim-signature
	git rm --cached dotfiles-rsync/dotfiles/vim/bundle/vim-trailing-whitespace
	git submodule add git@github.com:bronson/vim-trailing-whitespace dotfiles-rsync/dotfiles/vim/bundle/vim-trailing-whitespace
	git rm --cached dotfiles-rsync/dotfiles/vim/bundle/vim-easymotion
	git submodule add git@github.com:Lokaltog/vim-easymotion dotfiles-rsync/dotfiles/vim/bundle/vim-easymotion
	git rm --cached dotfiles-rsync/dotfiles/vim/bundle/vim-easy-align
	git submodule add git@github.com:junegunn/vim-easy-align dotfiles-rsync/dotfiles/vim/bundle/vim-easy-align
	git rm --cached dotfiles-rsync/dotfiles/vim/bundle/rainbow_parentheses.vim
	git submodule add git@github.com:kien/rainbow_parentheses.vim dotfiles-rsync/dotfiles/vim/bundle/rainbow_parentheses.vim
	git rm --cached dotfiles-rsync/dotfiles/vim/bundle/command-t
	git submodule add git://git.wincent.com/command-t.git dotfiles-rsync/dotfiles/vim/bundle/command-t
	git rm --cached dotfiles-rsync/dotfiles/vim/bundle/CCTree
	git submodule add git@github.com:hari-rangarajan/CCTree.git dotfiles-rsync/dotfiles/vim/bundle/CCTree
	git rm --cached dotfiles-rsync/dotfiles/vim/bundle/FuzzyFinder
	git submodule add git@github.com:vim-scripts/FuzzyFinder dotfiles-rsync/dotfiles/vim/bundle/FuzzyFinder
	git rm --cached dotfiles-rsync/dotfiles/vim/bundle/L9
	git submodule add git@github.com:vim-scripts/L9 dotfiles-rsync/dotfiles/vim/bundle/L9
	git rm --cached dotfiles-rsync/dotfiles/Other_Resources/exVim
	git submodule add git@github.com:exvim/main.git dotfiles-rsync/dotfiles/Other_Resources/exVim

