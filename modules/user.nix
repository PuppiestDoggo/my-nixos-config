{ config, pkgs, inputs, ... }:

{
  # User configuration
  security.sudo.wheelNeedsPassword = false;
  users.users.arnaud = {
    isNormalUser = true;
    description = "arnaud";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
    ];
  };

}
