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

" Enable pgsql extension
let g:sql_type_default = 'pgsql'
let g:pgsql_pl = ['python', 'perl', 'tcl']

" Spell checking
hi clear SpellBad
hi SpellBad cterm=undercurl ctermfg=red

" Syntax checking with the syntastic plugin
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" The status line for the syntastic plugin
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Remove trilling whitespaces
autocmd BufWritePre,BufRead *.c,*.conf,*.cpp,*.css,*.erb,*.js,*.json,*.php,*.pp,*.py,*.sh,*.sql :%s/\s\+$//e

" Re-formatting
au FileType sql setl formatprg=$HOME/.vim/bin/pgformatter/pg_format\ -

" Markdown plugin
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_fenced_languages = ['viml=vim', 'bash=sh', 'pgsql=sql']

" Make enter and shift-enter insert newlines in command mode
"
" We need to make sure enter works in history mode:
"
" 	http://stackoverflow.com/a/16360104/401510
"
autocmd CmdwinEnter * nnoremap <CR> <CR>
autocmd BufReadPost quickfix nnoremap <CR> <CR>

" Keep undo history across sessions
if has('persistent_undo')
	let &undodir = expand('$HOME/.vim/undodir')
	set undofile
	set undolevels=2000
	set undoreload=10000
endif

if match(getcwd(), '/sgml') >= 0
	set colorcolumn=100
endif

" Domains which tabs are not allowed
if match(getcwd(), '/tart') >= 0
	\ || match(getcwd(), '/innogames') >= 0
	\ || match(getcwd(), '/adjust') >= 0
	set expandtab
endif

" Overrides for vimdiff
if &diff
	syntax off
	set nospell
endif
