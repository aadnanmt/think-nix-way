{ config, pkgs, ... }:

{
  # import my modlues .nix
  imports = [ 
    ./hardware-configuration.nix
    ./modules/apps.nix
    ./modules/thinkpad.nix
    ./modules/niri.nix
  ];

  # bootloader && systemd
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.kernelPackages = pkgs.linuxPackages_latest;

  # networking
  networking.hostName = "foryou";
  networking.networkmanager.enable = true;

  # hardware graphics
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };

  # security && audio && service
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    pulse.enable = true;
  };

  # username
  users.users.aadnanmt = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" "video" ];
  };

  # system version
  system.stateVersion = "24.05";
}
