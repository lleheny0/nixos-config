{
  services.icecast = {
    enable = true;
    hostname = "localhost";
    listen.port = 8000;
    admin.password = set_password_here;
    extraConf = ''
      <listen-socket>
        <port>8000</port>
        <shoutcast-mount>/vgmradio</shoutcast-mount>
        <shoutcast-mount>/void</shoutcast-mount>
      </listen-socket>
      <mount>
        <mount-name>/vgmradio</mount-name>
        <fallback-mount>/void</fallback-mount>
        <fallback-override>1</fallback-override>
        <fallback-when-full>1</fallback-when-full>
      </mount>
    '';
  };
}
