set nocompatible
filetype plugin on
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()
Bundle 'VundleVim/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
"Plugin 'beloglazov/vim-online-thesaurus'
Plugin 'easymotion/vim-easymotion'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'ervandew/supertab'
"Plugin 'nvie/vim-flake8'
Plugin 'davidhalter/jedi-vim'
""let g:jedi#show_call_signatures = "1"
"set visualbell t_vb=
"call pathogen#infect()
"call pathogen#helptags()
syntax on
"filetype plugin indent on
""""""""""""""""""""
" VIM user interface
""""""""""""""""""""

set ruler
set nu
set linebreak

set cmdheight=2

let mapleader=","
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

imap jj <Esc><Esc>
set timeoutlen=500
noremap ; l
noremap l h

set foldmethod=indent
set foldlevel=99

set shell=/bin/zsh

"""""""""""""""""
"Colors and Fonts
"""""""""""""""""

syntax enable
colorscheme ron
set background=dark

""""""""""""""""""""""""
"Files, Backups and Undo
""""""""""""""""""""""""

"""""""""""""""""""""""""""""
"Text, Tab and Indent Related
"""""""""""""""""""""""""""""

set smarttab
set shiftwidth=4
set softtabstop=4

set ai
set si
set wrap

map <leader>cd :cd %:p:h<cr>:pwd<cr>

autocmd BufReadPost *
	\ if line("'\"") > 0 && line("'\"") <= line("$") |
	\ 	exe "normal! '\"" |
	\ endif
set viminfo^=%

""""""""""""
"Status Line
""""""""""""

set laststatus=2

"set statusline=\ %.20F%m%r%h\ %w\ \ CWD:\ %r%.20{getcwd()}%h\ \ \ Line:\ %l

""""""""
"Buffers
""""""""

map <leader>ws <C-w><C-s>

"""""""""""""""""
"Editing Mappings
"""""""""""""""""

map 0 ^

"""""""""""""""
"Spell Checking
"""""""""""""""

map <leader>ss :setlocal spell spelllang=en_us<cr>:set spell<cr>

map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=

""""""""""
"Vim-Latex
""""""""""
"
"" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
"filetype plugin on
"
"" IMPORTANT: grep will sometimes skip displaying the file name if you
"" search in a singe file. This will confuse Latex-Suite. Set your grep
"" program to always generate a file-name.
"set grepprg=grep\ -nH\ $*
"
"" OPTIONAL: This enables automatic indentation as you type.
"filetype indent on
"
"" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
"" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
"" The following changes the default filetype back to 'tex':
"let g:tex_flavor='latex'
"let g:Tex_DefaultTargetFormat='pdf'
"let g:Tex_MultipleCompileFormats='pdf, aux'
imap ZZ jjZZ
"let g:SuperTabDefaultCompletionType = "context"

"let c='a'
"while c <= 'z'
    "exec "set <M-".toupper(c).">=\e".c
    "exec "imap \e".c." <M-".toupper(c).">"
    "let c = nr2char(1+char2nr(c))
"endw

"for i in range(65,90) + range(97,122)
    let c = 'l' "nr2char(i)
    exec "map \e".c." <M-".c.">"
    exec "map! \e".c." <M-".c.">"
"Endfor

map [12~ <F2>
map [14~ <F4>

set pastetoggle=<F4>
noremap j gj
noremap k gk
noremap $ g$
noremap ^ g^
noremap 0 g^
noremap - $

vmap "" di"<esc>pa"<esc>

"set thesaurus+=/home/ian/mthesaur.txt

map <C-a> ggVG
map <C-c> "+y
nmap ê o<Esc>k
nmap ë O<Esc>j

inoremap <C-W> <C-G>u<C-W>
nmap <C-S> :w<CR>

set copyindent
set preserveindent
set softtabstop=0
set shiftwidth=4
set tabstop=4
set hlsearch

command! -nargs=1 Ss let @/ = <q-args>

function! FindP()
	Ss </p>
	normal n
	startinsert
endfunction

"""""""
"Python
"""""""

set foldmethod=indent
set foldlevel=99

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>h
map <c-o> <c-w>l
map <leader>gt :GundoToggle<CR>

"let g:flake8_show_in_file=0
"let g:flake8_show_quickfix=1
"let g:flake8_show_in_gutter=0
"autocmd BufWritePost *.py call Flake8()
"
au FileType python set omnifunc=pythoncomplete#Complete
"let g:SuperTabDefaultCompletionType = "context"
"
"set completeopt=menuone,longest,preview
"
"let g:miniBufExplMapCTabSwitchBufs = 1

set <f13>=[27;5;9~
set <f14>=[27;6;9~

map <f13> <c-tab>
map <f14> <c-s-tab>

map <c-tab> :bn<CR>
map <c-s-tab> :bp<CR>

map <leader>n :NERDTreeToggle<CR>

map <leader>j :RopeGotoDefinition<CR>
map <leader>r :RopeRename<CR>

"""""""""""
"Easymotion
"""""""""""

map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

"""""""""""
"Airline
""""""""""
let g:airline#extensions#syntastic#enabled = 1

""""""""""
"Syntastic
""""""""""

let g:syntastic_enable_signs=1
let g:syntastic_auto_jump=0
let g:syntastic_auto_loc_list=1
