" Author: jiangshan 
" Modifydate: 2026.1.13



" Basic Configuration 
	" Grammar Configuration
		syntax on
	" Indent Configuration
		set autoindent
	" Search Configuration
		set ignorecase
		set smartcase
		set incsearch 
	" Mouse Configuration
		set mouse=a



" Keys Configuration
	" Change Bind Keys
		let mapleader = " "
	" DIY Keys Map
		nnoremap <leader>w :w<CR> 
		nnoremap <leader>q :q<CR>
		nnoremap <leader>x :x<CR>
		nnoremap <leader><Up> <C-u>
		nnoremap <leader><Down> <C-d>

	" Command Alias
		cabbrev copy w !wl-copy

