" Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
  
  " Required:
 call neobundle#begin(expand('~/.vim/bundle/'))
  
  " Let NeoBundle manage NeoBundle
  " Required:
  NeoBundle 'Shougo/unite.vim'
  NeoBundle 'scrooloose/nerdtree'
  NeoBundle 'jacoborus/tender.vim'
  NeoBundle 'Shougo/vimproc.vim', {'build': 'make'}
  NeoBundle 'Shougo/vimshell.vim'
  NeoBundle 'petdance/vim-perl'
  NeoBundle 'hotchpotch/perldoc-vim'
  NeoBundle 'thinca/vim-quickrun'
  NeoBundle 'Shougo/neocomplete'
  NeoBundle 'jacoborus/tender.vim'
  NeoBundle 'Shougo/neosnippet'
  NeoBundle 'Shougo/neosnippet-snippets'
  NeoBundle 'Shougo/unite.vim'
"  NeoBundle 'Shougo/neocomplcache-snippets-complete'
  NeoBundle 'Shougo/neosnippet'
  NeoBundle 'szw/vim-tags'
  NeoBundle 'cohama/lexima.vim'
"  NeoBundle 'plasticboy/vim-markdown'
"  NeoBundle 'kanokanno/previm'
"  NeoBundle 'tyru/openbrowser.vim'
  "" 使うプラグインを指定
  " My Bundles here:
  " Refer to |:NeoBundle-examples|.
  " Note: You don't set neobundle setting in .gvimrc!
  
  call neobundle#end()
  
    " Required:
    filetype plugin indent on
  
    " If there are uninstalled bundles found on startup,
    " this will conveniently prompt you to install them.
    NeoBundleCheck

    " Disable AutoComplPop.
    let g:acp_enableAtStartup = 0
    " Use neocomplcache.
    let g:neocomplcache_enable_at_startup = 1
    " Use underbar completion.
    let g:neocomplcache_enable_underbar_completion = 1
    " Set minimum syntax keyword length.
    let g:neocomplcache_min_syntax_length = 3
    let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
    "
    " Use smartcase.
    let g:neocomplcache_enable_smart_case = 1
    " Use camel case completion.
    let g:neocomplcache_enable_camel_case_completion = 1
    " Select with <TAB>
    inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
    "
    let g:neocomplcache_ctags_arguments_list = {
          \ 'perl' : '-R -h ".pm"'
          \ }
    "
    let g:neocomplcache_snippets_dir = "~/.vim/snippets"
    " Define dictionary.
    let g:neocomplcache_dictionary_filetype_lists = {
          \ 'default'    : '',
          \ 'perl'       : $HOME . '/.vim/dict/perl.dict'
          \ }

    " Define keyword.
    if !exists('g:neocomplcache_keyword_patterns')
      let g:neocomplcache_keyword_patterns = {}
    endif
    let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

    " for snippets
    imap <expr><C-k> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : "\<C-n>" smap <C-k> <Plug>(neocomplcache_snippets_expand)
