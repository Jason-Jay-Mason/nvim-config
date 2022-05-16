-- set wildignore+=*/node_modules/*

vim.cmd([[
  syntax enable
  set shell=fish
  set nocompatible
  set number
	set relativenumber
  set fileencodings=utf-8,latin
  set title
  set autoindent
  set nobackup
  set hlsearch
  set showcmd
  set laststatus=2
  set scrolloff=10
  set foldmethod=marker
  set foldmarker=#region,#endregion
  set undofile
  set undodir=$HOME/.nvim/undo
	set mouse=a
  if has('nvim')
    set inccommand=split
  endif
  
  set nosc noru nosm
  set lazyredraw
  set ignorecase
  set smarttab
  set shiftwidth=2
  set tabstop=2
  filetype plugin indent on
  set si
  set ai
  set nowrap
  set path+=**

	if exists("&termguicolors") && exists("&winblend")
  	syntax enable
  	set termguicolors
  	set winblend=0
  	set wildoptions=pum
  	set pumblend=5
  	colorscheme dracula
		hi normal guibg=NONE
	endif
  
]])
