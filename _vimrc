	"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
	" => General
	"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
	" Enable filetype plugins
	filetype plugin on
	filetype indent on
	
	" With a map leader it's possible to do extra key combinations
	" like <leader>w saves the current file
	let mapleader = ","
	let g:mapleader = ","
	
	" Fast saving
	nmap <leader>w :w!<cr>



	set nu
	set tabstop=4
	set autoindent

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Turn on the WiLd menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
	
" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase
" Don't redraw while executing macros (good performance config)
set lazyredraw
set magic

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
" set noerrorbells
" set novisualbell
" set t_vb=
" set tm=500

"设置查找路径
set path+=./,/usr/include/**,**,~/src/vim70/**,/mnt/hgfs/lxx/Ipanel3_Market_MV310_bak/**
".　　　　　　　　在当前文件所在目录中搜索
"/usr/include/**　　　在/usr/include目录所有子目录树中进行搜索
"** 　　　　　　　在当前工作路径所有子目录树中进行搜索
"~/src/vim70/**　　在~/src/vim70的所有子目录树中进行搜索


	set incsearch
	set hls
	set tags+=/mnt/hgfs/lxx/Ipanel3_Market_MV310_bak/tags

	let Tlist_Show_One_File=1    "只显示当前文件的tags
	let Tlist_WinWidth=30        "设置taglist宽度
	let Tlist_Exit_OnlyWindow=1  "tagList窗口是最后一个窗口，则退出Vim
	let Tlist_Use_Right_Window=1 "在Vim窗口右侧显示taglist窗口

"cscope maps
map <silent> <F9> :TlistToggle <cr> 
map <silent> <F8> :cs find c <C-R>=expand("<cword>")<CR><CR>
"加载cscope数据库
"cs add /mnt/hgfs/lxx/Ipanel3_Market_MV310_bak/cscope.out /mnt/hgfs/lxx/Ipanel3_Market_MV310_bak
