execute pathogen#infect()
syntax on
set enc=utf-8
set smartindent
set tabstop=4
set shiftwidth=4
set cinoptions=(0
set expandtab
set ruler
set history=100000
set colorcolumn=80
set hlsearch
set spell spelllang=en
hi clear SpellBad
hi SpellBad cterm=undercurl ctermfg=red

autocmd FileType c,cpp,erb,sql,sh,py autocmd BufWritePre * :%s/\s\+$//e
autocmd FileType xhtml,html,sgml,xml setlocal colorcolumn=0

if match(getcwd(), "/postgresql") >= 0
    set noexpandtab
endif
