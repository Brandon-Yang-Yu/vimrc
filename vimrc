" ==============================================================================
" PLUGIN MANAGEMENT (vim-plug)
" ==============================================================================

call plug#begin()

" Syntax highlighting and language support
Plug 'sheerun/vim-polyglot'        " Enhanced syntax highlighting for many languages

" File searching and navigation
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }  " Fuzzy file finder

" Rust development
Plug 'timonv/vim-cargo'            " Cargo integration for Rust

" Git integration
Plug 'tpope/vim-fugitive'          " Git wrapper for vim

call plug#end()

" ==============================================================================
" BASIC VIM SETTINGS
" ==============================================================================

" Indentation settings
set expandtab                      " Use spaces instead of tabs
set tabstop=4                      " Number of spaces that a <Tab> in the file counts for
set shiftwidth=4                   " Number of spaces to use for each step of autoindent
set softtabstop=4                  " Number of spaces that a <Tab> counts for while editing
inoremap <Tab> <Space><Space><Space><Space>  " Insert 4 spaces when Tab is pressed

" Search settings
set hlsearch                       " Highlight all search matches
set ignorecase                     " Case-insensitive search
set incsearch                      " Show search matches as you type

" User interface settings
set laststatus=2                   " Always show status line
set ruler                          " Show cursor position in status line
set wildmenu                       " Enhanced command-line completion
set cursorline                     " Highlight current line
set number                         " Show line numbers
set relativenumber                 " Show relative line numbers
set showcmd                        " Show command in bottom bar

" Additional performance settings
set scrolljump=5                   " Jump 5 lines when scrolling off screen
set sidescroll=1                   " Smooth horizontal scrolling
set updatetime=300                 " Faster completion and diagnostics
set timeoutlen=500                 " Faster key sequence timeout

" Code folding settings
set foldmethod=indent              " Fold based on indentation
set foldnestmax=3                  " Maximum fold nesting level

" General settings
set history=1000                   " Remember more commands and search history
set encoding=utf-8                 " Set default encoding

" Performance optimizations for syntax highlighting
set synmaxcol=200                  " Limit syntax highlighting to 200 columns for performance
set ttyfast                        " Fast terminal connection for smoother rendering
set lazyredraw                     " Don't redraw while executing macros (performance)
syntax enable                      " Enable syntax highlighting
filetype plugin indent on         " Enable file type detection, plugins, and indentation

" Reduce regex engine overhead for better performance
set regexpengine=1                 " Use old regex engine for better performance

" Theme
colorscheme molokai                " Set color scheme

" Project-specific path
set path+=/Users/yy/Project/UNP/unpv13e/**  " Add UNP project to search path

" ==============================================================================
" FILE TYPE SPECIFIC SETTINGS
" ==============================================================================

" Python files
au FileType python
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=80 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

" Web development files (JavaScript, HTML, CSS)
au FileType javascript,html,css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2

" Highlight trailing whitespace for Python and C files
au FileType python,c,cpp match BadWhitespace /\s\+$/

" ==============================================================================
" KEY MAPPINGS
" ==============================================================================

" Delete to void register (doesn't overwrite clipboard)
nnoremap <leader>d "_d

" FZF file finder
nnoremap <leader>ff :FZF<CR>

" Git integration
nnoremap <leader>gg :Git<CR>

" Open terminal
nnoremap <leader>tt :term<CR>
