{
  home-manager.users.luke.programs.vim = {
    enable = true;
    extraConfig = ''
      set number
      set expandtab
      set smarttab
      set shiftwidth=2
      set tabstop=2
      set ai
      set si
      set wrap
      syntax on
      set mouse=a
      set clipboard=unnamedplus
      set nobackup
      set nowb
      set noswapfile
    '';
  };
}
