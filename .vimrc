set number
set relativenumber

autocmd FileType markdown noremap <C-b> :w <bar> !pandoc % -o %:r.pdf --template eisvogel && pkill -HUP mupdf<Enter><Enter>

" plugin stuff
call plug#begin('~/.vim/plugged')

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1
autocmd FileType tex call deoplete#custom#option('auto_complete', v:false)

Plug 'lervag/vimtex'
let g:vimtex_quickfix_mode=0
set conceallevel=3
"let g:tex_conceal='abdmg'
let g:vimtex_view_method = 'zathura'

Plug 'sirver/ultisnips'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsSnippetDirectories = [$HOME.'/.vim/custom_snippets']

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts = 1


Plug '907th/vim-auto-save'
let g:auto_save = 1
let g:auto_save_events = ["InsertLeave"]

call plug#end()


filetype indent plugin on
syntax on

" setlocal spell
" set spelllang=it,en_gb
" inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
