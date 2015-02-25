
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

set laststatus=2 
set showmatch
set visualbell

if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

