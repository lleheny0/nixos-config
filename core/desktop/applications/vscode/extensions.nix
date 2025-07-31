{ pkgs, ... }:

# Note: Commented out packages must be installed manually

{
  home-manager.users.luke.programs.vscode.profiles.default.extensions = with pkgs.vscode-extensions; [
    bbenoist.nix
    dbaeumer.vscode-eslint
    esbenp.prettier-vscode
    # gerane.Theme-Brogrammer
    ms-vscode.remote-explorer
    ms-vscode-remote.remote-ssh
    ms-vscode-remote.remote-ssh-edit
    # vittee.liquidsoap
    vscodevim.vim
  ];
}
