""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vimrc for new hires
"   * Created based on https://dougblack.io/words/a-good-vimrc.html
"   * Created based on @ashu's vimrc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Colors
syntax enable           " enable syntax processing

" UI Config
set number              "  show line numbers
set showcmd             " show command in ottom bar
set cursorline          " highlight current line
filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set showmatch           " highlight matching [{()}]

" GUI Interaction
set ttymouse=xterm2
set mouse=a

" Searching
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set ignorecase          " ignore case when searching

" History
set history=1000        " Lengthen history
set undolevels=1000     " Lengthen undo history

" Git commit messages
au FileType gitcommit set tw=72

"Meraki Ruby White Space Rules
set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2

"Makefile exception
autocmd FileType make setlocal noexpandtab tabstop=4 shiftwidth=4 softtabstop=4

"Automatic indentation
set autoindent
"Insert(paste) mode toggle for exception from autoindent
set pastetoggle=<F2>

"capfile has ruby syntax
au BufNewFile,BufRead capfile set filetype=ruby

"Highlight useless whitespace at the end of line
highlight WhiteSpaceEOL ctermbg=red guibg=red
match WhiteSpaceEOL /\s\+\%#\@!$/

"Pathogen
"execute pathogen#infect()

"Syntastic with VIM
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_args = '--rulesdir ~/MY/RULES/DIR/FILE'
let g:syntastic_javascript_eslint_exec = './node_modules/.bin/eslint'

let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩 '

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

nnoremap <Leader>R :exe "echo Hello, bound to R key!"

set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2
