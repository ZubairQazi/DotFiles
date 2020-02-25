if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Vim Plugins to use
call plug#begin()
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/vim-github-dashboard'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree'
Plug 'sheerun/vim-polyglot'
" Plug 'liuchengxu/space-vim-dark'
" Plug 'bluz71/vim-nightfly-guicolors'
" Plug 'flrnd/candid.vim'
Plug 'Yggdroot/indentLine'
Plug 'vim-airline/vim-airline'
Plug 'sainnhe/sonokai'
Plug 'tpope/vim-fugitive'
call plug#end()

" Replace <YOURS> with your GitHub username and password/Personal-Access-Token
let g:github_dashboard = { 'username': 'ZubairQazi', 'password': ' 485ae80af4e34ee00eb94e2116ac7eb4364a0b4e' }
let g:github_dashboard['position'] = 'top'
let g:github_dashboard['open_command'] = 'open'

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

let g:indentLine_char = '|'

" For getting the pointy edges on airline - ZubairQazi
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'

" old vim-powerline symbols
let g:airline_left_sep = '⮀'

autocmd vimenter * NERDTree
let NERDTreeShowHidden=1

syntax on
" for use in tty# when true color isnt available
set termguicolors

let g:sonokai_style = 'andromeda'
let g:sonokai_disable_italic_comment = 1

colorscheme sonokai

let g:airline_theme = 'sonokai'

hi Comment cterm=italic
hi Comment guifg=#5C6370 ctermfg=59
hi LineNr     ctermbg=NONE guibg=NONE
hi SignColumn ctermbg=NONE guibg=NONE

filetype indent plugin on

" Found these online, I forgot where I got them - AnthonyH45
set hidden
set ai
set mouse=a
set incsearch
set confirm
set number
set ignorecase
set smartcase
set wildmenu
set showcmd
set hlsearch
set nomodeline
set backspace=indent,eol,start
set autoindent
set nostartofline
set ruler
set laststatus=2
set shiftwidth=4
set softtabstop=4
set expandtab

" C-J,K,L,H to move between split panes and files
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Toggle NERDTree with C-o
map <C-o> :NERDTreeToggle<CR>

" C-t to make the background cycle between being transparent or not
let t:is_transparent = 0
function! Toggle_transparent()
    if t:is_transparent == 0
        hi Normal guibg=NONE ctermbg=NONE
        let t:is_transparent = 1
    else
        set background=dark
        if t:is_transparent == 1
            let t:is_transparent = 0
        else
            let t:is_trasparent = 1
        endif
    endif
endfunction
nnoremap <C-t> : call Toggle_transparent()<CR>
