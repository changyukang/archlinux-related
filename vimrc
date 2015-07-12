" a.by kcy

" a.basic configure,插件无关配置
set number
set laststatus=0

set viminfo='1000,f1,<800

" 禁用方向键
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop> 
noremap <Right> <Nop>

set encoding=utf-8
set bomb

"打开时自动跳到上次退出的行和列(编程相关),这里想跳到具体列，需要下面normal!g后面使用`，而非'
" Uncomment the following to have Vim jump to the last position when reopening a file
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
" for simplicity, "  au BufReadPost * exe "normal! g`\"", is Okay.
endif

set autoindent                     "自动对齐
set smartindent                    "智能对齐
set showmatch                      "括号匹配模式
set matchtime=1  "匹配括号高亮的时间（单位是十分之一秒）
set ruler                          "显示状态行
set incsearch                      "搜索时一边输入一边显示效果
set tabstop=4                      "tab键为4个空格
set shiftwidth=4
set softtabstop=4
set cindent                        "C语言格式对齐
set nobackup                       "不要备份文件
set clipboard+=unnamed             "与windows共享剪贴板
set incsearch                      "增量搜索
set hlsearch                       "搜索字符高亮
set history=1000                   "记录历史的行数
set showcmd     " 输入的命令显示出来，看的清楚些 "
" 显示中文帮助
" if version >= 603
"     set helplang=cn
"     set encoding=utf-8
" endif

" e.basic configure

" a.pathogen
"set nocp
"source /home/kcy/.vim/autoload/pathogen.vim
set nocompatible
filetype off
filetype plugin on
call pathogen#infect()
call pathogen#helptags()
syntax on
" e.pathogen

" a.vundle
set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#rc()
call vundle#begin()
" Bundles:
" 如果在windows下使用，设置为  
" set rtp+=$HOME/.vim/bundle/vundle/  
" callvundle#rc()  
" let Vundle manage Vundle  
" Bundle'gmarik/vundle' " required!  
" Bundles托管插件示例  
" 代码在github非vimscript用户下,使用github帐号/项目名，例如：  
" Bundle 'tpope/vim-fugitive'  
" 代码在vimscript用户下，使用插件名称，插件名字可以在  
" http://vim-scripts.org/vim/scripts.html页面中查找，例如：   
" Bundle 'vimwiki'  
" 非github的插件，使用其git地址，例如：  
" Bundle 'git://git.wincent.com/command-t.git'  
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'L9'
Plugin 'FuzzyFinder'
Plugin 'rails.vim'
Plugin 'ack.vim'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'taglist.vim'
Plugin 'TxtBrowser'
Plugin 'scrooloose/nerdtree'
Plugin 'eikenb/acp'
Plugin 'vimcn/acp.vim.cnx'
Plugin 'lboulard/cscope'
Plugin 'wolfpython/cscope_map.vim'
" Plugin 'chazy/cscope_maps'
" Plugin 'charz/multi-cscope-db'
" Plugin 'cscope_macros.vim' 
" Plugin 'autoload_cscope.vim'
" Plugin 'cscope.vim'
Plugin 'fholgado/minibufexpl.vim'
"Plugin 'minibufexplorerpp'
Plugin 'a.vim'
Plugin 'grep.vim' "authored by yegappan
Plugin 'Visual-Mark'
Plugin 'ervandew/supertab'
"Plugin 'OmniCppComplete'
Plugin 'FromtonRouge/OmniCppComplete'
Plugin 'c.vim'
Plugin 'andyxsv5/code_complete.vim' "类似c.vim
Plugin 'winmanager--Fox'  "a bug-fix version for winmanager
Plugin 'evening_2'
Plugin 'sgerrand/xfce4-terminal-colors-solarized'  "xfce4 terminal only, Solarized
Plugin 'altercation/vim-colors-solarized'          "Vim only, Solarized
Plugin 'altercation/solarized'                    "full version, Solarized
Plugin 'scwbin/csExplorer'
Plugin 'Raimondi/delimitMate'
" ...
call vundle#end() 
filetype plugin indent on
" e.vundle

" a.ctags，非VIM插件
" ctags快捷键设置,进入代码根目录后，打开vim
map <C-k><S-t> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
" e.ctags

" a.taglist
" a. 区分windows和Linux
"if MySys() == "windows"                "设定windows系统中ctags程序的位置
"	let Tlist_Ctags_Cmd = "ctags"
"elseif MySys() == "linux"              "设定linux系统中ctags程序的位置
"	let Tlist_Ctags_Cmd = "/usr/bin/ctags"
"endif
" e.区分windows和linux
let Tlist_Ctags_Cmd="/usr/bin/ctags" "将taglist与ctags关联  
let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist窗口 
let Tlist_Show_One_File=1     "不同时显示多个文件的tag，只显示当前文件的    
let Tlist_Exit_OnlyWindow=1   "如果taglist窗口是最后一个窗口，则退出vim   
"let Tlist_Auto_Open=1 "自动加载taglist,由于下面使用了winmanager,里面会自动加载taglist，所以这里就不设置了
map <C-k><C-t> :TlistToggle<RETURN>
" e.taglist

