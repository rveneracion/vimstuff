"***********VUNDLE STUFF************
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"""""""""""""""""""""""""""""""""""""""
"  Tim Pope awesomeness
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-unimpaired'
"""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""
"  Snippets and syntax
"Plugin 'msanders/snipmate.vim'
Plugin 'honza/vim-snippets'
Plugin 'SirVer/ultisnips'
Plugin 'w0rp/ale'
"""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""
"  File access
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
"""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""
"  Programming tools
Plugin 'davidhalter/jedi-vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Omnisharp/omnisharp-vim'
"""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""
"  color schemes
Plugin 'jonathanfilip/vim-lucius'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'AlessandroYorba/Alduin'
Plugin 'nanotech/jellybeans.vim'
"""""""""""""""""""""""""""""""""""""""
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"**********END VUNDLE**************
source ~/.vimrc_functions
source ~/.vimrc_omnisharp

set number                      "shows line numbers
set relativenumber              "shows line number distance relative to cursor 
set cursorline                  "shows which line is current
set noswapfile                  "prevents annoying .swp files
set hidden                      "allows multiple buffers
set laststatus=2                "shows status bar
set ignorecase                  "ignores case for searches
set smartcase                   "pays attention to uppercase when used in searches
set ts=4 sts=4 sw=4 expandtab   "tab settings
syntax on                       "syntax highlighting

    "*******************
    "        
	"CUSTOM KEY MAPPINGS
    "
	"*******************

"map kj to <esc> in INSERT mode
    inoremap kj <esc>

"maps Ctrl-n to open/close the NERDTree file explorer (try it now!)
    map <C-n> :NERDTreeToggle<cr>

"maps H and R (shift-h, shift-r) to cycle through open buffers
    noremap L :bn<cr>
    noremap H :bp<cr>

"maps the arrow keys to jump to different split windows
    noremap <Up> <C-w>k
    noremap <Down> <C-w>j
    noremap <Left> <C-w>h
    noremap <Right> <C-w>l

"maps Ctrl-M (control-shift-m) to :make for compiling code
    map <C-M> :make<cr>

"maps F12 to open vimrc
    map <F12> :execute OpenVimRC()<cr>
    
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsJumpOrExpandTrigger = "<tab>"

" colors and stuff
"set t_Co=256
      
colorscheme zenburn
"colorscheme lucius
let g:airline_powerline_fonts=1
let g:snippets_dir='/home/richard/.vim/bundle/vim-snippets/snippets'

"automatically perform functions when
"opening files with certain file extensions.
"the functions are located in ~/.vimrc_functions
autocmd filetype cpp execute Cpp()
autocmd filetype python execute Python()
autocmd filetype c execute C()
autocmd filetype java execute Java()
autocmd filetype js execute Javascript()
autocmd filetype rb execute Ruby()

" enable dot repeat for surround plugin
silent! call repeat#set("\<Plug>surround", v:count)
