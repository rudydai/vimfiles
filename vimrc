
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

"""addons"""
execute pathogen#infect()
