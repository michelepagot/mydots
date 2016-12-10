set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=%VIM%/vimfiles/bundle/Vundle.vim/

""" call plug#begin('%VIM%/vimfiles/plugged')
call vundle#begin('%VIM%/vimfiles/bundle/')


" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
" Plugin 'rking/ag.vim'

" To check terminal color capability
" Plugin 'guns/xterm-color-table.vim'
  
Plugin 'junegunn/seoul256.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
""" call plug#end()

filetype plugin indent on    " required

syntax on

" Numbering
set nu

function! NumberToggle()
  :echom "NT..."&rnu "..."&nu
  if &nu == 1
   set rnu
   set nu!
  elseif &rnu == 1
   set rnu!
  else
   set nu
  endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>

" autocmd InsertEnter * :set number
" autocmd InsertLeave * :set relativenumber

if has('win32') && !has('gui_running') && !empty($CONEMUBUILD)
" if !has("gui_running")
  set termencoding=utf8
  set term=xterm
  set t_Co=256
  let &t_AB="\e[48;5;%dm"
  let &t_AF="\e[38;5;%dm"

  inoremap <Char-0x07F> <BS>
  nnoremap <Char-0x07F> <BS>
  "  colorscheme zenburn
  " Unified color scheme (default: dark)
  colo seoul256
  " Light color scheme
  "   colo seoul256-light
  " Switch
  "   set background=dark
  "   set background=light  
endif

"
"  set encoding "explanation: http://stackoverflow.com/a/5795441/453396
if has("multi_byte")
"  if &termencoding == ""
"    let &termencoding = &encoding
"  endif
  set encoding=utf-8    " better default than latin1
  setglobal fileencoding=utf-8           " change default file encoding when writing new files
endif

" To display the status line always
set laststatus=2

" Shortcut to rapidly toggle `set list`
nmap <C-l> :set list!<CR>

" Use the same symbols as TextMate for tabstops and EOLs
" "set listchars=tab:»\ ,eol:¬
set listchars=trail:·,precedes:«,extends:»,eol:¬,tab:»\ 

"automatic reloading of vimrc
augroup reloadConfigFile
  autocmd!
  autocmd BufWritePost vimrc source %
augroup END

