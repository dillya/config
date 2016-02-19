execute pathogen#infect()
syntax on

"set background=dark
set t_Co=256 " 256 colors in terminal

set list
set listchars=tab:>-,trail:- 
set colorcolumn=80
let &colorcolumn=join(range(81,999),",")
highlight ColorColumn ctermbg=0
"highlight SpecialKey term=standout ctermbg=darkgrey guibg=darkgrey
