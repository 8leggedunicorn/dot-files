set nocp
set expandtab
set backspace=indent,eol,start
set viminfo-=:42 | set viminfo+=:1000
set history=1000
set ruler
set cursorline
set incsearch
"set laststatus=2
"set list listchars=tab:›·,trail:?
set linespace=0
set modeline
set nu

hi SpecialKey ctermfg=DarkGrey

" let g:syntastic_check_on_open = 1
let g:syntastic_aggregate_errors = 1
let g:syntastic_sort_aggregated_errors = 1
let g:syntastic_id_checkers = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_chef_checkers = ['foodcritic']
let g:syntastic_ruby_checkers = ['mri', 'rubocop']
let g:syntastic_python_checkers = ['flake8']

let g:tex_flavor='latex'

" disable for html
"let g:syntastic_mode_map = { 'mode': 'active',
"  \ 'active_filetypes': [],
"  \ 'passive_filetypes': ['html'] }

let g:gitgutter_max_signs=10000

" we need to force this detection first
autocmd BufNewFile,BufRead */cookbooks/*/\(attributes\|definitions\|libraries\|providers\|recipes\|resources\)/*.rb set filetype=ruby.chef
autocmd BufNewFile,BufRead */cookbooks/*/templates/*/*.erb set filetype=eruby.chef
autocmd BufNewFile,BufRead */cookbooks/*/metadata.rb set filetype=ruby.chef
autocmd BufNewFile,BufRead */chef-repo/environments/*.rb set filetype=ruby.chef
autocmd BufNewFile,BufRead */chef-repo/roles/*.rb set filetype=ruby.chef

" auto start vimtree on empty open
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" map nerdtree to ctrl+R
map <C-R> :NERDTreeToggle<CR>
" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set splitbelow
set splitright
" set spell spelllang=en_us

" better split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set wildmode=longest,list
set modeline

"au BufWinLeave * mkview
"au BufWinEnter * silent loadview
au BufNewFile,BufRead *.sls set ft=yaml
filetype plugin on
filetype indent on
set expandtab
set nocompatible
set backspace=indent,eol,start
set ruler
set cursorline
set incsearch
set laststatus=2
"set list listchars=tab:›·,trail:?
set linespace=0
set modeline
set nu
hi SpecialKey ctermfg=DarkGrey

set statusline+=%c
set statusline+=%*
set statusline+=%#warningmsg#
set statusline+=%*
"set statusline+=%{SyntasticStatuslineFlag()}


" if has('gui_running')
"   hi User1 guifg=#eea040 guibg=#222222
"   hi User2 guifg=#dd3333 guibg=#222222
"   hi User3 guifg=#ff66ff guibg=#222222
"   hi User4 guifg=#a0ee40 guibg=#222222
"   hi User5 guifg=#eeee40 guibg=#222222
" else
hi User1 ctermfg=100 ctermbg=240
hi User2 ctermfg=200 ctermbg=240
hi User3 ctermfg=300 ctermbg=340
hi User4 ctermfg=31 ctermbg=240
hi User5 ctermfg=31 ctermbg=240
" endif

set statusline=
set statusline +=%1*\ %n\ %*            "buffer number
set statusline +=%5*%{&ff}%*            "file format
set statusline +=%3*%y%*                "file type
set statusline +=%4*\ %<%F%*            "full path
set statusline +=%2*%m%*                "modified flag
set statusline +=%1*%=%5l%*             "current line
set statusline +=%2*/%L%*               "total lines
set statusline +=%1*%4v\ %*             "virtual column number
set statusline +=%2*0x%04B\ %*          "character under cursor

" let g:syntastic_check_on_open = 1
let g:syntastic_aggregate_errors = 1
let g:syntastic_sort_aggregated_errors = 1
let g:syntastic_id_checkers = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_chef_checkers = ['foodcritic']
let g:syntastic_ruby_checkers = ['mri', 'rubocop']
let g:syntastic_python_checkers = ['flake8']
" disable for html
"let g:syntastic_mode_map = { 'mode': 'active',
"  \ 'active_filetypes': [],
"  \ 'passive_filetypes': ['html'] }

let g:gitgutter_max_signs=10000

" we need to force this detection first
autocmd BufNewFile,BufRead */cookbooks/*/\(attributes\|definitions\|libraries\|providers\|recipes\|resources\)/*.rb set filetype=ruby.chef
autocmd BufNewFile,BufRead */cookbooks/*/templates/*/*.erb set filetype=eruby.chef
autocmd BufNewFile,BufRead */cookbooks/*/metadata.rb set filetype=ruby.chef
autocmd BufNewFile,BufRead */chef-repo/environments/*.rb set filetype=ruby.chef
autocmd BufNewFile,BufRead */chef-repo/roles/*.rb set filetype=ruby.chef

" auto start vimtree on empty open
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" map nerdtree to ctrl+R
map <C-R> :NERDTreeToggle<CR>
" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set splitbelow
set splitright
" set spell spelllang=en_us

" better split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set wildmode=longest,list
set modeline

"au BufWinLeave * mkview
"au BufWinEnter * silent loadview
au BufNewFile,BufRead *.sls set ft=yaml

"make 81st collumn stand out
"set colorcolumn=81,121
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

filetype indent on
filetype on
filetype plugin on
syntax on
autocmd FileType * set tabstop=2|set shiftwidth=2
autocmd FileType c,cpp set noexpandtab|set tabstop=4|set shiftwidth=4
autocmd FileType python,rst set tabstop=4|set shiftwidth=4
autocmd FileType python,rst %s/\s\+$//e
autocmd Filetype gitcommit setlocal spell textwidth=72

"make 81st collumn stand out
"set colorcolumn=81,121
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

hi Normal ctermbg=none

execute pathogen#infect()

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vim-easy-align'

" Group dependencies, vim-snippets depends on ultisnips
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using git URL
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" JavaScript IDE
Plug 'pangloss/vim-javascript'

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }

" Vim Surround
Plug 'https://github.com/tpope/vim-surround.git'

" Vim Latex Suite
Plug 'https://github.com/gerw/vim-latex-suite.git'

" Vim Pandoc
Plug 'https://github.com/vim-pandoc/vim-pandoc.git'

" Vim Pandoc
Plug 'https://github.com/vim-pandoc/vim-pandoc.git'

" Vim Pandoc Syntax
Plug 'https://github.com/vim-pandoc/vim-pandoc-syntax.git'

" Using git URL
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Using Vim-Fugitive
Plug 'https://github.com/tpope/vim-fugitive.git'

" neocomplete
Plug 'git@github.com:Shougo/neocomplete.vim.git'

" https://github.com/junegunn/vim-plug
call plug#end()
colorscheme seoul256

let home=$HOME
iab <expr> dts strftime("%a %b %d, %Y")
set autowrite

"" Split vimrc into atomic parts
"function! SourceMyScripts()
"  let file_list = split(globpath("~/.vim/rc", "*.vim"), '\n')
"
"  for file in file_list
"    execute( 'source '.file )
"  endfor
"endfunction
"
"call SourceMyScripts()
"
set pastetoggle=<F10>
