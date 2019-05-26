" Call the .vimrc.plug file
if filereadable(expand("~/.vimrc.plug"))
	source ~/.vimrc.plug
endif

" Automatically open a NERDTree when vim starts
autocmd vimenter * NERDTree

" Toggle hidden files in NERDTree explorer windows by default
let NERDTreeShowHidden = 1

" Ignore CtrlP files in .gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" Turn line numbers on 
set nu

set list
set listchars=tab:»»,eol:¬,space:·
set wrap
set linebreak

syntax on
colorscheme onedark

filetype plugin on
filetype indent on

" This beauty remembers where you were the last time you edited the file, and returns to the same position.
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif


