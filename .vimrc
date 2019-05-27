" Call the .vimrc.plug file
if filereadable(expand("~/.vimrc.plug"))
  source ~/.vimrc.plug
endif

set backspace=2   " Backspace deletes like most programs in insert mode
set nobackup      " No backups
set nowritebackup " No backups
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set history=50    " 50 items in history
set ruler         " Show the cursor position all the time
set showcmd       " Display incomplete commands
set incsearch     " Do incremental searching
set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running commands

" Automatically open a NERDTree when vim starts
autocmd vimenter * NERDTree

" Toggle hidden files in NERDTree explorer windows by default
let NERDTreeShowHidden = 1

" Close vim if the only window left is nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" http://stackoverflow.com/a/21891088/482425
" Let the nerdtree root be the cwd for ctrl-p - basically tells ctrl-p to
" only search in the root dir we're in (which can be set by clicking a
" bookmark!)
let g:NERDTreeChDirMode = 2
let g:ctrlp_working_path_mode = 'w'

" Ignore some directories in NERDTree
let NERDTreeIgnore = ['.pyc$', 'pycache', 'pycache/', 'nashorn_code_cache[[dir]]', 'node_modules[[dir]]']

" Find the current buffer in the nerd tree sidebar
nnoremap <Leader><Leader>f :NERDTreeFind<CR>
map <Leader><Leader>t :NERDTreeToggle<CR>

" Turn on line numbers by default in nerd tree
let NERDTreeShowLineNumbers=1

" Ignore CtrlP files in .gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" Turn line numbers on 
set nu

" Turn INSERT indicator off, let airline handle that for us
set noshowmode

" Whitespace, wrap, and linebreaks
set list
set listchars=tab:»·,eol:¬,space:·,trail:·,nbsp:·
set wrap
set linebreak

" Soft tabs, 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

" Autoindent, might not work?
augroup autoindent
  au!
  autocmd BufWritePre * :normal migg=G`i
augroup End

" Obvious 80-character ruler
set textwidth=80
set colorcolumn=+1

" Numbers
set number
set numberwidth=5

" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'

" Syntax highlighting + color scheme
syntax on
colorscheme onedark

" Indent always on
filetype plugin indent on

" This beauty remembers where you were the last time you edited the file, and returns to the same position.
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

" Rainbow parens
let g:rainbow_active = 1
let g:rainbow_conf = {
      \ 'ctermfgs': [
      \ 'lightblue', 'lightyellow', 'lightcyan', 'lightmagenta',
      \ 'darkblue', 'darkyellow', 'darkcyan', 'darkmagenta',
      \ 'lightgreen', 'lightgray', 'lightred',
      \ 'darkgreen', 'darkgray', 'darkred'
      \ ],
      \ }

" But we also want to highlight matching brackets
hi MatchParen cterm=none ctermbg=green ctermfg=blue

" Remap C+w to <Leader>+w 
nnoremap <Leader>w <C-w>
