{ pkgs, ... }:

# Prerequisites:
# 1. Create /home/luke/.config/namecheap-dns-password
# 2. Paste Namecheap Dynamic DNS password into it

{
  systemd.services.update-dns = {
    description = "Update DNS records";
    path = with pkgs; [ curl ];
    script = ''
      password="$(cat /home/luke/.config/namecheap-dns-password)"
      curl "https://dynamicdns.park-your-domain.com/update?host=&domain=lukeleheny.com&password=$password"
    '';
    serviceConfig = {
      Type = "oneshot";
      User = "luke";
    };
  };
  systemd.timers.update-dns = {
    wantedBy = [ "timers.target" ];
    timerConfig = {
      OnCalendar = "*:0/15";
      Persistent = true;
      Unit = "update-dns.service";
    };
  };
}
