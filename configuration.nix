# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ./modules/users.nix
      ./modules/nvidia.nix
#      ./modules/laptop.nix
      ./modules/locale.nix
      ./modules/packages.nix
      ./modules/network.nix
      ./modules/plasma.nix
      ./modules/pipewire.nix
      ./modules/boot.nix
      ./modules/containers.nix
      ./modules/virtualization.nix
    ];


  nix.settings.auto-optimise-store = true;
  nix.gc = {
      automatic = true;
      dates = "daily";
      options = "--delete-older-than 30d";
};
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nixpkgs.config.allowUnfree = true;
  system.stateVersion = "24.11"; # Did you read the comment?

}
