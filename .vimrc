set autoindent
set tabstop=4
set expandtab
set shiftwidth=4
set showmatch
set number
set clipboard=unnamed,autoselect
set cmdheight=2

set fileencodings=ucs-bom,utf-8,iso-2022-jp,cp932,euc-jp,default,latin
set backspace=indent,eol,start

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

" vim-clojure-static (the most new version)
NeoBundle 'gnus/vim-clojure-static'

" rainbow-parentheses.vim
NeoBundle 'kien/rainbow_parentheses.vim'
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au syntax * RainbowParenthesesLoadSquare

" vim-fireplace
NeoBundle 'tpope/vim-fireplace'

" vim-classpath
NeoBundle 'tpope/vim-classpath'

" im_control.vim
" NeoBundle 'fuenor/im_control.vim'
" 以下のスクリプトは
" https://sites.google.com/site/fudist/Home/vim-nihongo-ban/vim-japanese/ime-control/ibus#TOC-IBus-Python-1.5
" よりほぼ引用

" 日本語入力固定モードの動作モード
" let IM_CtrlMode = 1
" 日本語入力固定モード切り替えキー
" inoremap <silent> <C-j> <C-r>=IMState('FixMode')<CR>
" function! IMCtrl(cmd)
"    let cmd = a:cmd
"    if cmd == 'On'
"        let res = system('ibus engine "mozc-jp"')
"    elseif cmd == 'Off'
"        let res = system('ibus engine "xkb:jp::jpn"')
"    endif
"    return ''
"endfunction
" <ESC>押し下し後のIM切り替え開始までの反応が遅い場合は
" ttimeoutlenを短く設定する
" IMCtrl()のSystem()コマンド実行時に&をつけても体感速度が上がる
"set timeout timeoutlen=3000 ttimeoutlen=10

" ここまでの間に書く
call neobundle#end()

" Required:
filetype plugin indent on

" 未インストールのプラグインがあると, インストールするか尋ねてくる
" NeoBundleCheck

"-------------------------
" End Neobundle Settings.
"-------------------------

au filetype lisp let b:AutoClosePairs = AutoClose#DefaultPairsModified("", "` '")
au filetype lisp set tabstop=2 shiftwidth=2

au filetype clojure let b:AutoClosePairs = AutoClose#DefaultPairsModified("", "` '")
au filetype clojure set tabstop=2 shiftwidth=2

au filetype ruby set tabstop=2 shiftwidth=2
au BufNewFile,BufRead *.erb set tabstop=2 shiftwidth=2
au BufNewFile,BufRead *.yml set tabstop=2 shiftwidth=2

syntax on