" a.txtbrowser
let tlist_txt_settings='txt;c:content;f:figures;t:tables'
au BufRead,BufNewFile *.txt setlocal ft=txt
" 快捷键同上面taglist
" e.txtbrowser

" a.nerdtree
map <C-k><C-n> :NERDTreeToggle<CR>
" e.nerdtree


" new-omni-completion "非插件,VIM自带
"关掉自动补全预览窗口
set completeopt=longest,menu

" a.SuperTab
" 加速你的补全 -- 插件: SuperTab,配合new-omni-completion
"let g:SuperTabDefaultCompletionType="context"
"let g:SuperTabDefaultCompletionType="<C-X><C-O>"
" 设置按下<Tab>后默认的补全方式, 默认是<C-P>, 
" " 现在改为<C-X><C-O>. 关于<C-P>的补全方式, 
" " 还有其他的补全方式, 你可以看看下面的一些帮助:
" " :help ins-completion
" " :help compl-omni 
"let g:SuperTabRetainCompletionType=2
" " 0 - 不记录上次的补全方式
" " 1 - 记住上次的补全方式,直到用其他的补全命令改变它
" " 2 - 记住上次的补全方式,直到按ESC退出插入模式为止
"存在一个问题，现在<Tab>键不好用了, 我以前爱用<Tab>进行缩进,
"如果前面有字符按下<Tab>键后就会进行补全, 而不是我想要的缩进功能,
"不知道有没有快捷键可以暂时关闭和激活SuperTab键的功能
" e.SuperTab

" a.autocomplpop(acp.vim)
" 依赖L9
" a.补全增强，正常autocomplpop是按字典进行补全的，只有你输入过的单词才可以补全。第一次想要自动补全必须用CTRL+X或CTRL+O来补全。下面的代码可以增强一下自动补全功能
let g:AutoComplPop_Behavior = {
\ 'c': [ {'command' : "\\",
\ 'pattern' : ".",
\ 'repeat' : 0}
\ ]
\}
" e.补全增强
" a.Php补全,再就是这个插件(acp.Vim)默认是没有设置php自动补全的,可以设置一个PHP函数字典,让其根据字典的内容进行自动补全,暂时字典没有设置。
if !exists('g:AutoComplPop_Behavior')
let g:AutoComplPop_Behavior = {}
let g:AutoComplPop_Behavior['php'] = []
call add(g:AutoComplPop_Behavior['php'], {
\ 'command' : "\\",
\ 'pattern' : printf('\(->\|::\|\$\)\k\{%d,}$', 0),
\ 'repeat' : 0,
\})
endif
" e.Php补全,这个插件默认是没有设置php自动补全的，为了能让其输入$后自动出来补全框。
" a.括号自动补全,现在使用delimitMate插件实现
" 在 Vim 中实现括号自动补全：
"inoremap ( ()<ESC>i
"inoremap ) <c-r>=ClosePair(')')<CR>
"inoremap { {}<ESC>i
"inoremap } <c-r>=ClosePair('}')<CR>
"inoremap [ []<ESC>i
"inoremap ] <c-r>=ClosePair(']')<CR>
"inoremap < <><ESC>i
"inoremap > <c-r>=ClosePair('>')<CR>
"inoremap ' ''<ESC>i
"inoremap " ""<ESC>i
"
"function! ClosePair(char) "这里加!不知道有什么用
"    if getline('.')[col('.') - 1] == a:char
"        return "<Right>"
"    else
"        return a:char
"    endif
"endfunction
" e.括号自动补全
" e.autocomplpo(acp.vim)

