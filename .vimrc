syntax on
set number

call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

function SetupPlug()
PlugInstall
endfunction

function SetupCoc()
CocInstall coc-tsserver
endfunction
