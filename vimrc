
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

" Tell vim to remember certain things when we exit
"  '10  :  marks will be remembered for up to 10 previously edited files
"  "100 :  will save up to 100 lines for each register
"  :20  :  up to 20 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files
set viminfo='10,\"100,:20,%,n~/.viminfo

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

set incsearch
set ignorecase

nmap <Tab> :tabnext <CR>
nmap <S-Tab> :tabprev <CR>                                                         

