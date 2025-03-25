{ config, pkgs, ... }:

{
  programs.steam = {
    extraCompatPackages = with pkgs; [
          proton-ge-bin
    ];
    enable = true;
    remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
    dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
    localNetworkGameTransfers.openFirewall = true; # Open ports in the firewall for Steam Local Network Game Transfers
  };

  services.flatpak.enable = true;
  environment.systemPackages = with pkgs; [
    vim
    git 
    openssl
    wget
    jetbrains-toolbox
    htop
    wireguard-tools
    jmtpfs
  ];
}
