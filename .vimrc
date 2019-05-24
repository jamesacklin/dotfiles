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
