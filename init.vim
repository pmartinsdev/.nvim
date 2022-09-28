call plug#begin()

" Theme
Plug 'connorholyday/vim-snazzy'

" Appearance
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline-themes'
Plug 'kyazdani42/nvim-web-devicons'

" Completion / linters / formatters
Plug 'neoclide/coc.nvim', {'branch': 'release'} 
Plug 'ap/vim-css-color'
Plug 'jiangmiao/auto-pairs'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

" Utilities
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'sheerun/vim-polyglot'

" File Tree
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

" GIT
Plug 'airblade/vim-gitgutter'
Plug 'sindrets/diffview.nvim'

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
set clipboard=unnamedplus "Enables the clopboard between Vim/Neovim and other applications"
set title "Show the file title"
set completeopt "Modifies the auto-complete menu to behave more like an IDE"

" Shortcuts
nnoremap <C-q> :tabclose<CR>

" Blocking the arrow keys 
map <up> :echoerr "Why are you doing this ??? use letter 'k'"<CR>
map <down> :echoerr "Why are you doing this ??? use letter 'j'"<CR>
map <left> :echoerr "Why are you doing this ??? use letter 'h'"<CR>
map <right> :echoerr "Why are you doing this ??? use letter 'l'"<CR>

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

" Telescope Settings ======================================================

" shortcuts

nnoremap <silent> <C-p> :Telescope find_files prompt_prefix=🔍:   <CR>
nnoremap <silent> <C-f> :Telescope live_grep prompt_prefix=🔍:  <CR>

" NerdTree Settings =================================================
let NERDTreeShowHidden=1

let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeWinSize=60
nnoremap <silent> <C-b> :call <SID>toggleNerdTree() <CR>

" Check if NerdTree is oppened
function IsNerdTreeOppened()
    return exists('t:NERDTreeBufName') && bufwinnr(t:NERDTreeBufName) != -1
endfunction

" Toggle NerdTree Open and close 
function! s:toggleNerdTree()
	if IsNerdTreeOppened()
		:NERDTreeToggle
	else
		:NERDTreeFind
	endif
endfunction

" Airline Settings ==================================================
let g:airline_theme='sierra'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1


let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" NerdCommenter Settings =====================================================

"shortcuts

:map <C-c> <plug>NERDCommenterToggle

" DiffView Settings ======================================================

" shortcuts

nnoremap <silent> <C-g><C-f> :DiffviewOpen <CR>
nnoremap <silent> <C-g><C-f><C-f> :DiffviewClose <CR>
