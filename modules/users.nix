{ config, pkgs, ... }:

{
  security.sudo.wheelNeedsPassword = false;
  users.users.arnaud = {
    isNormalUser = true;
    description = "arnaud";
    extraGroups = [ "networkmanager" "wheel" "docker" "podman"];
    packages = with pkgs; [
      kdePackages.kate
    ];
  };

}
