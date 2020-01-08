""" Optixal's Neovim Init.vim
"""Sources: https://codeyarns.com/2011/07/29/vim-chart-of-color-names/

""" Vim-Plug
call plug#begin()

" Aesthetics - Main
"Plug 'dracula/vim'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
"Plug 'tomasr/molokai'

" Plug 'ryanoasis/vim-devicons'
"Plug 'junegunn/goyo.vim'
"Plug 'junegunn/limelight.vim'
"Plug 'junegunn/seoul256.vim'
"Plug 'junegunn/vim-journal'
"Plug 'junegunn/rainbow_parentheses.vim'
"Plug 'nightsense/forgotten'
"Plug 'zaki/zazen'

" Aethetics - Additional
"Plug 'nightsense/nemo'
"Plug 'yuttie/hydrangea-vim'
"Plug 'chriskempson/tomorrow-theme', { 'rtp': 'vim' }
"Plug 'rhysd/vim-color-spring-night'
"Plug 'drewtempelmeyer/palenight.vim'

" Functionalities
Plug 'tpope/vim-fugitive'
"Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
"Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
"Plug 'ervandew/supertab'
Plug 'jiangmiao/auto-pairs'
"Plug 'junegunn/vim-easy-align'
"Plug 'alvan/vim-closetag'
"Plug 'tpope/vim-abolish'
"Plug 'Yggdroot/indentLine'
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"Plug 'junegunn/fzf.vim'
Plug 'sheerun/vim-polyglot'
"Plug 'chrisbra/Colorizer'
"Plug 'heavenshell/vim-pydocstring'
"Plug 'vim-scripts/loremipsum'
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'
"Plug 'metakirby5/codi.vim'

" Entertainment
"Plug 'ryanss/vim-hackernews'

" Kelly
"Plug 'owickstrom/vim-colors-paramount' "simple
"Plug 'klen/python-mode'                                     "has a problem with 'pylint key' w/o this libs. this works fine
"
"Plug 'python-mode/python-mode', { 'branch': 'develop' }    "has a problem with 'pylint key' w/o this libs. this works fine
"
"Plug 'tmhedberg/SimplyFold'
"Plug 'nightsense/stellarized'
"Plug 'RussellBradley/vim-nets-away'
"Plug 'vim-scripts/less.vim'  " for css color
Plug 'ayu-theme/ayu-vim' 
Plug 'easymotion/vim-easymotion'
"Plug 'rakr/vim-one'
Plug 'xolox/vim-notes'
Plug 'xolox/vim-misc'
"Plug 'tomasiser/vim-code-dark'
"Plug 'dunstontc/vim-vscode-theme'
"Plug 'machakann/vim-highlightedyank'

Plug 'severin-lemaignan/vim-minimap'
"Plug 'mipmip/vim-minimap'
Plug 'mattn/emmet-vim'
Plug 'mileszs/ack.vim'
"Plug 'rking/ag.vim'
Plug 'airblade/vim-gitgutter'

"Plug 'w0rp/ale'
Plug 'dense-analysis/ale'

Plug 'kien/ctrlp.vim'

Plug 'cocopon/iceberg.vim'
"Plug 'integralist/vim-mypy'  " NOT PROPERLY WORKING
"Plug 'vim-syntastic/syntastic'
"Plug 'neomake/neomake'

"Plug 'andreasvc/vim-256noir'
"Plug 'endel/vim-github-colorscheme'
Plug 'whatyouhide/vim-gotham'
Plug 'smallwat3r/vim-hashpunk-sw'

Plug 'xdg/vim-darkluma'


call plug#end()

""" Python3 VirtualEnv
"let g:python3_host_prog = expand('~/.config/nvim/env/bin/python')
let g:python3_host_prog = expand('/usr/bin/python3')
let g:python_host_prog = expand('//usr/bin/python2')

