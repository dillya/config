" Plugin manager
execute pathogen#infect()

" Set to 256 colors
set t_Co=256

" Presentation
"  - Enable color syntax
"  - Enable line number
syntax on
set number

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
