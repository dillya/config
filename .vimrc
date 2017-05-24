" Plugin manager
execute pathogen#infect()

" Enable mouse
set mouse=a

" Set to 256 colors
set t_Co=256

" Set background to ligth (dark by default on Stretch)
set background=light

" Display status bar at launch
set laststatus=2

" Presentation
"  - Enable color syntax
"  - Enable line number
syntax on
set number

" Diff colorscheme
"  - Use green for Add
"  - Use red for Delete
"  - Use green for Change
"  - Use dark highlight for change part
highlight DiffAdd    cterm=bold ctermfg=10 ctermbg=236 gui=none guifg=bg guibg=Red
highlight DiffDelete cterm=bold ctermfg=9  ctermbg=236 gui=none guifg=bg guibg=Red
highlight DiffChange cterm=bold ctermfg=10 ctermbg=236 gui=none guifg=bg guibg=Red
highlight DiffText   cterm=bold ctermfg=10 ctermbg=233 gui=none guifg=bg guibg=Red

" Search
"  - Enable highlighting search
"  - Ignore case when search
set hlsearch
set ignorecase

" Add tabs and trailing spaces
set list
set listchars=tab:>-,trail:- 

" Set a column bar to 80 characters
set colorcolumn=80
highlight ColorColumn ctermbg=darkgrey

" Extend column bar to 999 characters after
"let &colorcolumn=join(range(81,999),",")

" Customize airline
"  - Enable smarter tab line
"  - Disable whispace checking
"  - Enable powerline fonts
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#whitespace#enabled = 0
let g:airline_powerline_fonts = 1

" Map some functions
"  - F2: Toggle NERDTree
"  - F3: Toggle Tagbar
noremap <F2> :NERDTreeToggle <CR>
noremap <F3> :TagbarToggle <CR>

