if exists('g:loaded_neomake_rspec')
    finish
endif
let g:loaded_neomake_rspec = 1

let s:formatter_file = expand('<sfile>:p:h', 1) . neomake#utils#Slash() . '../rspec_formatter.rb'

let g:neomake_ruby_rspec_maker = {
    \ 'exe': "rspec",
    \ 'args': [ '-r', s:formatter_file, '-f', 'NeomakeRspecFormatter' ],
    \ 'errorformat': '%A%f:%l %t %m',
    \ }


" vim: set sw=4 sts=4 et fdm=marker
