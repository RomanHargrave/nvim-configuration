" execute pathogen#infect()

" dein.vim load
if &compatible
   set nocompatible
endif

set runtimepath+=$HOME/.config/nvim/dein/repos/github.com/Shougo/dein.vim

if dein#load_state($HOME . '/.config/nvim/dein')
   call dein#begin($HOME . '/.config/nvim/dein')
   call dein#add($HOME . '/.config/nvim/dein/repos/github.com/Shougo/dein.vim')

   call dein#add('morhetz/gruvbox')
   call dein#add('vim-scripts/Align')
   call dein#add('vim-scripts/bbcode')
   call dein#add('vim-scripts/drawit')
   call dein#add('vim-scripts/Vimball')
   call dein#add('lilydjwg/colorizer')
   call dein#add('ctrlpvim/ctrlp.vim')
   call dein#add('ciaranm/detectindent')
   call dein#add('RomanHargrave/doomsday.vim')
   call dein#add('RomanHargrave/krakatau.vim')
   call dein#add('mattn/gist-vim')
   call dein#add('beyondmarc/glsl.vim')
   call dein#add('jkerian/HiCursorWords')
   call dein#add('PotatoesMaster/i3-vim-syntax')
   call dein#add('udalov/kotlin-vim')
   call dein#add('stfl/meson.vim')
   call dein#add('tomasr/molokai')
   call dein#add('kassio/neoterm')
   call dein#add('scrooloose/nerdtree')
   call dein#add('Zabanaa/neuromancer.vim')
   call dein#add('chr4/nginx.vim')
   call dein#add('luochen1990/rainbow')
   call dein#add('rust-lang/rust.vim')
   call dein#add('keith/swift.vim')
   call dein#add('godlygeek/tabular')
   call dein#add('majutsushi/tagbar')
   call dein#add('tomtom/tcomment_vim')
   call dein#add('leafgarland/typescript-vim')
   call dein#add('sirver/ultisnips')
   call dein#add('Shougo/unite.vim')
   call dein#add('Shougo/deoplete.nvim')
   call dein#add('tpope/vim-abolish')
   call dein#add('vim-airline/vim-airline')
   call dein#add('flazz/vim-colorschemes')
   call dein#add('xolox/vim-colorscheme-switcher')
   call dein#add('rhysd/vim-crystal')
   call dein#add('ryanoasis/vim-devicons')
   call dein#add('easymotion/vim-easymotion')
   call dein#add('agude/vim-eldar')
   call dein#add('dag/vim-fish')
   call dein#add('whatyouhide/vim-gotham')
   call dein#add('tpope/vim-fugitive')
   call dein#add('tfnico/vim-gradle')
   call dein#add('neapel/vim-java-bytecode')
   call dein#add('freeo/vim-kalisi')
   call dein#add('embear/vim-localvimrc')
   call dein#add('xolox/vim-misc')
   call dein#add('bluz71/vim-moonfly-colors')
   call dein#add('terryma/vim-multiple-cursors')
   call dein#add('kana/vim-operator-user')
   call dein#add('Shougo/vimproc.vim')
   call dein#add('digitaltoad/vim-pug')
   call dein#add('jremmen/vim-ripgrep')
   call dein#add('derekwyatt/vim-scala')
   call dein#add('xolox/vim-session')
   call dein#add('Firef0x/vim-smali')
   call dein#add('s3rvac/vim-syntax-retdecdsm')
   call dein#add('dhruvasagar/vim-table-mode')
   call dein#add('hashivim/vim-terraform')
   call dein#add('reedes/vim-wordy')
   call dein#add('actionshrimp/vim-xpath')
   call dein#add('dim13/xedit.vim')
   call dein#add('rdnetto/YCM-Generator')
   call dein#add('cstrahan/vim-capnp')
   call dein#add('isruslan/vim-es6')
   call dein#add('pangloss/vim-javascript')
   call dein#add('mxw/vim-jsx')

   call dein#end()
   call dein#save_state()
endif

if dein#check_install()
   call dein#install()
endif

syntax on
filetype plugin indent on

set clipboard+=unnamedplus
set splitright
set smarttab expandtab shiftwidth=3 tabstop=3 softtabstop=3
set foldmethod=marker

set listchars=tab:>\ ,trail:-  list

" Shut the fuck up
let g:session_autoload = 'no'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" completion settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:deoplete#enable_at_startup        = 1
" let g:deoplete#disable_auto_complete    = 0

if !exists('g:deoplete#omni#input_patterns')
    let g:deoplete#omni#input_patterns  = {}
endif

let g:deoplete#sources#clang#libclang_path = '/usr/lib/llvm-3.8/lib/libclang-3.8.so.1'
let g:deoplete#sources#clang#clang_header  = '/usr/lib/llvm-3.8/lib/clang/3.8.1/include'

let g:dutyl_dontHandleFormat = 1
let g:dutyl_dontHandleIndent = 1

" neocompletecate settings
" let g:neocompletecache_enable_at_startup = 1
" let g:neocompletecache_enable_smart_case = 1
" inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
" inoremap <expr><C-l> neocomplcache#complete_common_string()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Movement 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Get off my fucking lawn
silent! iunmap <C-i>
silent! iunmap <C-j>
silent! iunmap <C-e>
silent! iunmap <C-l>

