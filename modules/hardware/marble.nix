{ pkgs, ... }:

{
  environment.etc."udev/hwdb.d/99-marble.hwdb".text = ''
    evdev:input:b0003v046DpC408*
     KEYBOARD_KEY_90001=btn_right
     KEYBOARD_KEY_90002=btn_left
     KEYBOARD_KEY_90005=btn_middle
  '';

  environment.etc."libinput/local-overrides.quirks".text = ''
    [Logitech Marble Mouse Trackballi Quirks]
    MatchUdevType=mouse
    MatchBus=usb
    MatchVendor=0x46D
    MatchProduct=0xC408
    AttrEventCode=+BTN_MIDDLE;
  '';

  systemd.services.hwdb-update = {
    enable = true;
    description = "Update systemd hwdb and trigger udev";
    wantedBy = [ "multi-user.target" ];
    after = [ "display-manager.service" ];
    serviceConfig = {
      Type = "oneshot";
      ExecStart = "${pkgs.systemd}/bin/systemd-hwdb update";
      ExecStartPost = "${pkgs.systemd}/bin/udevadm trigger";
      RemainAfterExit = true;
    };
  };

  home-manager.users.luke.dconf.settings = {
    "org/gnome/desktop/peripherals/trackball" = {
      scroll-wheel-emulation-button = 7;
    };
  };

  firefox.scrollSpeed = 200;
}
