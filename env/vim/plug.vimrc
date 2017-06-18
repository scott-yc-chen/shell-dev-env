" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

"
" My settings
"

" status bar
"Plug 'Lokaltog/vim-powerline'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" side bar
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" window
Plug 'maciej-ka/ZoomWin'

" editconfig
Plug 'editorconfig/editorconfig-vim'

" navgation/search
Plug 'scrooloose/nerdtree'
"Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" code tracer
Plug 'vim-scripts/cscope_macros.vim'
Plug 'vim-scripts/autoload_cscope.vim'

" editing"
Plug 'Townk/vim-autoclose'
"Plug 'ntpeters/vim-better-whitespace'

" JSON 
Plug 'elzr/vim-json'

" file rename
Plug 'vim-scripts/Rename2'

" JavaScript
Plug 'othree/es.next.syntax.vim'
Plug 'pangloss/vim-javascript'

" LaTex 
Plug 'vim-latex/vim-latex'


" Unmanaged plugin (manually installed and updated)


" Initialize plugin system
call plug#end()