" vundle configuration
if has("win32")
    let g:vim_home_path = "~/vimfiles"
else
    let g:vim_home_path = "~/.vim"
endif

execute "set rtp+=" . g:vim_home_path . "/bundle/vundle/"
let g:vundle_default_git_proto = 'https'
call vundle#rc(g:vim_home_path. "/bundle")

"Bundles to install
Bundle 'gmarik/vundle'

" Syntax/filetype detection
Bundle 'saltstack/salt-vim'

" Helpful Plugins
Bundle 'Lokaltog/vim-easymotion'
Bundle 'itchyny/lightline.vim'
Bundle 'mileszs/ack.vim'
Bundle 'scrooloose/syntastic'
Bundle 'wookiehangover/jshint.vim'
Bundle 'groenewege/vim-less'
Bundle 'tpope/vim-dispatch'
Bundle 'kien/ctrlp.vim'
Bundle 'ervandew/supertab'
Bundle 'Valloric/YouCompleteMe'
Bundle 'nosami/Omnisharp'

"My Bundle
Bundle 'disdanes/disdanes-vim'

filetype plugin indent on

if filereadable(expand(g:vim_home_path . "/bundle/disdanes-vim/vimrc.vim"))
	execute "source " . g:vim_home_path . "/bundle/disdanes-vim/vimrc.vim"
endif
