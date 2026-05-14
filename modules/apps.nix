{ pkgs, ... }: {

  # apps && packages
  environment.systemPackages = with pkgs; [
    kitty yazi ranger python3Packages.pillow
    ncdu duf btop ripgrep fd
    fuzzel waybar swaybg mako
    node pnpm wofi fish firefox niri
    ani-cli cava peaclock 

    # nix helpers
    nh nix-output-monitor nvd

    # hardware & media utils
    playerctl brightnessctl
    mpv imv grim slurp swaylock-effects

    # dev & sys utils
    neovim git fastfetch eza unzip p7zip
    wget curl libnotify

    # desktop & gui utils
    networkmanagerapplet blueman nwg-look polkit_gnome zathura
    powertop
  ];

  # fonts configuration
  fonts.packages = with pkgs; [
    (nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
  ];
}
