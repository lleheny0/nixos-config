{ pkgs, ...}:

{
  users.users.luke.packages = with pkgs; [
    piper
  ];

  services.ratbagd.enable = true;
}
