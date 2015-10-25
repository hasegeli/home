execute pathogen#infect()
syntax on
filetype on

set enc=utf-8
set smartindent
set tabstop=4
set shiftwidth=4
set cinoptions=(0
set ruler
set history=100000
set colorcolumn=80
set hlsearch
set spell spelllang=en

hi clear SpellBad
hi SpellBad cterm=undercurl ctermfg=red

autocmd BufWritePre,BufRead *.c,*.conf,*.cpp,*.erb,*.js,*.php,*.pp,*.py,*.sh,*.sql :%s/\s\+$//e

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

if &diff
	syntax off
	set nospell
endif
