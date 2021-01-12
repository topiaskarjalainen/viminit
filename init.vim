call plug#begin('~/.vim/plugged')

Plug 'sirver/ultisnips'
Plug 'lervag/vimtex'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'honza/vim-snippets'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'preservim/nerdtree'

"Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

Plug 'wolfgangmehner/awk-support'

Plug 'deoplete-plugins/deoplete-jedi'


call plug#end()

let g:mkdp_browser = 'firefox'
let g:mkdp_auto_start = 0


colorscheme gruvbox
let g:airline_theme='angr'

let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
"set conceallevel=1
"let g:tex_conceal='abdmg'


let g:vimtex_compiler_progname = 'nvr'


call deoplete#custom#var('omni', 'input_patterns', {                                                                                                                                                             
          \ 'tex': g:vimtex#re#deoplete                                                                                                                                                                            
          \})

let g:deoplete#enable_at_startup = 1


let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

"""" Latex ssnippets
let g:UltiSnipsSnippetDirectories=["UltiSnips", "mysnips"]

set number
set mouse=a














