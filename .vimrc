if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

""Plugins
call plug#begin('~/.vim/plugged')
Plug 'lervag/vimtex'
call plug#end()

set visualbell

""Spell check, underline. Spell bad and spell cap red  
set spell spelllang=en_us
hi SpellBad ctermbg=1
hi clear SpellLocal
hi SpellLocal cterm=underline
hi SpellCap ctermbg=1
hi clear SpellRare
hi SpellRare cterm=underline

""Disable spell check for python, bib files
autocmd BufEnter *.py set nospell
autocmd BufEnter *.c set nospell
autocmd BufEnter *.bib set nospell

""Set line numbering, disabled by ":set nonumber
set number

""Set number of spaces in tab
set tabstop=4
set softtabstop=4

""Set searching to light gray, disable the current search with space
set hlsearch
hi Search ctermbg = 8
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

"put \begin{} \end{} tags tags around the current word
map  <C-B>      YpkI\begin{<ESC>A}<ESC>jI\end{<ESC>A}<esc>kA
map! <C-B> <ESC>YpkI\begin{<ESC>A}<ESC>jI\end{<ESC>A}<esc>kA
