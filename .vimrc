" -e ~/.vimrc && -e ~/.gvimrc
" Taylor J. Meek, 2013-

" ========
" VUNDLE
"
" Brief help
" :PluginList       - lists configured plugins

" =========
" toggl.vim
"
" Start task
" :TogglStart task name +project @tag1 @tag2
" F7 in Normal: current line as argument
" F7 in Visual: current selection as argument
"
" Stop current task
" :TogglStop
" =========
let g:toggl_api_token = "c25ba84de23791d95728bdc91f8eedc1"
let g:toggl_workspace_id = 892630
func! GetSelectedText()
  normal gv"xy
  let result = getreg("x")
  normal gv
  return result
endfunc
function Toggl(scope)
  :execute "TogglStart" a:scope
endfunction
nnoremap \ :call Toggl(getline("."))<CR>
vnoremap \ :call Toggl(GetSelectedText())<CR>


" =========
" SYNTASTIC
" =========
let g:syntastic_python_checkers=['python', 'pyflakes', 'flake8']
let g:syntastic_aggregate_errors = 1
let g:syntastic_python_flake8_post_args='--ignore=E501'
let g:syntastic_javascript_checkers=['jshint']
" this enables me to do :lnext/:lprev to get to next/prev error
let g:syntastic_always_populate_loc_list=1
" try
"   set statusline+=%#warningmsg#
"   set statusline+=%{SyntasticStatuslineFlag()}
"   set statusline+=%*
" 
"   let g:syntastic_always_populate_loc_list = 1
"   let g:syntastic_auto_loc_list = 1
"   let g:syntastic_check_on_open = 1
"   let g:syntastic_check_on_wq = 0
"   let g:syntastic_python_pylint_post_args="--max-line-length=100"
" catch
" endtry

" ======
" CTRL-P
" ======

let g:ctrlp_custom_ignore = {
    \ 'file': '\v\.(pyc|swp|swo|png|gif|jpg|ico|bin)$',
    \ 'dir': '\v/src/static$',
    \ 'link': '',
    \ }
set wildignore+=*/migrations/*

let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

runtime macros/matchit.vim

" ==========
" SimplyFold
" ==========
let g:SimpylFold_docstring_preview = 1
let g:SimpylFold_fold_docstring = 0

" =======
" OPTIONS
" =======

set modeline                    " read modelines in documents
syntax on                       " syntax highlighting!
colorscheme desert
set hlsearch                    " highlight all matches of a search
"highlight Normal ctermfg=252 ctermbg=none
"highlight NonText ctermfg=250 ctermbg=none
set cursorline                  " highlight the active line
highlight CursorLine term=NONE cterm=NONE guibg=gray ctermbg=gray
set number                      " show line numbers
highlight CursorLineNr ctermbg=green guibg=green
set colorcolumn=80,100          " draw a columnar bar at 80 and 100 characters to encourage 80-column 
highlight ColorColumn ctermbg=Black guibg=Black
set nocompatible                " we don't care about vi compatibility, go VIM!
set autoread                    " automatically re-read files when they change
set spellfile=~/.spell.add      " personal spelling file for :spell, zg/zw
"************************************************************************************************************************** 
set expandtab                   " insert appropriate number of spaces instead of a tab character
set shiftwidth=2                " number of spaces to indent by
set softtabstop=2               " make BS feel like we're deleting tabs
set tabpagemax=100              " allow up to 100 tabs to be opened at once
set foldmethod=syntax           " syntax highlighting determines folds (collapsing code)
set ruler		        " show the cursor position all the time
set showcmd		        " display incomplete commands
set incsearch		        " do incremental searching
set ignorecase                  " ignore case in searches
set smartcase                   " when search incl's uppercase char, be case sensitive, override w/ \C
set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set statusline=%<%F%=%h[%1*%M%*%n]%r%y%<\ [%L:%P\ %4l\ %3c\ %3v]\ [%3O\=%03b\,0x%2B]
hi User1 term=inverse,bold cterm=inverse,bold ctermfg=red
set laststatus=2
set virtualedit=all             " enable editing anywhere outside of the colorcolumn
" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif
set title
set titlestring=%t%(\ %M%)%(\ (%{expand(\"%:p:h\")})%)%(\ %a%)

" ==============
" SAVED SEARCHES
" ==============
command! CD execute ":g/\\(^class .*\\|^\\s*def .*\\)/p"
"let CD = '\(^class .*\|^\s*def .*\)'

" ========
" TRIGGERS
" ========

let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" =================
" KEYBOARD MAPPINGS
" =================

" Only do these things on Mac OSX
if has("unix")
    let s:uname = system("uname -s")
    if s:uname == "Darwin"
        " copy-paste on OSX
        vmap ç y:call system("pbcopy", getreg("\""))<CR>
        nmap √ :call setreg("\"",system("pbpaste"))<CR>p

        " move lines up and down with lettered directionals
        nnoremap ∆ :m .+1<CR>==
        nnoremap ˚ :m .-2<CR>==
        inoremap ∆ <Esc>:m .+1<CR>==gi
        inoremap ˚ <Esc>:m .-2<CR>==gi
        vnoremap ∆ :m '>+1<CR>gv=gv
        vnoremap ˚ :m '<-2<CR>gv=gv
    endif
endif

" @tagbar
nmap <F8> :TagbarToggle<CR>

" buffers
let mapleader = ';'
map <Leader>n :bn<cr>
map <Leader>p :bp<cr>
map <Leader>d :bd<cr>

" ========
" COMMANDS
" ========

command! Tdate execute "r! date +\"\\# \\%Y-\\%m-\\%d\""
command! Ttime execute "r! date +\"- \\%H:\\%M | \""

" command Tcomplete execute ".s/\\(\\*\\*\\|  \\)\\[ \\]\\(.*\\)\\(\\*\\*\\)*$/  [X]\\2/g\|noh"
command! Topen execute ".s/\\(\\*\\*\\|  \\)\\[\\( \\|X\\)\\]\\(.*\\)\\(\\*\\*\\)*$/  [ ]\\3/g\|noh"
command! Tworking execute ".s/  \\[\\( \\|X\\)\\]\\(.*\\)/**[ ]\\2**$/g\|noh"

command! Tcomplete execute ".s/\v^(\*\*\[ \](.*)\*\*|  \[ \](.*))$/  [X]\2\3/g"


" ===========
" OTHER STUFF
" ===========

" @clang_complete
let g:clang_library_path='/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/'
let g:clang_jumpto_declaration_key = '<C-}>'

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  autocmd BufNewFile,BufReadPost *.md set filetype=markdown

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  " Also don't do it when the mark is in the first line, that is the default
  " position when opening a file.
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command! DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif

colorscheme desert
abbreviate <expr> xcal system("~/bin/cal.py")
abbreviate <expr> xpiv system("~/bin/pivotal.py")
abbreviate [] ⬜
abbreviate [^] 🔁
abbreviate [v] ✅
" ⬜ 
" ✅ 
" 🔁 

