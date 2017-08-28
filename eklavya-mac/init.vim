
set number

" These settings are for the mathematica plugin
"let g:mma_candy=1
"let g:mma_candy=2


let g:python_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3.5'
let g:deoplete#enable_at_startup = 1


" Setting up stuff for themes

"colorscheme gruvbox
"set background=dark
colorscheme onedark
"colorscheme monokai
"colorscheme kalisi
"set background=dark


if has('syntax') && !exists('g:syntax_on')
  syntax enable
endif






"dein Scripts-----------------------------



" Required:
set runtimepath+=/Users/eklavya/.random/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/eklavya/.random')
  call dein#begin('/Users/eklavya/.random')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/eklavya/.random/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
"  call dein#add('Shougo/neosnippet.vim')
"  call dein#add('Shougo/neosnippet-snippets')

"call dein#add('derekwyatt/vim-scala')
"call dein#add('Shougo/deoplete.nvim')

  " You can specify revision/branch/tag.
"  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------

" @@@@@@@@@@@@@@@@@@@@@@@@

"set ttimeout
"set ttimeoutlen=100

" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif


"if !&scrolloff
"  set scrolloff=1
"endif

"if !&sidescrolloff
"  set sidescrolloff=5
"endif


tnoremap fd <C-\><C-n>



"set termguicolors

if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif

if v:version > 703 || v:version == 703 && has("patch541")
  set formatoptions+=j " Delete comment character when joining commented lines
endif

if has('path_extra')
  setglobal tags-=./tags tags-=./tags; tags^=./tags;
endif


" Allow color schemes to do bright colors without forcing bold.
if &t_Co == 8 && $TERM !~# '^linux\|^Eterm'
  set t_Co=16
endif

" Load matchit.vim, but only if the user hasn't installed a newer version.
if !exists('g:loaded_matchit') && findfile('plugin/matchit.vim', &rtp) ==# ''
  runtime! macros/matchit.vim
endif

"inoremap <C-U> <C-G>u<C-U>

inoremap fd <esc>
" Install and use spacevim



"let &t_SI = "\<Esc>]50;CursorShape=1\x7"


let mapleader = "\<Space>"


"call plug#begin()

"Plug 'toyamarinyon/vim-swift'
"Plug 'keith/swift.vim'
"Plug 'elixir-lang/vim-elixir'
"Plug 'reasonml/vim-reason-loader'
"Plug 'blindFS/vim-taskwarrior'
"Plug 'reasonml/vim-reason-loader'
"Plug 'neovimhaskell/haskell-vim'
"Plug 'fatih/vim-go'
"Plug 'rust-lang/rust.vim'
"Plug 'kovisoft/slimv'
"Plug 'OmniSharp/omnisharp-vim'
"Plug 'jaxbot/browserlink.vim'
"Plug 'rdolgushin/groovy.vim'
"Plug 'wincent/command-t'
"Plug 'moll/vim-node'
"Plug 'honza/vim-snippets'
"Plug 'SirVer/ultisnips'
"Plug 'ternjs/tern_for_vim'
"Plug 'Rip-Rip/clang_complete'
"Plug 'amoffat/snake'
"Plug 'severin-lemaignan/vim-minimap'
"Plug 'mrtazz/simplenote.vim'
"Plug 'fmoralesc/vim-pad'
"Plug 'tbabej/taskwiki'
"Plug 'vim-syntastic/syntastic'
"Plug 'airblade/vim-gitgutter'
"Plug 'Shougo/unite.vim'
"Plug 'FredKSchott/CoVim'
"Plug 'plasticboy/vim-markdown'
"Plug 'suan/vim-instant-markdown'
"Plug 'tpope/vim-commentary'
"Plug 'tpope/vim-unimpaired'
"Plug 'mattn/gist-vim'
"Plug 'jiangmiao/auto-pairs'
"Plug 'fholgado/minibufexpl.vim'
"Plug 'shougo/vimproc.vim'
"Plug 'rizzatti/dash.vim'
"Plug 'myusuf3/numbers.vim'
"Plug 'gregsexton/gitv'
"Plug 'mbbill/undotree'
"Plug 'kshenoy/vim-signature'
"Plug 'spolu/dwm.vim'
"Plug 'kana/vim-textobj-user'
"Plug 'tpope/vim-endwise'
"Plug 'AndrewRadev/splitjoin.vim'
"Plug 'thinca/vim-quickrun'
"Plug 'google/vim-maktaba'
"Plug 'wikitopian/hardmode'
"Plug 'mhinz/vim-grepper'
"Plug 'tommcdo/vim-exchange'
"Plug 'reedes/vim-wordy'
"Plug 'gcmt/wildfire.vim'
"Plug 'chrisbra/NrrwRgn'


" install athame for shell


"Plug 'ensime/ensime-vim'
"Plug 'tpope/vim-classpath'
"Plug 'tpope/vim-eunuch'
"Plug 'reedes/vim-pencil'
"Plug 'ntpeters/vim-better-whitespace'
"Plug 'metakirby5/codi.vim'
"Plug 'ryanss/vim-hackernews'
"Plug 'junegunn/goyo.vim'
"Plug 'mhinz/vim-startify'
"Plug 'daveyarwood/vim-alda'
"Plug 'JuliaLang/julia-vim'
"Plug 'neovim/node-host'
"Plug 'flazz/vim-colorschemes'
"Plug 'tpope/vim-speeddating'
"Plug 'radenling/vim-dispatch-neovim'
"Plug 'https://github.com/tpope/vim-fireplace'
"Plug 'https://github.com/snoe/nvim-parinfer.js'
"Plug 'guns/vim-clojure-static'
"Plug 'junegunn/rainbow_parentheses.vim'
"Plug 'guns/vim-clojure-highlight'
"Plug 'tpope/vim-sexp-mappings-for-regular-people'
"Plug 'guns/vim-sexp'
"Plug 'tpope/vim-repeat'
"Plug 'kassio/neoterm'
"Plug 'https://github.com/Shougo/neocomplete.vim'
"Plug 'terryma/vim-multiple-cursors'
"Plug 'scrooloose/nerdtree'
"Plug 'tpope/vim-fugitive'
"Plug 'mileszs/ack.vim'
"Plug 'tpope/vim-abolish'
"Plug 'vim-scripts/Align'
"Plug 'terryma/vim-expand-region'
"Plug 'nathanaelkane/vim-indent-guides'
"Plug 'scrooloose/nerdcommenter'
"Plug 'justinmk/vim-sneak'
"Plug 'tpope/vim-surround'
"Plug 'sjl/gundo.vim'
"Plug 'godlygeek/tabular'
"Plug 'wellle/targets.vim'
"Plug 'maxbrunsfeld/vim-yankstack'
"Plug 'vim-airline/vim-airline'
"Plug 'mhinz/vim-signify'
"Plug 'jceb/vim-orgmode'
"Plug 'easymotion/vim-easymotion'
"Plug 'ervandew/supertab'
"Plug 'majutsushi/tagbar'
"Plug 'rsmenon/vim-mathematica'
"Plug 'petRUShka/vim-sage'
"Plug 'editorconfig/editorconfig-vim'
"Plug 'ensime/ensime-vim'
"call plug#end()







