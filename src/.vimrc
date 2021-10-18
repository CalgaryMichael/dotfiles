filetype plugin indent off

" Configuration file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup

let skip_defaults_vim=1

set nu

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" NERDTree
Plugin 'preservim/nerdtree'
autocmd vimenter * NERDTree
autocmd VimEnter * wincmd p
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeCascadeSingleChildDir=0
let NERDTreeIgnore = ['\.swp$', '__pycache__', 'node_modules', '\.a$', '\.o$', '\.d$', '\.DS_Store$', '\.dSYM$']

" Plugins
Plugin 'joshdick/onedark.vim'
if (has("autocmd") && !has("gui_running"))
  augroup colorset
    autocmd!
    let s:white = { "gui": "#ABB2BF", "cterm": "145", "cterm16" : "7" }
    autocmd ColorScheme * call onedark#set_highlight("Normal", { "fg": s:white }) " `bg` will not be styled since there is no `bg` setting
  augroup END
endif

Plugin 'KarimElghamry/vim-auto-comment'
let g:default_inline_comment = '//'
let g:inline_comment_dict = {
		\'//': ["js", "ts", "cpp", "c", "dart", "go"],
		\'#': ['py', 'sh'],
		\'"': ['vim'],
		\}

" Golang Stuff
Plugin 'fatih/vim-go'
set rtp+=$GOROOT/misc/vim
let g:go_highlight_operators=1
let g:go_highlight_functions=1
let g:go_highlight_function_parameters=1
let g:go_highlight_function_calls=1
let g:go_highlight_types=1
let g:go_highlight_fields=1
let g:go_highlight_variable_declarationss=1
let g:go_highlight_variable_assignments=1

" Javascript Stuff
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'leafgarland/typescript-vim'

" Python Stuff
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'

" Rust + friends
Plugin 'rust-lang/rust.vim'
Plugin 'cespare/vim-toml'

let python_highlight_all=1

call vundle#end()

let g:asmsyntax = 'nasm'

filetype plugin indent on
colorscheme onedark
syntax on
