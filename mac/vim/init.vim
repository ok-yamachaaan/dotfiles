let $CACHE = expand('~/.cache')
if !isdirectory($CACHE)
  call mkdir($CACHE, 'p')
endif
if &runtimepath !~# '/dein.vim'
  let s:dein_dir = fnamemodify('dein.vim', ':p')
  if !isdirectory(s:dein_dir)
    let s:dein_dir = $CACHE . '/dein/repos/github.com/Shougo/dein.vim'
    if !isdirectory(s:dein_dir)
      execute '!git clone https://github.com/Shougo/dein.vim' s:dein_dir
    endif
  endif
  execute 'set runtimepath^=' . substitute(
        \ fnamemodify(s:dein_dir, ':p') , '[/\\]$', '', '')
endif


"plugin manager
source ~/dev/gitrepos/dotfiles/mac/vim/.vimrc.dein
"basic setting
source ~/dev/gitrepos/dotfiles/mac/vim/.vimrc.basic
"plugin unite
source ~/dev/gitrepos/dotfiles/mac/vim/.vimrc.unite
"plugin lightline
"source ~/dev/gitrepos/dotfiles/mac/vim/.vimrc.lightline
"plugin deoplete
"source ~/dev/gitrepos/dotfiles/mac/vim/.vimrc.deoplete
"plugin NeoSnippet
source ~/dev/gitrepos/dotfiles/mac/vim/.vimrc.neosnippet
"plugin vimfiler
source ~/dev/gitrepos/dotfiles/mac/vim/.vimrc.SrcExpl
"plugin yank round
"source ~/dev/gitrepos/dotfiles/mac/vim/.vimrc.yankround
"plugin emmet ex. zen-conding
"source ~/dev/gitrepos/dotfiles/mac/vim/.vimrc.emmet
"plugin vimfiler
source ~/dev/gitrepos/dotfiles/mac/vim/.vimrc.NERDTree
"plugin easymotion
"source ~/dev/gitrepos/dotfiles/mac/vim/.vimrc.easymotion
"plugin vim-tags
source ~/dev/gitrepos/dotfiles/mac/vim/.vimrc.vimtags
"plugin vimfiler
source ~/dev/gitrepos/dotfiles/mac/vim/.vimrc.nerdcommenter
"plugin like FuzzyFinder
"source ~/dev/gitrepos/dotfiles/mac/vim/.vimrc.ctrlp
"source ~/dev/gitrepos/dotfiles/mac/vim/.vimrc.ctrlp-funky
"plugin overcommandline
source ~/dev/gitrepos/dotfiles/mac/vim/.vimrc.vim-over
"plugin vim-expand-region
"source ~/dev/gitrepos/dotfiles/mac/vim/.vimrc.vim-expand-region
"plugin vdebug
source ~/dev/gitrepos/dotfiles/mac/vim/.vimrc.vdebug
"plugin tagbar
source ~/dev/gitrepos/dotfiles/mac/vim/.vimrc.tagbar
"plugin jedi
source ~/dev/gitrepos/dotfiles/mac/vim/.vimrc.jedi
"plugin mrkdown-preview
source ~/dev/gitrepos/dotfiles/mac/vim/.vimrc.markdown-preview
"plugin vim-json
source ~/dev/gitrepos/dotfiles/mac/vim/.vimrc.vim-json
