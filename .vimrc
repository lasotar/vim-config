" Check if clangd is installed and set omnifunc for autocompletion
if executable('clangd')
  augroup lsp_c
    autocmd!
  augroup END
endif

" Format the file with clang-format on demand
nnoremap <silent> <leader>f :%!clang-format<CR>

" Auto-format on save with clang-format if available
if executable('clang-format')
  autocmd BufWritePre *.c,*.cpp,*.h,*.hpp :silent! %!clang-format
endif

" Make yanking use the system register (my personal preference)
set clipboard+=unnamed

" Detect syntax
syntax on
filetype on

" Line numbers on by default
set number

" Basic autocompletion on ctrl+n/ctrl+p/ctrl+y
set complete+=k

" Automatically insert closing brackets/quotes
inoremap ( ()<Left>
inoremap { {}<Left>
inoremap [ []<Left>
inoremap ' ''<Left>
inoremap " ""<Left>

" Smart indenting
set smartindent
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
