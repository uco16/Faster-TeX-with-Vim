" Just a tiny file telling vim what to do with .tex files
"
" Author: Umut Özer
" Email: uco21@cam.ac.uk
" Date: 23 November 2019
"
" Please drop me a line if you have any quetions or suggestions!

set shiftwidth=2
set softtabstop=2

" Conceal
set conceallevel=2
" set concealcursor=""
let g:tex_conceal="abdmgs"
" Remove grey background from conceiled characters
highlight Conceal ctermbg=NONE guibg=NONE

" wrapped lines
set wrap
nnoremap j gj 
nnoremap k gk

" if you write your \label's as \label{fig:something}, then if you
" type in \ref{fig: and press <C-n> you will automatically cycle through
" all the figure labels. Very useful!
set iskeyword+=:

" convenient rc editing shortcut
nnoremap <leader><leader>rc :sp ~/.vim/ftplugin/tex.vim<CR>
" convenient snippet editing shortcuts, use something like this for your own
" edits!
"nnoremap <leader><leader>ts :sp ~/Studium/Cambridge/PartIII/courses/.config/tex.snippets<CR>
"nnoremap <leader><leader>tms :sp ~/Studium/Cambridge/PartIII/courses/.config/texmath.snippets<CR>
"nnoremap <leader><leader>pre :sp ~/Studium/Cambridge/PartIII/courses/.config/preamble.tex<CR>

" macros
" change equation to align
nnoremap <leader>cea ^f=i&<ESC>A \\<ESC>?equation<CR>cwalign<ESC>N.O

" Vimtex
" Disable overfull/underfull \hbox warnings
let g:vimtex_quickfix_latexlog = {
      \ 'overfull' : 0,
      \ 'underfull' : 0,
      \ 'font' : 0,
      \}

" To compile with Lualatex!
let g:vimtex_compiler_latexmk_engines = {
    \ '_'                : '-lualatex',
    \ 'pdflatex'         : '-pdf',
    \ 'dvipdfex'         : '-pdfdvi',
    \ 'lualatex'         : '-lualatex',
    \ 'xelatex'          : '-xelatex',
    \ 'context (pdftex)' : '-pdf -pdflatex=texexec',
    \ 'context (luatex)' : '-pdf -pdflatex=context',
    \ 'context (xetex)'  : '-pdf -pdflatex=''texexec --xtx''',
    \}

" Change standard PDF viewer to Zathura
"let g:vimtex_view_method = 'zathura'

let g:vimtex_mappings_disable = {
      \ 'i': [']]'],
      \}

" greek letters with #a -> \alpha
let g:vimtex_imaps_leader='#'