""" Coloring
syntax on
set termguicolors
"color ayu "nets-away "paramount - simple|good molokai ayu|NICE-last
colorscheme ayu "darkluma==dark  "hashpunk-sw=green-dark "gotham=ok "github && 257_noir->masakit sa mata "nets-away "paramount - simple|good molokai ayu|NICE-last
set background=dark
let ayucolor="mirage" "mirage, light and dark

highlight Pmenu guibg=white guifg=black gui=bold
highlight Comment gui=bold
highlight Normal gui=none
highlight NonText guibg=none


" Opaque Background (Comment out to use terminal's profile)
"set termguicolors

" Transparent Background (For i3 and compton)
"highlight Normal guibg=NONE ctermbg=NONE
"highlight LineNr guibg=NONE ctermbg=NONE

""" Other Configurations
filetype plugin indent on
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab autoindent
set incsearch ignorecase smartcase hlsearch
set ruler laststatus=2 showcmd showmode
set list listchars=trail:»,tab:»-
set fillchars+=vert:\
set wrap breakindent
set encoding=utf-8
set number
set title

""" Plugin Configurations

" NERDTree
let NERDTreeShowHidden=1
let g:NERDTreeDirArrowExpandable = '↠'
let g:NERDTreeDirArrowCollapsible = '↡'

" Airline
let g:airline_powerline_fonts = 1
let g:airline_section_z = ' %{strftime("%-I:%M %p")}'
let g:airline_section_warning = ''
"let g:airline#extensions#tabline#enabled = 1

" Neovim :Terminal
tmap <Esc> <C-\><C-n>
tmap <C-w> <Esc><C-w>
"tmap <C-d> <Esc>:q<CR>
autocmd BufWinEnter,WinEnter term://* startinsert
autocmd BufLeave term://* stopinsert

" Deoplete
let g:deoplete#enable_at_startup = 1
" Disable documentation window
set completeopt-=preview

" Supertab
let g:SuperTabDefaultCompletionType = "<C-n>"

" Ultisnips
let g:UltiSnipsExpandTrigger="<C-Space>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<C-x>"

" EasyAlign
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" indentLine
let g:indentLine_char = '▏'
let g:indentLine_color_gui = '#363949'

" TagBar
let g:tagbar_width = 30
let g:tagbar_iconchars = ['↠', '↡']

" fzf-vim
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'Type'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Character'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

""" Filetype-Specific Configurations

