{
  services.icecast = {
    enable = true;
    hostname = "localhost";
    listen = {
      address = "localhost";
      port = 8000;
    };
    admin.password = " ";
    extraConf = ''
      <authentication>
        <source-password> </source-password>
        <relay-password> </relay-password>
        <admin-user>admin</admin-user>
        <admin-password> </admin-password>
      </authentication>
      <hostname>localhost</hostname>
      <listen-socket>
        <port>8000</port>
        <shoutcast-mount>/vgmradio</shoutcast-mount>
        <shoutcast-mount>/void</shoutcast-mount>
      </listen-socket>
      <http-headers>
        <header name="Access-Control-Allow-Origin" value="*" />
      </http-headers>
      <mount>
        <mount-name>/vgmradio</mount-name>
        <fallback-mount>/void</fallback-mount>
        <fallback-override>1</fallback-override>
        <fallback-when-full>1</fallback-when-full>
      </mount>
      <fileserve>1</fileserve>
    '';
  };

  networking.firewall.allowedTCPPorts = [ 8000 ];
}