"imap <C-i> <C-o>k LOL FUCK OLDSCHOOL TERMINALS


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" tagbar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:tagbar_autoclose = 0
let g:tagbar_type_d = {
    \ 'ctagstype': 'd',
    \ 'ctagsbin':  'dscanner',
    \ 'ctagsargs': ['--ctags'],
    \ 'kinds': [
        \ 'c:classes:1:1',
        \ 'f:functions:1:1',
        \ 'T:template:1:1',
        \ 'g:enums:1:1',
        \ 'e:enumerators:0:0',
        \ 'u:unions:1:1',
        \ 's:structs:1:1',
        \ 'v:variables:1:0',
        \ 'i:interfaces:1:1',
        \ 'm:members',
        \ 'a:alias'
    \ ],
    \ 'sro': '.',
    \ 'kind2scope': {
        \ 'c': 'class',
        \ 'g': 'enum',
        \ 's': 'struct',
        \ 'u': 'union',
        \ 'T': 'template'
    \ },
    \ 'scope2kind': {
        \ 'enum':       'g',
        \ 'class':      'c',
        \ 'struct':     's',
        \ 'union':      'u',
        \ 'template':   'T'
    \ }
\ }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" parentheses, etc...
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" appearance
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if empty($SSH_TTY)
    set termguicolors 
endif

let g:gruvbox_italic         = 1
let g:gruvbox_contrast_dark  = 'hard'
let g:gruvbox_contrast_light = 'hard'

set background=dark

colorscheme eldar

let g:airline_powerline_fonts = 1

if (&ft != 'krakatau')
   let g:rainbow_active = 1
   " let g:rainbow_conf.guifgs = [""]
   " let g:rainbow_conf.ctermfgs = [""]
endif

set relativenumber number

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" filetype & autos
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

au InsertLeave,CompleteDone   *           if pumvisible() == 0  | pclose | endif
au BufRead,BufNewFile         *.load      setfiletype fish
au BufRead,BufNewFile         *.xui       setfiletype xml
au BufRead,BufNewFile         *.ts        setfiletype javascript

augroup nvim_term
   au!
   " au BufRead,BufNewFile   term://* setlocal number! relativenumber! list
   au TermOpen             *        setlocal number! relativenumber! list
augroup END

augroup coffee
    au!
    au BufRead,BufNewFile *.cson       set ft=coffee
    au FileType coffee                 list shiftwidth=2
augroup END

augroup make
   au!
   au FileType make     set nosmarttab noexpandtab
augroup END

augroup krakatau
   au!
   au BufRead,BufNewFile *.j set ft=krakatau
   au FileType krakatau let g:rainbow_active=0
augroup END

" augroup pencil
" 	autocmd!
" 	autocmd FileType markdown,md	call pencil#init()
" 	autocmd FileType text		call pencil#init()
" augroup END

" assorted key bindings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <Leader>g  :TagbarToggle<CR>
nmap <Leader>q  :QFix<CR>
map <C-c>       :NERDTreeFocus<CR>
map <A-c>       :NERDTreeToggle<CR>
map <Leader>m   :Neomake<CR>

" zC should do the opposite of zc. reaching for zo to reverse zc is nonsense
nmap zC zo

" Save emacs-style
imap <C-s> <C-o>:w<CR>
nmap <C-s> :w<CR>

nmap b<Left>  :blast<CR>
nmap b<Right> :bnext<CR>
nmap g<Left>  :tabnext<CR>
nmap g<Right> :tablast<CR>

nmap U :redo<CR>

" support for minimak12
" H stays the same
nnoremap n j
nnoremap e k
nnoremap o l

nnoremap H <Home>
nnoremap N G
nnoremap E gg
nnoremap O <End>

" Split management
nnoremap <C-w>N <C-w>J
nnoremap <C-w>E <C-w>K
nnoremap <C-w>O <C-w>L

nnoremap <C-w>n <C-w>j
nnoremap <C-w>e <C-w>k
nnoremap <C-w>o <C-w>l

" use arrow keys in remap because normal mode has different cursor rules
inoremap <A-h> <Left>
inoremap <A-n> <Down>
inoremap <A-e> <Up>
inoremap <A-o> <Right>

inoremap <A-H> <C-Left>
inoremap <A-O> <C-Right>

" some replacement is needed for /n/ext result
nnoremap , n

" Change multicursor keys
let g:multi_cursor_use_default_mapping = 0
let g:multi_cursor_start_word_key      = '<C-j>'
let g:multi_cursor_select_all_word_key = '<A-j>'
let g:multi_cursor_start_key           = 'g<C-j>'
let g:multi_cursor_select_all_key      = 'g<A-j>'
let g:multi_cursor_next_key            = '<C-j>'
let g:multi_cursor_prev_key            = '<C-b>'
let g:multi_cursor_skip_key            = '<C-m>'
let g:multi_cursor_quit_key            = '<Esc>'

" Make terminal less obnoxious
tmap <Esc><Esc> <C-\><C-n>

let g:localvimrc_persistent=1
let g:localvimrc_persistence_file=$HOME . "/.config/nvim/localvimrc_persistence_file"

set modelineexpr