" HTML, XML, Jinja
autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType xml setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType htmldjango setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType htmldjango inoremap {{ {{  }}<left><left><left>
autocmd FileType htmldjango inoremap {% {%  %}<left><left><left>
autocmd FileType htmldjango inoremap {# {#  #}<left><left><left>

" Markdown and Journal
autocmd FileType markdown setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType journal setlocal shiftwidth=2 tabstop=2 softtabstop=2

""" Custom Functions

" Trim Whitespaces
function! TrimWhitespace()
    let l:save = winsaveview()
    %s/\\\@<!\s\+$//e
    call winrestview(l:save)
endfunction

" Dracula Mode (Dark)
function! ColorDracula()
    let g:airline_theme=''
    color dracula
    IndentLinesEnable
endfunction

" Seoul256 Mode (Dark & Light)
function! ColorSeoul256()
    let g:airline_theme='silver'
    color seoul256
    IndentLinesDisable
endfunction

" Forgotten Mode (Light)
function! ColorForgotten()
    " Light airline themes: tomorrow, silver, alduin
    " Light colors: forgotten-light, nemo-light
    let g:airline_theme='tomorrow'
    color forgotten-light
    IndentLinesDisable
endfunction

" Zazen Mode (Black & White)
function! ColorZazen()
    let g:airline_theme='badcat'
    color zazen
    IndentLinesEnable
endfunction

""" Custom Mappings

let mapleader=","
nmap <leader>q :NERDTreeToggle<CR>:NERDTreeMirror<CR>
nmap \ <leader>q
nmap <leader>w :TagbarToggle<CR>
nmap <leader>ee :Colors<CR>
nmap <leader>ea :AirlineTheme
nmap <leader>e1 :call ColorDracula()<CR>
nmap <leader>e2 :call ColorSeoul256()<CR>
nmap <leader>e3 :call ColorForgotten()<CR>
nmap <leader>e4 :call ColorZazen()<CR>
nmap <leader>R :so ~/.config/nvim/init.vim<CR>
nmap <leader>t :call TrimWhitespace()<CR>
xmap <leader>a gaip*
nmap <leader>a gaip*
nmap <leader>s <C-w>s<C-w>j:terminal<CR>
nmap <leader>vs <C-w>v<C-w>l:terminal<CR>
"nmap <leader>d <Plug>(pydocstring)
nmap <leader>d :Gdiff<CR>
nmap <leader>f :Files<CR>
nmap <leader>g :Goyo<CR>
nmap <leader>h :RainbowParentheses!!<CR>
nmap <leader>j :set filetype=journal<CR>
nmap <leader>k :ColorToggle<CR>
nmap <leader>l :Limelight!!<CR>
xmap <leader>l :Limelight!!<CR>
autocmd FileType python nmap <leader>x :0,$!~/.config/nvim/env/bin/python -m yapf<CR>
"nmap <leader>n :HackerNews best<CR>J
nmap <silent> <leader><leader> :noh<CR>
nmap <Tab> :bnext<CR>
nmap <S-Tab> :bprevious<CR>



"KELLY ADDED

" bind Ctrl+<movement> keys to move around the windows, instead of using Ctrl+w + <movement>
" Every unnecessary keystroke that can be saved is good for your health :)
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h


" easier moving of code blocks
" Try to go into visual mode (v), thenselect several lines of code here and
" then press ``>`` several times.
vnoremap < <gv " better indentation
vnoremap > >gv " better indentation

"REMAP MOVEMENTS
" execute "set <M-j>=\ej"
map <M-j> }
" execute "set <M-k>=\ek"
map <M-k> {
" execute "set <M-a>=\ea"
map <M-a> $
" execute "set <M-i>=\ei"
map <M-i> ^
"
"DELETE FORWARD   "ls
inoremap <C-l> <Esc>la<C-h>

"SAVE <C-c>
inoremap <C-c> <Esc>:w<CR>
nmap <C-c> <Esc>:w<CR>

"COPY PASTE
"vmap <C-c> "+y

"HIGHLIGHTS AND SEARCH
vmap <C-m> y<Esc>/<C-r><C-w><CR>N
nmap <C-m> /<C-r><C-w><CR>N
" execute "set <M-m>=\em"
nmap <M-m> :noh<CR>
imap <M-a> <Esc>A
imap <M-o> <Esc>o

"INSERT -> Got to next word
inoremap <M-w> <esc>lli

"SPACE ON NORMAL MODE
nmap <Space> i<Space><Esc>l

set encoding=UTF-8

" use mouse in vim
set mouse=a " on OSX press ALT and click

" easier moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

map tj <esc>:tabprevious<CR>
map tk <esc>:tabnext<CR>


"setlocal foldmethod=indent
"autocmd FileType c setlocal foldmethod=syntax
set foldmethod=indent   
set foldnestmax=10
"set nofoldenable
set foldlevel=2
set foldlevelstart=0 "99 open all tabs when start


filetype plugin on


"EASY-MOTION
map  f <Plug>(easymotion-bd-f)
nmap f <Plug>(easymotion-overwin-f)

"NVIM
" :CheckHealth


nmap <C-q> :q<CR>
"nmap <C-Q> :qall<CR>


" Copy-paste from clipboard
" map p "*p
" copy and paste
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa

imap <C-V> <Esc>"*p


" SET YANK INTO CLIPBOARD
set clipboard=unnamedplus

" not working
noremap <C>q <Leader>ci

" SET LINE NUMBER
"set relativenumber
set nu


"COPY PASTE
vnoremap <C-c> <ESC>:w<CR>

"NOTES
"let g:notes_directories = ['~/.personal.documents/vim-notes', ''] "not writable

set directory=~/.vim/tmp
set directory=~/.vim-swap


let g:highlightedyank_highlight_duration = 200


"NerdTree
let NERDTreeIgnore = ['\.pyc$']


" ACK.vim
"NOT RECURSIVE
nmap <leader>a :Ack -n --ignore-dir=env --ignore-dir=migrations  --python ""<Left>
"RECURSIVE
nmap <leader>A :Ack --ignore-dir=env --ignore-dir=migrations  --python ""<Left>

"ack  --ignore-dir=env --ignore-dir=migrations  --python "elapsed"


" easier moving between tabs
map tj <esc>:tabprevious<CR>
map tk <esc>:tabnext<CR>
map th <esc>:tabfirst<CR>
map tl <esc>:tablast<CR>


"MAP CHANGE COMMAND TO PREVENT FROM REGISTER DELETED CHAR/S
"(https://stackoverflow.com/questions/11993851/how-to-delete-not-cut-in-vim)
nnoremap c "_c
vnoremap c "_c
nnoremap C "_C
vnoremap C "_C

xnoremap p "_dP
xnoremap P "_dp

"vnoremap p c<C-V>

"nnoremap d "_d
"vnoremap d "_d
"nnoremap D "_D
"vnoremap D "_D
"nmap X vyvd

"EDIT .vimrc this file #ERROR on tabprevious
nmap <Leader>evi :tabe ~/.config/nvim/init.vim<CR>
"cmap evi vsplit 

"Git Gutter
set updatetime=100

"FIND CURRENT OPEN FILE IN NERDTREE (cursor must be in opened file)
nmap ,n :NERDTreeFind<CR>


"VIM COLORS
"highlight SignColumn guibg=darkgrey

" GET PWD of CURRENT OPENED FILE
" :echo resolve(expand('%:p'))

"JSON FORMATTER
function Json()
  :execute '%!python -m json.tool' | w  
endfunction


" ----- Worp/ale
"let g:ale_sign_column_always = 1
"let g:airline#extensions#ale#enabled = 1
"let g:ale_echo_msg_format = '%linter%: %s'
"let g:ale_linters = {'python': ['flake8', 'pylint', 'mypy'], 'php': ['php', 'phpcs', 'phpmod']}
"let g:ale_python_flake8_executable = 'python -m flake8'
"let g:ale_python_pylint_executable = 'python -m pylint --load-plugins pylint_django'
"let g:ale_python_mypy_executable = 'python3 -m mypy'
"let g:ale_python_auto_pipenv = 0
""" Write this in your vimrc file
"let g:ale_lint_on_text_changed = 'normal'  " 'never'
"let g:ale_lint_on_insert_leave = 1
""" You can disable this option too
""" if you don't want linters to run on opening a file
"let g:ale_lint_on_enter = 1


" ----- PYMODE
"let g:pymode_python = 'python3'
"let g:pymode_warnings = 1
"let g:pymode_lint = 1
"let g:pymode_trim_whitespaces = 0    "0 Disable,1 Enable Auto trim causes problem with files tracked by git"
"let g:pymode_lint_checkers = ['pyflakes', 'pep8', 'mccabe', 'mypy']
"let g:pymode_options_max_line_length = 70


"SPLITBAR IN PANES
set fillchars+=vert:\Ξ
hi LineNr guibg=bg
hi VertSplit guibg=bg guifg=gray15  "tomato4
hi StatusLine guibg=bg guifg=SeaGreen
"hi VertSplit guibg=bg guifg=pink3  "tomato4
"hi VertSplit guibg=bg guifg=#5C6773
"hi VertSplit guibg=bg guifg=red


"Search Text on Highlightened Text WORKS
"Useful for `cgn` command then paste the one in buffer
vmap <Leader>s "yy<ESC>/<C-r>y<CR>N

"CTRL-P
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/env/*,*.pyc     " MacOSX/Linux

"Count text
nmap <Leader>c :%s///gn<Left><Left><Left><Left>

"Set italic on comments
highlight Comment cterm=italic gui=italic


let g:ale_python_mypy_executable = '/usr/local/bin/mypy'
"let g:neomake_python_enabled_makers = ['pep8', 'pylint',  'mypy']
"let g:ale_linters = {'python': ['flake8', 'mypy', 'pylint'],}

let g:ale_linters = {'python': ['flake8', 'pylint']}
let g:ale_python_mypy_executable = 'mypy'
let g:ale_python_mypy_change_directory = 1

                                                                                                                                                                          
" THIS WORKS FOR `MyPy`
    "let g:syntastic_check_on_open = 1
    let g:syntastic_python_checkers = ['mypy']  
    let g:syntastic_python_pylint_post_args="--max-line-length=70"
    let g:syntastic_aggregate_errors=1

set colorcolumn=81 


" Move Tab's Position
    map t9 :tabm 0 <CR>
    map t0 :tabm <CR>
    map t- :tabm -1<CR>
    map t= :tabm +1<CR>
