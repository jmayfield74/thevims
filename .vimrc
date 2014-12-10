set encoding=utf-8 
set termencoding=utf-8

" pathogen
call pathogen#infect()

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'vim-scripts/tComment'
Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/vimproc'
Bundle 'SirVer/UltiSnips'
Bundle 'honza/vim-snippets'
Bundle 'jimenezrick/vimerl'
Bundle 'scrooloose/syntastic'
Bundle 'airblade/vim-gitgutter'
Bundle 'vim-scripts/Lucius'
Bundle 'thisivan/vim-bufexplorer'
Bundle 'ervandew/supertab'
Bundle 'tpope/vim-abolish'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'altercation/vim-colors-solarized'
Bundle 'bling/vim-airline'
Bundle 'Shougo/unite.vim'
Bundle 'majutsushi/tagbar'
Bundle 'nosami/Omnisharp'
Bundle 'tpope/vim-dispatch'
Bundle 'AndrewRadev/linediff.vim'
Bundle 'edkolev/promptline'
Bundle 'elzr/vim-json'
Bundle 'mbbill/undotree'
Bundle 'wellle/targets.vim'
Bundle 'rking/ag.vim'
Bundle 'groenewege/vim-less'
Bundle 'edkolev/erlang-motions.vim'
Bundle 'justinmk/vim-sneak'
Bundle 'dag/vim2hs'
Bundle 'eagletmt/neco-ghc'
Bundle 'eagletmt/ghcmod-vim'
Bundle 'itchyny/landscape.vim'
Bundle 'xolox/vim-notes'
Bundle 'xolox/vim-misc'
Bundle 'Lokaltog/vim-distinguished'
Bundle 'hcs42/vim-erlang-tags'
Bundle 'jtratner/vim-flavored-markdown'
Bundle 'tpope/vim-markdown'
Bundle 'elixir-lang/vim-elixir'
Bundle 'carlosgaldino/elixir-snippets'
Bundle 'kovisoft/slimv'
Bundle 'mattn/gist-vim'
Bundle 'mattn/webapi-vim'
Bundle 'lervag/vim-latex'
Bundle 'Raimondi/delimitMate'
Bundle 'jeetsukumaran/vim-nefertiti'
Bundle 'greyblake/vim-preview'
Bundle 'haya14busa/incsearch.vim'
Bundle 'nice/sweater'
Bundle 'malithsen/trello-vim'
Bundle 'https://github.com/freeo/vim-kalisi'
Bundle 'guns/vim-clojure-static'
Bundle 'sjl/badwolf'
Bundle 'Valloric/YouCompleteMe'
Bundle 'vimwiki/vimwiki'
Bundle 'kongo2002/fsharp-vim'
Bundle 'hsanson/vim-android'

" vim conf
set nocompatible
set mouse=a
syntax on
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set softtabstop=4
set autoindent
set number
set relativenumber
set cul

set textwidth=80
" set colorcolumn=+1

set hlsearch!
nnoremap <F3> :set hlsearch!<CR>

nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

autocmd BufRead,BufNewFile *.md setlocal spell
autocmd BufRead,BufNewFile *.tex setlocal spell
autocmd BufRead,BufNewFile *.txt setlocal spell

let g:acp_enableAtStartup = 0
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplcache#smart_close_popup() . "\<CR>"
endfunction

inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()

" improved incsearch
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

nnoremap <Esc><Esc> :<C-u>nohlsearch<CR> 

set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

" omnicomplete
filetype plugin on
set ofu=syntaxcomplete#Complete

" ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim
let ctrlp_custom_ignore = '\.git$\|\.pyc$\|\.beam$\|\.swp$|doc$'

let g:ctrlp_use_caching = 0

" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
" if executable('ag')
  " Use Ag over Grep
set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
" endif


" look-n-feel
set t_Co=256
let &t_AB="\e[48;5;%dm"
let &t_AF="\e[38;5;%dm"
" let g:solarized_termcolors=256
" let g:solarized_termtrans=1
syntax enable
" set background=light
set background=dark

" colorscheme badwolf
colorscheme kalisi
" colorscheme sweater
" colorscheme greyhouse
" colorscheme lucius
" let g:zenburn_alternate_Visual = 1
let g:zenburn_high_Contrast=1
" colorscheme zenburn
" colorscheme distinguished
" colorscheme solarized
" colorscheme xoria256
" colorscheme grb256
" colorscheme landscape
" set guifont=Menlo\ for\ Powerline\ 11
set guifont=Source\ Code\ Pro\ for\ Powerline\ Medium\ 12
let g:Powerline_symbols = 'fancy'
" LuciusLight
" LuciusBlack

" line number inversion
nmap <C-N><C-N> :set invnumber<CR>

" comma as leader key
let mapleader = "\<Space>"

" Save file
nnoremap <Leader>w :w<CR>

" searchy
map ,# :s/^/#/<CR>

" Scrollbars
set sidescrolloff=2
set numberwidth=4
 
 
" Windows
set equalalways " Multiple windows, when created, are equal in size
set splitbelow splitright
 
 
" Cursor highlights
set cursorline
"set cursorcolumn
 
 
" Searching 
set hlsearch " highlight search
set incsearch " incremental search, search as you type
" set ignorecase " Ignore case when searching
set ignorecase smartcase " Ignore case when searching lowercase
 
 
 
" Status Line 
set showcmd
set ruler " Show ruler
"set ch=2 " Make command line two lines high
 
 
" Line Wrapping
set nowrap
set linebreak " Wrap at word

" Inser New Line
map <S-Enter> O<ESC> " inserts new line without going into insert mode
map <Enter> o<ESC>

