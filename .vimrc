" Initialize pathogen
execute pathogen#infect()

" Enable backwards incompatible features of vim
set nocompatible

syntax on
filetype on

set enc=utf-8

" Indentation
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set cinoptions=(0

set ruler
set history=10000
set colorcolumn=80
set hlsearch
set spell spelllang=en

" Smart case-sensitivity
"
" It basically provides case-insensitive search unless the term includes
" uppercase chars.
"
set smartcase

" Map word motion keys to use CamelCaseMotion extension
map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
sunmap w
sunmap b
sunmap e

" Spell checking
hi clear SpellBad
hi SpellBad cterm=undercurl ctermfg=red

" Remove trilling whitespaces
autocmd BufWritePre,BufRead *.c,*.conf,*.cpp,*.css,*.erb,*.js,*.php,*.pp,*.py,*.sh,*.sql :%s/\s\+$//e

" Make enter and shift-enter insert newlines in command mode
"
" We need to make sure enter works in history mode:
"
" 	http://stackoverflow.com/a/16360104/401510
"
autocmd CmdwinEnter * nnoremap <CR> <CR>
autocmd BufReadPost quickfix nnoremap <CR> <CR>

if match(getcwd(), "/sgml") >= 0
	set expandtab
	set colorcolumn=100
endif

if match(getcwd(), "/adjust") >= 0
	set expandtab
endif

if match(getcwd(), "/github") >= 0
	set expandtab
endif

if match(getcwd(), "/admin") >= 0
	set expandtab
endif

" Overrides for vimdiff
if &diff
	syntax off
	set nospell
endif
