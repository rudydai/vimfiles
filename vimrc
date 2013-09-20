"""for navigating around a file"""
nmap j gj
nmap k gk

"""navigating between buffers"""
nmap <C-n> :bnext<CR>
nmap <C-p> :bprev<CR>

"""navigating between tabs"""
nmap <F2> :tabp<CR>
nmap <F3> :tabn<CR>

"""searches"""
set incsearch
set ignorecase
set smartcase
set hlsearch
nmap \q :nohlsearch<CR>

"""tabbing"""
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set cindent

"""changing formatting styles"""
nmap \t :set expandtab tabstop=4 shiftwidth=4 softtabstop=4<CR>
nmap \T :set expandtab tabstop=8 shiftwidth=8 softtabstop=4<CR>
nmap \M :set noexpandtab tabstop=8 softtabstop=4 shiftwidth=4<CR>
nmap \m :set expandtab tabstop=2 shiftwidth=2 softtabstop=2<CR>
nmap \w :setlocal wrap!<CR>:setlocal wrap?<CR>

"""misc"""
set mouse=a
set magic
syntax on
filetype on
filetype plugin indent on

"""addons"""
"""folding"""
set foldmethod=indent
set foldlevel=99
"""window splits"""
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
"""todo list"""
map <leader>td <Plug>TaskList
"""tabcomplete"""
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"

call pathogen#infect()

" Add the virtualenv's site-packages to vim path
py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF

