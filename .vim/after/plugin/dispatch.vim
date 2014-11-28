augroup lencioni_dispatch
  autocmd!
  autocmd FileType ruby.spec let b:dispatch = 'bin/rspec %'
  autocmd FileType javascript.jasmine let b:dispatch = 'bundle exec rake jasmine:ci'
  autocmd FileType javascript.jasmine.jsx let b:dispatch = 'bundle exec rake jasmine:ci'
augroup END
