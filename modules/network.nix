{ config, pkgs, ... }:
{
  networking.hostName = "nixos"; # Define your hostname.
  networking.networkmanager.enable = true;
  networking.nameservers = ["80.67.169.12" "80.67.169.40" "1.1.1.1" "8.8.8.8"];


}
