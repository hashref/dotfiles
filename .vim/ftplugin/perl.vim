if exists("b:did_ftplugin")
    finish
endif

let b:did_ftplugin = 1
let maplocalleader="&"

setlocal autoindent
setlocal smartindent
setlocal showmatch
setlocal autowrite
setlocal tabstop=2|set shiftwidth=2|set expandtab|set softtabstop=2

" for commnetary plugin
setlocal commentstring=#\ %s

let perl_fold = 1
let perl_nofold_packages = 1
let perl_no_scope_in_variables = 3
let perl_no_extended_vars = 1

let g:perldoc_split_modifier = '100v'

if filereadable(expand("~/.vim/compiler/perlcritic.vim"))
  compiler perlcritic
  if !exists("no_plugin_maps")
    map <LocalLeader>c :make<CR>
  endif
else
  setlocal makeprg=perl\ -c\ %\ $*
  setlocal errorformat=%f:%l:%m
endif

if !exists("no_plugin_maps")
  map <LocalLeader>t :%!perltidy -q<CR>
endif

map <LocalLeader>r :execute "!perl " . expand('%:p')<CR>

autocmd Syntax perl,t normal zR
