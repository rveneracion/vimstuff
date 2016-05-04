"execute pathogen#infect()
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
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'msanders/snipmate.vim'
Plugin 'SirVer/ultisnips'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'davidhalter/jedi-vim'
Plugin 'jnurmine/Zenburn'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'kien/ctrlp.vim'
Plugin 'jonathanfilip/vim-lucius'
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
set number
set cursorline
set noswapfile
set hidden
set laststatus=2
set ignorecase
set smartcase
set ts=4 sts=4 sw=4 expandtab
syntax on

    "*******************
    "        
	"CUSTOM KEY MAPPINGS
    "
	"*******************
"map Space and Shift-Space to jump forward and backward in the text
    nnoremap <Space> <C-f>
    nnoremap <S-Space> <C-b>
    nnoremap <Backspace> <C-b>
    vnoremap <Space> <C-f>
    vnoremap <S-Space> <C-b>
    vnoremap <Backspace> <C-b>

"maps Ctrl-n to open/close the NERDTree file explorer (try it now!)
    map <C-n> :NERDTreeToggle<cr>

"maps Ctrl-Leftarrow/Rightarrow to cycle through open buffers
    noremap <C-Right> :bn<cr>
    noremap <C-Left> :bp<cr>

"maps the arrow keys to jump to different split windows
    noremap <Up> <C-w>k
    noremap <Down> <C-w>j
    noremap <Left> <C-w>h
    noremap <Right> <C-w>l

"maps Ctrl-F5 to :make for compiling code
    map <C-F5> :make<cr>

"maps F12 to open vimrc
    map <F12> :execute OpenVimRC()<cr>

" colors and stuff
set t_Co=256
      
let solarized_termcolors=256
colorscheme zenburn
autocmd filetype cpp execute Cpp()
autocmd filetype python execute Python()
autocmd filetype c execute C()


