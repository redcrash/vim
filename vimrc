
" based on http://mirnazim.org/writings/vim-plugins-i-use/

call pathogen#infect()
call pathogen#helptags()

" https://github.com/majutsushi/tagbar/blob/master/doc/tagbar.txt
let g:tagbar_autoclose = 1
let g:tagbar_autofocus = 0
let g:tagbar_show_linenumbers = 0

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'dark'

" if $COLORTERM == 'gnome-terminal'
" 	set t_Co=256
" 	let g:solarized_termcolors=256
" endif
" Use 256 colors always
set t_Co=256
let g:solarized_termcolors=256

set laststatus=2 
set showmatch
set visualbell
set number
set cursorline
set tabstop=4
set hlsearch

set background=dark
" colorscheme flattown
" colorscheme jellybeans
" colorscheme badwolf
colorscheme jellybeans.mod

" From http://stackoverflow.com/questions/2447109/showing-a-different-background-colour-in-vim-past-80-characters
let &colorcolumn=join(range(81,999),",")
highlight ColorColumn ctermbg=235 guibg=#2c2d27


" Tell vim to remember certain things when we exit
"  '10  :  marks will be remembered for up to 10 previously edited files
"  "100 :  will save up to 100 lines for each register
"  :20  :  up to 20 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files
set viminfo='10,\"100,:20,%,n~/.viminfo

" Uncomment the following to have Vim jump to the last position when
" reopening a file
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
autocmd VimEnter * NERDTree | wincmd p " Start NERDTree and put cursor in main window
" autocmd VimEnter * nested :call tagbar#autoopen(1)

" Auto change the directory to the crrent file I'm working on
autocmd BufEnter * lcd %:p:h

set incsearch
set ignorecase

" Next buffer with TAB
nmap <Tab> :bn <CR>
" Previous buffer with SHIFT+TAB
nmap <S-Tab> :bp <CR>
" New buffer with CTRL-N
nmap <C-N> :enew <CR>
" Close buffer with CTRL-C
nmap <C-C> :bd <CR>
" Open NERDTree with CTRL-O
nmap <C-O> :NERDTreeToggle <CR>
" Open TagBar with CTRL-T
nmap <C-T> :TagbarToggle<CR>

let fortran_have_tabs=1
if has('syntax') && (&t_Co > 2)
    syntax enable
endif
filetype plugin indent on
let s:extfname = expand("%:e")
if s:extfname ==? "f90"
  let fortran_free_source=1
  unlet! fortran_fixed_source
else
  let fortran_fixed_source=1
  unlet! fortran_free_source
endif

set list
set listchars=eol:$,tab:>.,trail:~,extends:>,precedes:<
