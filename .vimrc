syntax on
set number

call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mattn/emmet-vim'
call plug#end()

function Setup()
PlugInstall
CocInstall coc-tsserver
CocInstall coc-css
endfunction
