"********** Required by Pathogen: **********
execute pathogen#infect()

"********** Powerline: **********
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
set nocompatible
set laststatus=2
let g:Powerline_symbols = 'fancy'

"********** This makes vim invoke Latex-Suite when you open a tex file.  **********
filetype plugin on

"********** This enables automatic indentation as you type. **********
filetype indent on

"********** Indentation settings: **********
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

"********** Show the invisible characters: **********
set list

"********** Use the same symbols as TextMate for tabstops and EOLs **********
set listchars=tab:▸\ ,eol:¬

"**********Invisible character colors **********
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

syntax on

"***************************************
"***************************************
"********** LaTeX-SUITE RULES **********
"g:Tex_CompileRule_pdf = 'latex --interaction=nonstopmode $*'
:let g:Tex_DefaultTargetFormat = 'pdf'

let g:Tex_DefaultTargetFormat='pdf'
let g:tex_flavor = "pdflatex"
let g:Tex_BibtexFlavor = 'bibtex'
let g:Tex_MultipleCompileFormats='pdf,dvi,aux'
"let g:Tex_CompileRule_pdf = 'mkdir -p tmp; pdflatex -output-directory tmp -interaction=nonstopmode $*; cp tmp/*.pdf .'
let g:Tex_ViewRule_pdf = 'open -a Skim.app'

"********** environments **********
let g:Tex_PromptedEnvironments = 'eqnarray*,eqnarray,equation,equation*,\[,$$,align,align*,figure,table'

"********** prompted commands using F7 key: **********
let g:Tex_PromptedCommands = 'footnote,cite,pageref,label,input'
:let mapleader = "§"

"********** LaTeX-SUITE RULES **********
"***************************************
"***************************************
"
"********** Solarized theme: **********
"set background=dark
"let g:solarized_termcolors=256
"colorscheme solarized
