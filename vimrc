
" based on http://mirnazim.org/writings/vim-plugins-i-use/

call pathogen#infect()
call pathogen#helptags()

" https://github.com/majutsushi/tagbar/blob/master/doc/tagbar.txt
let g:tagbar_autoclose = 1
let g:tagbar_autofocus = 1
let g:tagbar_show_linenumbers = 1
""autocmd VimEnter * nested :call tagbar#autoopen(1)
nmap <C-T> :TagbarToggle<CR>

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'dark'

if $COLORTERM == 'gnome-terminal'
	set t_Co=256
	let g:solarized_termcolors=256
endif

set laststatus=2 
set showmatch
set visualbell
set number
set cursorline
set tabstop=4
set hlsearch

set background=dark
"colorscheme flattown
colorscheme jellybeans.mod

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

set incsearch
set ignorecase

nmap <A-Right> :tabnext <CR>
nmap <A-Left> :tabprev <CR>

set colorcolumn=80

