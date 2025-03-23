{ config, pkgs, ... }:

{
  security.sudo.wheelNeedsPassword = false;
  users.users.arnaud = {
    isNormalUser = true;
    description = "arnaud";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      kdePackages.kate
    ];
  };

}
