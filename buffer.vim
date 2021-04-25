" Buffer Management
nmap <leader> bp :bp<CR>
nmap <leader> bn :bn<CR>
nmap <leader> bl :ls<CR>
nmap <leader>bd :bp <BAR> bd #<CR> " Delete Buffer


" Delete All Buffers Except the Current One Being Edit
nnoremap <leader>qq :w <bar> %bd <bar> e# <bar> bd# <CR>
" map :q to byffer delete
" http://stackoverflow.com/questions/7513380/vim-change-x-function-to-delete-buffer-instead-of-save-quit
cnoreabbrev <expr> q getcmdtype() == ":" && (getcmdline() == 'q' && len(filter(range(1, bufnr('$')), 'buflisted(v:val)')) > 1) ? 'bd' : 'q'



