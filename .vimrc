set autoindent
set tabstop=4
set shiftwidth=4
set showmatch
set number

set fileencodings=ucs-bom,utf-8,iso-2022-jp,cp932,euc-jp,default,latin

set guifont=Ubuntu\ Mono\ 12

set t_Co=256
"---------------------------
" Start Neobundle Settings.
"---------------------------
" bundleで管理するディレクトリを指定
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'

" プラグインの追加を行う場所

" nyan-modoki
NeoBundle 'drillbits/nyan-modoki.vim'
set laststatus=2
set statusline=%F%m%r%h%w[%{&ff}]%=%{g:NyanModoki()}(%l,%c)[%P]
let g:nyan_modoki_select_cat_face_number=2
let g:nyan_modoki_animatin_enabled=1

" autoclose
NeoBundle 'Townk/vim-autoclose'

" quickrun
NeoBundle 'thinca/vim-quickrun'

" NERDTree
NeoBundle 'scrooloose/nerdtree'

" vim-scala
NeoBundle 'derekwyatt/vim-scala'

" Solarized
NeoBundle 'altercation/vim-colors-solarized'
let g:solarized_termcolors=16
let g:solarized_termtrans=1
let g:solarized_degrade=0
let g:solarized_bold=1
let g:solarized_underline=1
let g:solarized_italic=1
let g:solarized_contrast='normal'
let g:solarized_visibility='normal'
syntax enable
colorscheme solarized
set background=dark

" vim-clojure-static (the most new version)
" NeoBundle 'gnus/vim-clojure-static'

" rainbow-parentheses.vim
NeoBundle 'kien/rainbow_parentheses.vim'
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au syntax * RainbowParenthesesLoadSquare

" vim-fireplace
NeoBundle 'tpope/vim-fireplace'

" vim-classpath
NeoBundle 'tpope/vim-classpath'

" ここまでの間に書く
call neobundle#end()

" Required:
filetype plugin indent on

" 未インストールのプラグインがあると, インストールするか尋ねてくる
NeoBundleCheck

"-------------------------
" End Neobundle Settings.
"-------------------------
