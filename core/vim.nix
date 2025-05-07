{
  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
    defaultEditor = true;
    configure.customRC = ''
      set number
      set expandtab
      set smarttab
      set shiftwidth=2
      set tabstop=2
      set ai
      set si
      set wrap
      syntax on
      set laststatus=2
      colorscheme vim
      set wildoptions-=pum
      set mouse=a
      set clipboard=unnamedplus
      set nobackup
      set nowb
      set noswapfile
      set notermguicolors
    '';
  };
}