" fugative
set laststatus=2
set statusline+=%{exists('g:loaded_fugitive')?fugitive#statusline():''}

" ack
let g:ackprg="ack-grep -H --nocolor --nogroup --column"

" resize vertical split window
nmap <M-Up> <C-W>-<C-W>-
nmap <M-Down> <C-W>+<C-W>+
" resize horzontal split window
nmap <M-Left> <C-W>><C-W>>
nmap <M-Right> <C-W><<C-W><

" remaps
imap jj <Esc>
imap ,a @

map <leader><Tab> :bn<cr>
map <leader>` :bp<cr>

" let g:lightline = {
"       \ 'colorscheme': 'wombat',
"       \ 'mode_map': { 'c': 'NORMAL' },
"       \ 'active': {
"       \   'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'filename' ] ]
"       \ },
"       \ 'component_function': {
"       \   'modified': 'MyModified',
"       \   'readonly': 'MyReadonly',
"       \   'fugitive': 'MyFugitive',
"       \   'filename': 'MyFilename',
"       \   'fileformat': 'MyFileformat',
"       \   'filetype': 'MyFiletype',
"       \   'fileencoding': 'MyFileencoding',
"       \   'mode': 'MyMode',
"       \ },
"       \ 'separator': { 'left': '⮀', 'right': '⮂' },
"       \ 'subseparator': { 'left': '⮁', 'right': '⮃' }
"       \ }
" 
" function! MyModified()
"   return &ft =~ 'help\|vimfiler\|gundo' ? '' : &modified ? '+' : &modifiable ? '' : '-'
" endfunction
" 
" function! MyReadonly()
"   return &ft !~? 'help\|vimfiler\|gundo' && &ro ? '⭤' : ''
" endfunction
" 
" function! MyFilename()
"   return ('' != MyReadonly() ? MyReadonly() . ' ' : '') .
"         \ (&ft == 'vimfiler' ? vimfiler#get_status_string() : 
"         \  &ft == 'unite' ? unite#get_status_string() : 
"         \  &ft == 'vimshell' ? substitute(b:vimshell.current_dir,expand('~'),'~','') : 
"         \ '' != expand('%t') ? expand('%t') : '[No Name]') .
"         \ ('' != MyModified() ? ' ' . MyModified() : '')
" endfunction
" 
" function! MyFugitive()
"   return &ft !~? 'vimfiler\|gundo' && exists('*fugitive#head') && strlen(fugitive#head()) ? '⭠ '.fugitive#head() : ''
" endfunction
" 
" function! MyFileformat()
"   return winwidth('.') > 70 ? &fileformat : ''
" endfunction
" 
" function! MyFiletype()
"   return winwidth('.') > 70 ? (strlen(&filetype) ? &filetype : 'no ft') : ''
" endfunction
" 
" function! MyFileencoding()
"   return winwidth('.') > 70 ? (strlen(&fenc) ? &fenc : &enc) : ''
" endfunction
" 
" function! MyMode()
"   return winwidth('.') > 60 ? lightline#mode() : ''
" endfunction
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
" let g:airline_theme = "badwolf"
let g:airline_theme = "kalisi"
" let g:airline_theme = "lucius"
" let g:airline_theme = "molokai"
" let g:airline_theme = "zenburn"

nmap <F8> :TagbarToggle<CR>

" nmap <F5> :LuciusBlack<CR>
" nmap <F6> :LuciusLight<CR>

nmap <F5> :set background=dark<CR>
nmap <F6> :set background=light<CR>

map <leader>u :UndotreeToggle<cr>

:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar

nnoremap <space>ga :Git add %:p<CR><CR>
nnoremap <space>gs :Gstatus<CR>
nnoremap <space>gc :Gcommit -v -q<CR>
nnoremap <space>gt :Gcommit -v -q %:p<CR>
nnoremap <space>gd :Gdiff<CR>
nnoremap <space>ge :Gedit<CR>
nnoremap <space>gr :Gread<CR>
nnoremap <space>gw :Gwrite<CR><CR>
nnoremap <space>gl :silent! Glog<CR>:bot copen<CR>
nnoremap <space>gp :Ggrep<Space>
nnoremap <space>gm :Gmove<Space>
nnoremap <space>gb :Git branch<Space>
nnoremap <space>go :Git checkout<Space>
nnoremap <space>gps :Dispatch! git push<CR>
nnoremap <space>gpl :Dispatch! git pull<CR>

map <leader>eu :! ./rebar eunit skip_deps=true suites=%:t:r<cr>

let g:ghcmod_open_quickfix_function = 'GhcModQuickFix'
function! GhcModQuickFix()
    :CtrlPQuickfix
endfunction

let g:haskell_conceal_wide = 1

 let g:ctrlp_extensions = ['quickfix']

 set clipboard=unnamedplus

let g:promptline_preset = 'full'

let g:gist_clip_command = 'xclip -selection clipboard'
let g:gist_detect_filetype = 1
let g:gist_post_private = 1

map <leader>b :CtrlPBuffer<cr>
map <leader>q :CtrlPQuickfix<cr>

function! g:UltiSnips_Complete()
    call UltiSnips#ExpandSnippet()
    if g:ulti_expand_res == 0
        if pumvisible()
            return "\<C-n>"
        else
            call UltiSnips#JumpForwards()
            if g:ulti_jump_forwards_res == 0
               return "\<TAB>"
            endif
        endif
    endif
    return ""
endfunction

au BufEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsListSnippets="<c-e>"
" this mapping Enter key to <C-y> to chose the current highlight item 
" and close the selection list, same as other IDEs.
" CONFLICT with some plugins like tpope/Endwise
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

set rtp+=/usr/local/share/ocamlmerlin/vim
let g:android_sdk_path="./Downloads/adt-bundle-linux-x86_64-20140702/sdk"
