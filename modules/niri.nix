{ pkgs, ... }:

{
  # enable niri
  programs.niri.enable = true;

  # variabel env apps for Wayland
  environment.sessionVariables = {
    NIXOS_OZONE_WL = "1";
    DISPLAY = ":0";
    XDG_CURRENT_DESKTOP = "niri";
    XDG_SESSION_TYPE = "wayland";
  };

  # add dependency special Wayland/Niri
  environment.systemPackages = with pkgs; [
    xwayland
    wl-clipboard
  ];
}
