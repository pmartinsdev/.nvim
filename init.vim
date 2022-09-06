call plug#begin()

" Theme
Plug 'connorholyday/vim-snazzy'

" Appearance
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline-themes'

" Completion / linters / formatters
Plug 'neoclide/coc.nvim', {'branch': 'release'} 
Plug 'ap/vim-css-color'
Plug 'jiangmiao/auto-pairs'

" Utilities
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'sheerun/vim-polyglot'

" GIT
Plug 'airblade/vim-gitgutter'

call plug#end()

" Theme settings
set background=dark
colorscheme snazzy


syntax enable 

" Settings from vim
set mouse+=a "enable mouse into vim window"
set noswapfile "remove the .swap always when you close the vim editor without saving one"
set tabstop=2 "set number of spaces that a <Tab> in the file counts for"
set shiftwidth=2 "set number of spaces to use for each step of (auto)indent."
set softtabstop=2 "set number of spaces that a <Tab> counts for while editing"
set relativenumber number "Shows the relative line number based into cursor"
set t_Co=256 " Enabling 256 color in the terminal" 
set clipboard=unnamedplus "Enables the clopboard between Vim/Neovim and other applications"
set title "Show the file title"
set completeopt "Modifies the auto-complete menu to behave more like an IDE"

" Shortcuts
nnoremap <C-q> :tabclose<CR>

" Coc Settings  ======================================================

" Language server stuff
command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')

" Completion coc
if has('nvim')
	inoremap <silent><expr> <c-space> coc#refresh()
else
	inoremap <silent><expr> <c-@> coc#refresh()
endif

" Shortcuts
nnoremap <silent> K :call <SID>showImplementation()<CR>
nmap <F2> <Plug>(coc-rename)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)


" For Show them doc implementation press letter K
function! s:showImplementation()
	if CocAction('hasProvider', 'hover')
		call CocActionAsync('doHover')
	else
		call feedkeys('K', 'in')
	endif
endfunction

" FZF Settings ======================================================

" shortcuts
nnoremap <silent> <C-p> :Files<CR>
nnoremap <silent> <C-f> :Ag<CR>


" NerdTree Settings =================================================
let NERDTreeShowHidden=1

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
nnoremap <C-b> :NERDTreeToggle<CR>

" Airline Settings ==================================================
let g:airline_theme='sierra'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
