call plug#begin()

Plug 'nvim-lua/plenary.nvim'
Plug 'ThePrimeagen/harpoon'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sensible'
" Plug 'sheerun/vim-polyglot'
Plug 'vim-scripts/DoxygenToolkit.vim'
Plug 'rose-pine/neovim'
Plug 'SirVer/ultisnips'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'github/copilot.vim'

call plug#end()

" plugin config
let g:UltiSnipsSnippetDirectories=["UltiSnips", "snips"]
let g:UltiSnipsExpandTrigger='<tab>'
let g:UltiSnipsJumpForwardTrigger='<c-j>'
let g:UltiSnipsJumpBackwardTrigger='<c-k>'
lua require('config')

" general
color rose-pine
hi Normal guibg=NONE ctermbg=NONE
set wildoptions-=pum
" set number relativenumber
set noerrorbells
set sw=4
set tabstop=4
set path+=**
set wildignore+=comma,separated,list,of,file,patterns
set splitright
set linebreak
set si
" set spell

" gui
set guifont=ZedMono\ Nerd\ Font:h10
if has("gui_running")
	:cd /win/Users/dumbo/code
endif

" remaps
let mapleader = " "
nmap <leader>e :E<CR>
nmap <leader>c :!cat % \| wl-copy <CR>
nmap <leader>t :sp\|te <CR>
:command RT set tabstop=4 shiftwidth=4 expandtab | retab
nmap <c-n> :bn<CR>
nmap <c-p> :bp<CR>
map j gj
map k gk
nmap <leader>d :Dox<CR>
nmap <leader>h :lua require("harpoon.ui").toggle_quick_menu()<CR>
nmap <leader>a :lua require("harpoon.mark").add_file()<CR>
nmap <F1> :lua require("harpoon.ui").nav_file(1) <CR>
nmap <F2> :lua require("harpoon.ui").nav_file(2) <CR>
nmap <F3> :lua require("harpoon.ui").nav_file(3) <CR>
nmap <F4> :lua require("harpoon.ui").nav_file(4) <CR>
nmap <F5> :lua require("harpoon.ui").nav_file(5) <CR>
nmap <F6> :lua require("harpoon.ui").nav_file(6) <CR>
nmap <F7> :lua require("harpoon.ui").nav_file(7) <CR>
nmap <F8> :lua require("harpoon.ui").nav_file(8) <CR>
nmap <F9> :lua require("harpoon.ui").nav_file(9) <CR>
autocmd BufWritePre * :%s/\s\+$//e
tnoremap <Esc> <C-\><C-n>
