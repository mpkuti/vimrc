"********** UTF 8 **********
set encoding=utf-8

"********** Undo file **********
"set undofile
"set undodir=C:\Users\mpkuti\vimfiles\undo\

"********** show invisible characters **********
set list
set listchars=tab:>\ ,eol:¬

"********** Make the 81th column stand out **********
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)


"********** Indentation **********
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

syntax on

"********** insert new line without entering insert mode **********
" Use <Enter> to insert line after this line.
" Use <Shift> + <Enter> to insert line before this line.
"noremap <S-Enter> O<esc>
"nmap <CR> o<esc>
noremap <Enter> o<esc>

"********** Save when buffer is changed **********
" http://vim.wikia.com/wiki/Auto_save_files_when_focus_is_lost
:set autowrite

"********** Row numbers **********
:set number

"********** Caps Lock <- Esc **********
" http://vim.wikia.com/wiki/Avoid_the_escape_key

"********** Highlight current line **********
"autocmd WinEnter * setlocal cursorline
"autocmd WinLeave * setlocal nocursorline
"
"********** Caps Lock <- Esc **********
"" http://vim.wikia.com/wiki/Avoid_the_escape_key

"********** Syntax highlighting **********
syntax on
filetype plugin on

"****************************************
"*************** PLUG INS ***************
"****************************************

"********** Pathogen **********
execute pathogen#infect()

"********** Powerline **********
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
"set rtp+=C:\Users\mpkuti\vimfiles\powerline\powerline\bindings\vim
"set nocompatible
set laststatus=2
"let g:Powerline_symbols = 'fancy'
set t_Co=256

"**********************************************
"*************** THEMES, COLORS ***************
"**********************************************

"********** Color Theme **********
"colors noctu
colors molokai
let g:molokai_original = 1
set background=dark

"********** Make the 81th column stand out **********
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

"**************************************************
"*************** FILE TYPE SPECIFIC ***************
"**************************************************

"********** Markdown **********
"" Recognize .md file as .markdown file
autocmd BufRead,BufNewFile *.md set filetype=markdown
" Soft wrapping of text, only with .md files:
" http://vimcasts.org/episodes/soft-wrapping-text/
autocmd BufRead,BufNewFile *.md set wrap linebreak nolist

autocmd BufRead,BufNewFile *.txt set wrap linebreak nolist nonumber

"********** LaTeX **********
let mapleader = "\<tab>"
let g:Tex_CompileRule_pdf = 'pdflatex -interaction=nonstopmode -shell-escape $*'
let g:Tex_DefaultTargetFormat = 'pdf'
let g:tex_flavor = 'pdflatex'
let g:Tex_BibtexFlavor = 'bibtex'
let g:Tex_MultipleCompileFormats = 'pdf'
let TCLevel="strict"
let Tex_FoldedSections=""

"********** Python **********

" an hard TAB displays as 4 columns
autocmd BufRead,BufNewFile *.py set tabstop=4

" operation >> indents 4 columns; << unindents 4 columns
autocmd BufRead,BufNewFile *.py set shiftwidth=4

autocmd BufRead,BufNewFile *.py set smarttab

" insert spaces when hitting TABs
autocmd BufRead,BufNewFile *.py set expandtab

" insert/delete 4 spaces when hitting a TAB/BACKSPACE
autocmd BufRead,BufNewFile *.py set softtabstop=4

" round indent to multiple of 'shiftwidth'
autocmd BufRead,BufNewFile *.py set shiftround 

" align the new line indent with the previous line
autocmd BufRead,BufNewFile *.py set autoindent

"autocmd BufRead,BufNewFile *.py set smartindent, cinwords=if,elif,else,for,while,try,except,finally,def,class
"autocmd BufWritePre *.py normal m`:%s/\s\+$//e``

"***************************************
"*************** GVIM OPTIONS **********
"***************************************

set guioptions-=T "remove toolbar
set guioptions-=m "remove menu bar
