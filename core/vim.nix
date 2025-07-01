{
  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
    defaultEditor = true;
    configure.customRC = ''
      colorscheme vim
      set ai
      set clipboard=unnamedplus
      set expandtab
      set ignorecase
      set laststatus=2
      set mouse=a
      set nobackup
      set noswapfile
      set notermguicolors
      set nowb
      set number
      set shiftwidth=2
      set si
      set smartcase
      set smarttab
      set tabstop=2
      set wildoptions-=pum
      set wrap
      syntax on
    '';
  };

  environment.variables = {
    EDITOR = "vim";
  };
}