" a.cscope
if has("cscope")

    """"""""""""" Standard cscope/vim boilerplate

    " use both cscope and ctag for 'ctrl-]', ':ta', and 'vim -t'
    set cscopetag

    " check cscope for definition of a symbol before checking ctags: set to 1
    " if you want the reverse search order.
    set csto=0

    " add any cscope database in current directory
    if filereadable("cscope.out")
        cs add cscope.out  
    " else add the database pointed to by environment variable 
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif

    " show msg when any other cscope db added
    set cscopeverbose  


    """"""""""""" My cscope/vim key mappings
    "
    " The following maps all invoke one of the following cscope search types:
    "
    "   's'   symbol: find all references to the token under cursor
    "   'g'   global: find global definition(s) of the token under cursor
    "   'c'   calls:  find all calls to the function name under cursor
    "   't'   text:   find all instances of the text under cursor
    "   'e'   egrep:  egrep search for the word under cursor
    "   'f'   file:   open the filename under cursor
    "   'i'   includes: find files that include the filename under cursor
    "   'd'   called: find functions that function under cursor calls
    "
    nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>	
    nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>	


    " Using 'CTRL-spacebar' (intepreted as CTRL-@ by vim) then a search type
    " makes the vim window split horizontally, with search result displayed in
    " the new window.
    "
    nmap <C-@>s :scs find s <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-@>g :scs find g <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-@>c :scs find c <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-@>t :scs find t <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-@>e :scs find e <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-@>f :scs find f <C-R>=expand("<cfile>")<CR><CR>	
    nmap <C-@>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>	
    nmap <C-@>d :scs find d <C-R>=expand("<cword>")<CR><CR>	


    " Hitting CTRL-space *twice* before the search type does a vertical 
    " split instead of a horizontal one (vim 6 and up only)
    "
    " (Note: you may wish to put a 'set splitright' in your .vimrc
    " if you prefer the new window on the right instead of the left

    nmap <C-@><C-@>s :vert scs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>g :vert scs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>c :vert scs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>t :vert scs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>e :vert scs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>f :vert scs find f <C-R>=expand("<cfile>")<CR><CR>	
    nmap <C-@><C-@>i :vert scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>	
    nmap <C-@><C-@>d :vert scs find d <C-R>=expand("<cword>")<CR><CR>


    """"""""""""" key map timeouts
    "
    " By default Vim will only wait 1 second for each keystroke in a mapping.
endif
set cscopequickfix=s-,c-,d-,i-,t-,e-

" a.自动加载生成打cscope.out
if has("cscope")  
    set csprg=/usr/bin/cscope  
    set csto=0  
    set cst  
    set csverb  
    set cspc=3  
    "add any database in current dir  
    if filereadable("cscope.out")  
        cs add cscope.out  
    "else search cscope.out elsewhere  
    else  
       let cscope_file=findfile("cscope.out", ".;")  
       let cscope_pre=matchstr(cscope_file, ".*/")  
       if !empty(cscope_file) && filereadable(cscope_file)  
           exe "cs add" cscope_file cscope_pre  
       endif        
     endif  
endif  
" e.自动加载生成打cscope.out
" e.cscope

" a.minibufexpl,以下设置暂时似乎没用
" 删除buffer,使用d.
" <C-Tab> 向前循环切换,<C-S-Tab> 向后循环切换到每个buffer上,并在但前窗口打开
let g:miniBufExplMapCTabSwitchBufs = 1
" 可以用<C-h,j,k,l>切换到上下左右的窗口中去,就像:C-w,h j k l.
let g:miniBufExplMapWindowNavVim = 1
" 用<C-箭头键>切换到上下左右窗口中去
let g:miniBufExplMapWindowNavArrows = 1
" e.minibufexpl

" a.winmanager 
let g:NERDTree_title="[NERDTree]"  
let g:winManagerWindowLayout="NERDTree|TagList"  

function! NERDTree_Start()  
    exec 'NERDTree'  
endfunction  

function! NERDTree_IsValid()
    return 1  
endfunction  

"使用快捷键打开,或者使用下面方式自动打开
nmap wm :WMToggle<CR>
"启动时自动打开winmanager,该变量定义在插件mismanager.vim中
let g:AutoOpenWinManager = 1
"自动退出Winmanager,判断当前窗口包含几个子窗口，如果有2个的话自动退出
autocmd bufenter * if (winnr("$") == 2 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary")  | qa | endif

"启用鼠标操作,方便使用nerdtree时用鼠标选择文件
set mouse=a
" e.winmanager

" a.quickfix
nmap <F8>  :cp<cr> "跳到上一个结果
nmap <F9>  :cn<cr> "跳到下一个结果 
"nmap <F10> :cw<cr> "打开quickfix窗口
nmap <F10> :copen 6<cr> :copen 6<cr> "打开quickfix窗口,可以指定高度,这里输两次，第一次高度不生效
nmap <S-F10> :cclose<cr> "关闭quickfix窗口,该组合键需要先把所用终端打快捷键绑定去掉，否则终端可能不接受该种输入
" e.quickfix

" a.csExplorer
"By default the command to involke the Color Scheme Explorer is ':ColorSchemeExplorer'
"After you are done explorering all the color schemes, you can press 'q' to quit explorering
" e.csExplorer

" a.color theme
" 1.solarized
syntax enable
set background=dark
set t_Co=256
colorscheme solarized "配色方案插件，使用Bundle安装

" 2.evening_2
"colorscheme evening_2
" e.color theme
