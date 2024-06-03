{ pkgs, username, ... }: 
{
  services.xserver = {
    enable = true;
    xkb.layout = "us";
  };

  services.libinput.enable = true;
  services.displayManager.autoLogin = {
      enable = true;
      user = "${username}";
    };

  # To prevent getting stuck at shutdown
  systemd.extraConfig = "DefaultTimeoutStopSec=10s";
}
