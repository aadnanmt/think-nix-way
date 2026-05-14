{ pkgs, ... }: {

  # apps && packages
  environment.systemPackages = with pkgs; [
    kitty yazi ranger python3Packages.pillow
    ncdu duf btop ripgrep fd
    fuzzel waybar swaybg mako
    node pnpm wofi fish firefox niri
    ani-cli cava peaclock 
  ];
}
